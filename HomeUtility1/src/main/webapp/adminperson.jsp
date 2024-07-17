<%-- 
    Document   : adminperson
    Created on : 8 Apr, 2021, 10:39:49 AM
    Author     : Dell
--%>
<%@page  import="java.sql.*" %>
<%@page  import="dbutil.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Home Utility System</title>
<link href="http://fonts.googleapis.com/css?family=Dancing+Script|Open+Sans+Condensed:300" rel="stylesheet" type="text/css" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />

    </head>
    <body>
        <jsp:include page="header.jspf" />
        <hr>
        <p>
         Person Entry
       <form >
            <table class="gridtable">
               
                    
                    
                    
                
                
                <tr>
                    <td>Select Category </td>
                    <td><select name="t1">
                            
                             <%
                    
            String sql = "select * from category";
            DBConnect x = new DBConnect();
            ResultSet rs = x.queryReturner(sql);
            while(rs.next())
            {%>
            
             <option>    <%= rs.getString(1) %></option>
             
            
           <% }
            %>
                            
                            
                            
                            
                           
                            
                        </select></td>
                    
                </tr>
                <tr>
                    <td>Person Name</td>
                    <td><input type="text" name="t2" value="" required/></td>
                    
                </tr>
                <tr>
                    <td>Address</td>
                    <td><textarea name="t3" rows="4" cols="20"required>
                        </textarea></td>
                    
                </tr>
                <tr>
                    <td>Working Area</td>
                    <td><select name="t4">
                            <option>Wright Town</option>
                            <option>Napier Town</option>
                            <option>Vijay Nagar</option>
                            <option>polipathar</option>
                            <option>ranjhi</option>
                            <option>gorakhpur</option>
                            <option>Adhartal</option>
                        </select></td>
                    
                </tr>
                <tr>
                    <td>year of experience </td>
                    <td><select name="t5">
                            <option>0</option>
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                            <option>6</option>
                            <option>7</option>
                             
                        </select></td>
                    
                </tr>
                
                <tr>
                    <td>Rate per visit</td>
                    <td><input type="number" value="400" name="t6" value="" required/></td>
                    
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="email" name="t7" value="" required/></td>
                    
                </tr>
                <tr>
                    <td>mobile</td>
                    <td><input type="text" name="t8" value="" required
                               pattern="[0-9]{10}" title="Invalid mobile no"
                               /></td>
                    
                </tr>
                
                
                 <tr>
                    <td></td>
                    <td><input type="submit" value="Submit" name="b1" /></td>
                    
                </tr>
            </table>
        </form>
            
            <%
            if(request.getParameter("b1")!=null)
            {
                String cat = request.getParameter("t1");
                String pname = request.getParameter("t2");
                String address = request.getParameter("t3");
                String area = request.getParameter("t4");
                String yexp = request.getParameter("t5");
                
                String rate = request.getParameter("t6");
                String email = request.getParameter("t7");
                String mobile = request.getParameter("t8");
                
                 try
            {
               String sql1 = "insert into person values('"+
                        cat+"','"+
                        pname+"','"+
                        address+"','"+
                        area+"',"+
                        yexp+","+
                       
                        rate+",'"+
                        email+"','"+
                        mobile+"','"+mobile+
                       "')";
                DBConnect xx = new DBConnect();
                x.queryExecuter(sql1);
                out.println("<b>Person saved....<b>");
                       
            }
            catch(Exception ex)
            {
                 out.println(ex);
            }
            
                
            }
            
            %>
              <jsp:include page="footer.jspf" />
    </body>
</html>
