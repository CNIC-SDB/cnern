import java.io.IOException;
import java.net.MalformedURLException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import com.caucho.hessian.client.HessianProxyFactory;
import com.izforge.izpack.util.AbstractUIProcessHandler;

public class SyncResourceTable {

    private String           userName;
    private String           password;
    private String           host;
    private String           port;
    private String           stationCode;
    private static final int MAX_SYNC_NUM = 500;

    public void run(AbstractUIProcessHandler handler, String[] args) {
        host = args[0];
        port = args[1];
        userName = args[2];
        password = args[3];
        stationCode = args[4];
        Connection connection = null;
        try {
            connection = DBHelper.getConnection("jdbc:jtds:sqlserver://" + host + ":" + port
                                                        + ";integratedSecurity=true;databaseName=resource",
                                                userName,
                                                password);
        } catch (ClassNotFoundException e1) {
            handler.emitErrorAndBlockNext("创建数据库连接错误,请检查数据配置", e1.getMessage());
            return;
        } catch (SQLException e1) {
            handler.emitErrorAndBlockNext("创建数据库连接错误,请检查数据配置", e1.getMessage());
            return;
        }
        String url = "";
        try {
            url = PropertyUtils.readProperty("cmsUrl")+"/synStationData";
        } catch (IOException e1) {
            handler.emitErrorAndBlockNext("无法读取配置文件，请检查安装包文件是否完整", e1.getMessage());
            return;
        }
        HessianProxyFactory factory = new HessianProxyFactory();
        ISycStationData sycStationData;
        try {
            sycStationData = (ISycStationData) factory.create(ISycStationData.class, url);
        } catch (MalformedURLException e) {
            handler.emitErrorAndBlockNext("无法获取远程数据，请检查网络连接", e.getMessage());
            return;
        }
        handler.logOutput("开始同步实物资源和行政资源相关数据，可能花费较长时间...", false);
        String[] dicTables = { "T_DATA_IMAGES", "T_ENUM", "T_DICTIONARY", "T_PDICTIONARY", "T_RANK", "T_STATION",
                "T_TABLE_FIELDS", "T_MATERIALTYPE", "T_MCATEGORY", "T_RESOURCECATEGORY", "T_REVIEW",
                "T_SERVICE_FEEDBACK", "T_WORKMODE" };
        Statement statement = null;
        try {
            statement = connection.createStatement();
            handler.logOutput("开始同步实物资源和行政资源字典表...", false);
            for (String dicTable : dicTables) {
                int count = sycStationData.getRecordCount(dicTable, stationCode);
                if (count == 0) continue;
                if (count <= MAX_SYNC_NUM) {
                    List<Map<String, Object>> results = sycStationData.getTableData(dicTable, stationCode, 1, count);
                    for (Map<String, Object> map : results) {
                        StringBuffer sb = new StringBuffer("insert into " + dicTable + "(");
                        StringBuffer values = new StringBuffer("values(");
                        for (Entry<String, Object> entry : map.entrySet()) {
                            if (entry.getValue() != null && !entry.getValue().equals("null")) {
                                sb.append(entry.getKey() + ",");
                                values.append("'" + entry.getValue() + "',");
                            }
                        }
                        sb.deleteCharAt(sb.lastIndexOf(","));
                        sb.append(")");
                        values.deleteCharAt(values.lastIndexOf(","));
                        values.append(")");
                        sb.append(" " + values.toString());
                        statement.addBatch(sb.toString());
                    }
                    statement.executeBatch();
                    statement.clearBatch();
                } else {
                    for (int i = 0; i < (count / MAX_SYNC_NUM + 1); i++) {
                        List<Map<String, Object>> results = sycStationData.getTableData(dicTable, stationCode,
                                                                                        i * MAX_SYNC_NUM + 1,
                                                                                        (i + 1) * MAX_SYNC_NUM);
                        for (Map<String, Object> map : results) {
                            StringBuffer sb = new StringBuffer("insert into " + dicTable + "(");
                            StringBuffer values = new StringBuffer("values(");
                            for (Entry<String, Object> entry : map.entrySet()) {
                                if (entry.getValue() != null && !entry.getValue().equals("null")) {
                                    sb.append(entry.getKey() + ",");
                                    values.append("'" + entry.getValue() + "',");
                                }
                            }
                            sb.deleteCharAt(sb.lastIndexOf(","));
                            sb.append(")");
                            values.deleteCharAt(values.lastIndexOf(","));
                            values.append(")");
                            sb.append(" " + values.toString());
                            statement.addBatch(sb.toString());
                        }
                        statement.executeBatch();
                        statement.clearBatch();
                    }
                }
            }
            handler.logOutput("实物资源和行政资源字典表同步完成", false);
        } catch (SQLException e1) {
            handler.emitErrorAndBlockNext("同步发生错误", e1.getMessage());
            return;
        } finally {
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
            }
        }
        handler.logOutput("开始同步实物资源和行政资源数据...", false);
        ExecutorService executor = Executors.newFixedThreadPool(5);
        ResultSet rs = null;
        try {
            statement = connection.createStatement();
            rs = statement.executeQuery("select ENTID from T_RANK");
            List<String> entids = new ArrayList<String>();
            while (rs.next()) {
                entids.add(rs.getString(1));
            }
            rs.close();
            String ln = System.getProperty("line.separator");// 换行符
            for(String entid:entids){
                //查询字典信息
                rs=statement.executeQuery("select entID,attrSeq,attrID,attrName,attrType,attrLength,attrDot,attrUnit,attrClass,attrMemo,mustIn,templetIn,autoIn,PK,chkRange,listShow,queryShow,sortColumn from T_TABLE_FIELDS where ENTID='"+entid+"' order by attrseq");
                StringBuffer sb = new StringBuffer();
                sb.append("create table "+entid+"("+ln);
                sb.append(getCreateTableSQL(rs));
                sb.append(")");
                //创建实物和行政数据表
                statement.execute(sb.toString());
            }
            final CountDownLatch latch = new CountDownLatch(entids.size());
            for (final String entid : entids) {
                executor.submit(new SycnResource(stationCode, entid, sycStationData, userName, password, host, port,
                                                  MAX_SYNC_NUM, latch));
            }
            latch.await();
            handler.logOutput("实物资源和行政资源数据同步完成...", false);
            int year=0;
            for(String entid:entids){
                rs=statement.executeQuery("select max(YYYY00) from "+entid);
                if(rs.next())
                   year=year<rs.getInt(1)?rs.getInt(1): year;
            }
            statement.execute("insert into T_FILLYEAR values("+year+")");
            handler.logOutput("全部处理已完成！", false);
            handler.finishProcess();
        } catch (SQLException e) {
            handler.emitErrorAndBlockNext("同步发生错误", e.getMessage());
            return;
        } catch (InterruptedException e) {
            handler.emitErrorAndBlockNext("同步发生错误", e.getMessage());
            return;
        }  finally {
            executor.shutdownNow();
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
            }
            DBHelper.closeConnection(connection);
        }
    }
    public String getCreateTableSQL(ResultSet rs) throws SQLException{
        String result = "";
        while (rs.next()) {
            String attrId=rs.getString("attrId");
            result=result+attrId+" ";
            String fieldType=rs.getString("attrType");
            if(fieldType.equals("nvarchar2")||fieldType.equals("varchar2")){
                result+="nvarchar("+rs.getString("attrLength")+")";
            }else if (fieldType.equals("date")) {
                result+="datetime";
            }else if (fieldType.equals("number")) {
                if(rs.getObject("attrDot")!=null&&rs.getInt("attrDot")>0)
                    result+="float";
                else {
                    result+="int";
                }
            }
            int mustIn=rs.getInt("mustIn");
            if(mustIn==1)
                result+=" not null";
            Object pkObj=rs.getObject("PK");
            int pk=pkObj==null?-1:Integer.parseInt(pkObj.toString());
            if(pk==2){
                result+=" primary key IDENTITY(1,1)";
            }
            if(!rs.isLast()){
                result+=","+System.getProperty("line.separator");
            }
        }
        return result;
    }
}
