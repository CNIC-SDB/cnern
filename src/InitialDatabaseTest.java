import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import org.apache.commons.httpclient.Cookie;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpStatus;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.GetMethod;
import org.apache.commons.httpclient.methods.PostMethod;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;

import com.ibatis.common.jdbc.ScriptRunner;

public class InitialDatabaseTest {

    private static String     userName   = "sa";
    private static String     password   = "Cern123456";
    private static String     host       = "159.226.50.241";
    private static String     port       = "1433";
    private static Connection connection = null;

    /**
     * 获取数据库连接
     * 
     * @param url 数据库连接字符串
     */
    public static void getConnection(String url) {
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
    public static void closeConnection() {
        if (connection != null) try {
            connection.close();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    private static String doCasLoginRequest(HttpClient httpclient, String url) throws IOException {
        String result = "";
        GetMethod httpget = new GetMethod(url);
        httpclient.executeMethod(httpget);
        String tempLine = httpget.getResponseBodyAsString();
        String s = "<input type=\"hidden\" name=\"lt\" value=\"";
        int index = tempLine.indexOf(s);
        if (index != -1) {
            String s1 = tempLine.substring(index + s.length());
            int index1 = s1.indexOf("\"");
            if (index1 != -1) result = s1.substring(0, index1);
        }
        return result;
    }

    public static void main(String[] args) throws SQLException, IOException {
       
         getConnection("jdbc:jtds:sqlserver://"+host+":"+port+";integratedSecurity=true;databaseName=resource");
         Statement statement=null;
         statement=connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
         ResultSet rs=statement.executeQuery("select * from t_station where stationname not like '%中心'");
         StringBuffer sb=new StringBuffer();
         while (rs.next()) {
             String line=rs.getString("STATION_ABB")+","+rs.getString("STATION_CODE")+","+rs.getString("STATIONNAME");
             System.out.println(line);
             sb.append(line+"\n");
         System.out.println("stationAbbMap.put(\""+rs.getString("STATION_CODE")+"\",\""+rs.getString("STATION_ABB")+"\");");
         }
         FileWriter writer=new FileWriter("stationInfos");
         writer.write(sb.toString());
         writer.flush();
         writer.close();
         System.out.println("-----------------------------");
         rs.beforeFirst();
         //System.out.println("stationMap.put(\""+rs.getString("STATION_CODE")+"\",\""+rs.getString("STATIONNAME")+"\")");
         while (rs.next()) {
         System.out.println("stationNameMap.put(\""+rs.getString("STATION_CODE")+"\",\""+rs.getString("STATIONNAME")+"\");");
         }
         rs.close();
         statement.close();
         closeConnection();
//         try {
//         System.out.println("创建数据库resource、metadata、monitor");
//         statement = connection.createStatement();
//         statement.addBatch("IF DB_ID('resource_test') is NOT NULL DROP DATABASE resource_test");
//         statement.addBatch("CREATE DATABASE resource_test");
//         statement.addBatch("IF DB_ID('metadata_test') is NOT NULL DROP DATABASE metadata_test");
//         statement.addBatch("CREATE DATABASE metadata_test");
//         statement.addBatch("IF DB_ID('monitor_test') is NOT NULL DROP DATABASE monitor_test");
//         statement.addBatch("CREATE DATABASE monitor_test");
//         statement.executeBatch();
//         System.out.println("数据库resource、metadata、monitor创建完成");
//         } catch (SQLException e) {
//         // handler.emitErrorAndBlockNext("初始化数据库错误", e.getMessage());
//         } finally {
//         statement.close();
//         closeConnection();
//         }
//         // handler.logOutput("初始化数据库resource...",false);
//         getConnection("jdbc:jtds:sqlserver://"+host+":"+port+";integratedSecurity=true;databaseName=resource_test");
//         ScriptRunner runner1 = new ScriptRunner(connection, false, false);
//         try {
//         runner1.runScript(new FileReader("./script/resourcedbo.sql"));
//         } catch (FileNotFoundException e) {
//         // handler.emitErrorAndBlockNext("初始化数据库错误", e.getMessage());
//         } catch (IOException e) {
//         // handler.emitErrorAndBlockNext("初始化数据库错误", e.getMessage());
//         }
//         closeConnection();
//         // handler.logOutput("数据库resource初始化完成！",false);
//         // handler.logOutput("初始化数据库metadata...",false);
//         getConnection("jdbc:jtds:sqlserver://"+host+":"+port+";integratedSecurity=true;databaseName=metadata_test");
//         ScriptRunner runner2 = new ScriptRunner(connection, false, false);
//         try {
//         runner2.runScript(new InputStreamReader(new FileInputStream("./script/metadatadbo.sql"), "utf-8"));
//         runner2.runScript(new InputStreamReader(new FileInputStream("./script/A1N.sql"), "utf-8"));
//         runner2.runScript(new InputStreamReader(new FileInputStream("./script/I1N.sql"), "utf-8"));
//         runner2.runScript(new InputStreamReader(new FileInputStream("./script/I2N.sql"), "utf-8"));
//         } catch (FileNotFoundException e) {
//         // handler.emitErrorAndBlockNext("初始化数据库错误", e.getMessage());
//         } catch (IOException e) {
//         // handler.emitErrorAndBlockNext("初始化数据库错误", e.getMessage());
//         }
//         closeConnection();
//         // handler.logOutput("数据库metadata初始化完成！",false);
//         // handler.logOutput("初始化数据库monitor...",false);
//         getConnection("jdbc:jtds:sqlserver://"+host+":"+port+";integratedSecurity=true;databaseName=monitor_test");
//         ScriptRunner runner3 = new ScriptRunner(connection, false, false);
//         try {
//         runner3.runScript(new InputStreamReader(new FileInputStream("./script/monitordbo.sql"), "utf-8"));
//         runner3.runScript(new InputStreamReader(new FileInputStream("./script/AB01.sql"), "utf-8"));
//         } catch (FileNotFoundException e) {
//         // handler.emitErrorAndBlockNext("初始化数据库错误", e.getMessage());
//         } catch (IOException e) {
//         // handler.emitErrorAndBlockNext("初始化数据库错误", e.getMessage());
//         }
//         closeConnection();

    }

}
