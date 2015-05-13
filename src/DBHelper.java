import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



public class DBHelper {

    public static Connection getConnection(String url,String username,String password) throws ClassNotFoundException, SQLException{
        Class.forName("net.sourceforge.jtds.jdbc.Driver");
        Connection connection = DriverManager.getConnection(url,
                                                            username, password);
        return connection;
    }
    public static void closeConnection(Connection connection){
        if(connection!=null){
            try {
                connection.close();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
    }
}
