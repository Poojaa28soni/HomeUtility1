package dbutil;
import java.sql.*;
public class DBConnect {
    Connection conn=null;
    public DBConnect() throws Exception
    {
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/homeutility","root","root");
        
    }
    public void queryExecuter(String sql) throws Exception
    {
Statement stat = conn.createStatement();
stat.execute(sql);
stat.close();
conn.close();
    }
    public ResultSet queryReturner(String sql) throws Exception
    {
        Statement stat = conn.createStatement();
        ResultSet rs = stat.executeQuery(sql);
        return rs;
    }
}

