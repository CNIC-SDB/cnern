import java.io.IOException;
import java.net.MalformedURLException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import com.caucho.hessian.client.HessianProxyFactory;
import com.izforge.izpack.util.AbstractUIProcessHandler;



public class SyncArticles {

    private  String userName;
    private  String password;
    private String host;
    private String port;
    private String stationCode;
    public void run(AbstractUIProcessHandler handler,String[] args){
        host=args[0];
        port=args[1];
        userName=args[2];
        password=args[3];
        stationCode=args[4];
        Connection connection=null;
        try {
            connection=DBHelper.getConnection("jdbc:jtds:sqlserver://"
                    + host
                    + ":"
                    + port
                    + ";integratedSecurity=true;databaseName=metadata",userName,password);
        } catch (ClassNotFoundException e1) {
            handler.emitErrorAndBlockNext("创建数据库连接错误,请检查数据配置", e1.getMessage());
            return;
        } catch (SQLException e1) {
            handler.emitErrorAndBlockNext("创建数据库连接错误,请检查数据配置", e1.getMessage());
            return;
        }
        String url = "";
        try {
            url=PropertyUtils.readProperty("cmsUrl")+"/synStationData";
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
        handler.logOutput("读取采编系统数据...", false);
        List<String> insertSqls = sycStationData.getStationArticles(stationCode);
        Statement statement=null;
        try {
            statement=connection.createStatement();
            for (String insertSql : insertSqls) {
//              insertSql = insertSql.replace("\'\'", "\'").replace("\"\"", "\"");
              statement.addBatch(insertSql);
          }
          handler.logOutput("初始化文章和栏目...", false);
          statement.executeBatch();
          statement.close();
          handler.logOutput("完成文章和栏目初始化...", false);
        } catch (SQLException e) {
            handler.emitErrorAndBlockNext("写入数据库错误", e.getMessage());
            return;
        }finally{
            DBHelper.closeConnection(connection);
        }
    }
}
