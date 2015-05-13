import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.izforge.izpack.installer.AutomatedInstallData;
import com.izforge.izpack.installer.DataValidator;
public class ConnectionValidation implements DataValidator{
    @Override
    public boolean getDefaultAnswer() {
        return true;
    }

    @Override
    public String getErrorMessageId() {
        return "无法连接到SQL Server数据库，请检查连接信息是否正确";
    }

    @Override
    public String getWarningMessageId() {
        return "检测到您的SQL Server中有名为resource、metadata或monitor的数据库，建议您先备份这三个数据库，安装程序将在后面删除并重建这三个数据库！";
    }

    @Override
    public Status validateData(AutomatedInstallData arg0) {
        Connection connection=null;
        Statement statement=null;
        ResultSet rs=null;
        try {
            String host=arg0.getVariable("host");//数据库地址或ip
            String port=arg0.getVariable("port");//端口
            String userName=arg0.getVariable("username");//用户名
            String password=arg0.getVariable("password");//密码
            Class.forName("net.sourceforge.jtds.jdbc.Driver");
            connection=DriverManager.getConnection("jdbc:jtds:sqlserver://"+host+":"+port+"/master", userName, password);
            statement=connection.createStatement();
            rs=statement.executeQuery("select * from sys.databases where name ='resource' or name='metadata' or name='monitor'");
            if (rs.next()) {
                return Status.WARNING;
            }
        } catch (ClassNotFoundException e) {
            System.out.println(e.getMessage());
            return Status.ERROR;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return Status.ERROR;
        }finally{
            try {
                if(rs!=null)
                    rs.close();
                if(statement!=null)
                    statement.close();
                if (connection!=null) {
                   connection.close();
                }
            } catch (SQLException e2) {
                // TODO: handle exception
            }
            
        }
        return Status.OK;
    }
}