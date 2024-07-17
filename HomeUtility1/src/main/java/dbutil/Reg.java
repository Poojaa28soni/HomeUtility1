
package dbutil;
import java.sql.*;

public class Reg {
    
    private String email;
 private String password;
    private String name;
    private String mobile;
   
    
    
    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public String getName() {
        return name;
    }

    public String getMobile() {
        return mobile;
    }

   
   
    
    
    
    
    public boolean insertReg(String email,
            String pass,String name,String mobile
            )
    {
        
        this.email = email;
        this.password = pass;
        
        this.name = name;
        this.mobile = mobile;
       
        try{
        String sql = 
                "insert into reg values('"+
                email+"','"+
                pass+"','"+
                name+"','"+
                mobile+"')";
        
        DBConnect x = new DBConnect();
        x.queryExecuter(sql);
        return true;
        }
        catch(Exception ex)
        {
            System.out.println(ex);
            
        }
        return false;
        
        
    }
    
    public void getReg(String email)
    {
        
    }
    
    public void getAllFaculty()
    {
        
    }
    public void getAllStudent()
    {
        
    }
    public void updateReg()
    {
        
    }
    public void checkUser(String email,String pass)
    {
        
    }
}
