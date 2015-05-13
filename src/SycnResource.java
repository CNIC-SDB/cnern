import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.CountDownLatch;

public class SycnResource implements Runnable {

    private final String          stationCode;
    private final String          tableName;
    private final ISycStationData sycStationData;
    private final String          userName;
    private final String          password;
    private final String          host;
    private final String          port;
    private final int MAX_SYNC_NUM;
    private CountDownLatch latch;
    public SycnResource(String stationCode, String tableName, ISycStationData sycStationData, String userName,
                        String password, String host, String port,int MAX_SYNC_NUM,CountDownLatch latch){
        this.stationCode = stationCode;
        this.tableName = tableName;
        this.sycStationData = sycStationData;
        this.userName = userName;
        this.password = password;
        this.host = host;
        this.port = port;
        this.MAX_SYNC_NUM=MAX_SYNC_NUM;
        this.latch=latch;
    }

    @Override
    public void run() {
        Connection connection = null;
        Statement statement=null;
        try {
            connection=DBHelper.getConnection("jdbc:jtds:sqlserver://"
                    + host
                    + ":"
                    + port
                    + ";integratedSecurity=true;databaseName=resource",
            userName, password);
            String pk=getPK(tableName, connection);
            statement=connection.createStatement();
            System.out.println("同步"+tableName);
            int count=sycStationData.getRecordCount(tableName, stationCode);
            if(count==0)
                return;
            if(count<=MAX_SYNC_NUM){
                List<Map<String, Object>> results = sycStationData.getTableData(tableName, stationCode,1,count);
                for (Map<String, Object> map : results) {
                    StringBuffer sb = new StringBuffer("insert into " + tableName + "(");
                    StringBuffer values = new StringBuffer("values(");
                    for (Entry<String, Object> entry : map.entrySet()) {
                        if (entry.getValue() != null && !entry.getValue().equals("null")&&!entry.getKey().equals(pk)) {
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
            }else {
                for(int i=0;i<(count/MAX_SYNC_NUM+1);i++){
                    List<Map<String, Object>> results = sycStationData.getTableData(tableName, stationCode,i*MAX_SYNC_NUM+1,(i+1)*MAX_SYNC_NUM);
                    for (Map<String, Object> map : results) {
                        StringBuffer sb = new StringBuffer("insert into " + tableName + "(");
                        StringBuffer values = new StringBuffer("values(");
                        for (Entry<String, Object> entry : map.entrySet()) {
                            if (entry.getValue() != null && !entry.getValue().equals("null")&&!entry.getKey().equals(pk)) {
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
            System.out.println("同步完成"+tableName);
        } catch (Exception e) {
            return;
        }finally{
            latch.countDown();
            System.out.println(latch.getCount());
            if (statement!=null) {
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
    private String getPK(String entid,Connection connection){
        Statement statement=null;
        ResultSet rs=null;
        try {
            statement=connection.createStatement();
            rs=statement.executeQuery("select ATTRID from T_TABLE_FIELDS where ENTID='"+entid+"' and pk is not null");
            if (rs.next()) {
                return rs.getString(1);
            }
            return null;
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return null;
        }finally{
            if(rs!=null){
                try {
                    rs.close();
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
            }
            if(statement!=null){
                try {
                    statement.close();
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
            }
        }
    }

}
