import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import com.ibatis.common.jdbc.*;
import com.izforge.izpack.util.AbstractUIProcessHandler;

public class InitializeDatabase {

    private  String userName;
    private  String password;
    private String host;
    private String port;
    private Connection connection = null;

    public void run(AbstractUIProcessHandler handler,String[] args) throws SQLException{
        host=args[0];
        port=args[1];
        userName=args[2];
        password=args[3];
        String adminUserName=args[4];
        String stationTypes=null;
        handler.logOutput("开始初始化数据库和相关数据，请耐心等待...",false);
        try {
            stationTypes=PropertyUtils.readProperty("stationTypes");
        } catch (IOException e1) {
            handler.emitErrorAndBlockNext("安装包不完整，无法继续安装", e1.getMessage());
        }
        getConnection("jdbc:jtds:sqlserver://"+host+":"+port+";integratedSecurity=true;databaseName=master");
        Statement statement=null;
        try {
            handler.logOutput("创建数据库resource、metadata、monitor",false);
            statement = connection.createStatement();
            statement.addBatch("IF DB_ID('resource') is NOT NULL DROP DATABASE resource");
            statement.addBatch("CREATE DATABASE resource");
            statement.addBatch("IF DB_ID('metadata') is NOT NULL DROP DATABASE metadata");
            statement.addBatch("CREATE DATABASE metadata");
            statement.addBatch("IF DB_ID('monitor') is NOT NULL DROP DATABASE monitor");
            statement.addBatch("CREATE DATABASE monitor");
            statement.executeBatch();
            handler.logOutput("数据库resource、metadata、monitor创建完成",false);
        } catch (SQLException e) {
            handler.emitErrorAndBlockNext("初始化数据库错误", e.getMessage());
        } finally {
            statement.close();
            closeConnection();
        }
        handler.logOutput("初始化数据库resource...",false);
        getConnection("jdbc:jtds:sqlserver://"+host+":"+port+";integratedSecurity=true;databaseName=resource");
        ScriptRunner runner1 = new ScriptRunner(connection, false, false);
        try {
            runner1.runScript(new FileReader("./script/resourcedbo.sql"));
        } catch (FileNotFoundException e) {
            handler.emitErrorAndBlockNext("初始化数据库错误", e.getMessage());
        } catch (IOException e) {
            handler.emitErrorAndBlockNext("初始化数据库错误", e.getMessage());
        }
        closeConnection();
        handler.logOutput("数据库resource初始化完成！",false);
        handler.logOutput("初始化数据库metadata...",false);
        getConnection("jdbc:jtds:sqlserver://"+host+":"+port+";integratedSecurity=true;databaseName=metadata");
        ScriptRunner runner2 = new ScriptRunner(connection, false, false);
        try {
            runner2.runScript(new InputStreamReader(new FileInputStream("./script/metadatadbo.sql"), "utf-8"));
            if(stationTypes!=null){
                for(String stationType:stationTypes.split(",")){
                    if(stationType!=null&&!"".equals(stationType.trim())){
                        runner2.runScript(new InputStreamReader(new FileInputStream("./script/"+stationType+"/metadataextend.sql"), "utf-8"));
                    }
                }
            }
        } catch (FileNotFoundException e) {
            handler.emitErrorAndBlockNext("初始化数据库错误", e.getMessage());
        } catch (IOException e) {
            handler.emitErrorAndBlockNext("初始化数据库错误", e.getMessage());
        }
        closeConnection();
        handler.logOutput("数据库metadata初始化完成！",false);
        handler.logOutput("初始化数据库monitor,可能花费较长时间...",false);
        getConnection("jdbc:jtds:sqlserver://"+host+":"+port+";integratedSecurity=true;databaseName=monitor");
        ScriptRunner runner3 = new ScriptRunner(connection, false, false);
        try {
            runner3.runScript(new InputStreamReader(new FileInputStream("./script/monitordbo.sql"), "utf-8"));
            if(stationTypes!=null){
                for(String stationType:stationTypes.split(",")){
                    if(stationType!=null&&!"".equals(stationType.trim())){
                        runner3.runScript(new InputStreamReader(new FileInputStream("./script/"+stationType+"/monitorextend.sql"), "utf-8"));
                    }
                }
            }
            statement=connection.createStatement();
            statement.executeUpdate("insert into t_user(logonname,role_id) values('"+adminUserName+"',1)");
            statement.close();
        } catch (FileNotFoundException e) {
            handler.emitErrorAndBlockNext("初始化数据库错误", e.getMessage());
        } catch (IOException e) {
            handler.emitErrorAndBlockNext("初始化数据库错误", e.getMessage());
        }
        closeConnection();
        handler.logOutput("数据库monitor初始化完成！",false);
    }
    /**
     * 获取数据库连接
     * @param url 数据库连接字符串
     */
    public void getConnection(String url) {
        try {
            Class.forName("net.sourceforge.jtds.jdbc.Driver");
            connection = DriverManager.getConnection(url, userName, password);
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();

        }
    }

    /**
     * 关闭数据库连接
     */
    public void closeConnection() {
        if (connection != null) try {
            connection.close();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
}
