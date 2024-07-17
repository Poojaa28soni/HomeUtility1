<%-- 
    Document   : afterlogin
    Created on : Apr 17, 2021, 7:24:23 PM
    Author     : ideapad
--%>
<%@page  import="java.sql.*" %>
<%@page  import="dbutil.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Profile</h1>
        
         <hr>
        <p>
        <h3> Welcome <%= session.getAttribute("name") %></h3>
       <form >
            <table class="gridtable">
   
                <%! String category=null; %>
                <%! String pname=null; %>
                <%! String address=null; %>
                <%! String area=null; %>
                <%! String yearofexp=null; %>
                <%! String ratepervisit=null; %>
                <%! String email=null; %>
                <%! String mobile=null; %>
                <%! String password=null; %>
                
                <%
                try{
    String sql = "select * from person where email='"+
            session.getAttribute("email")+"'";
    DBConnect x = new DBConnect();
    ResultSet rs = x.queryReturner(sql);
    rs.next();
    category = rs.getString(1);
    pname = rs.getString(2);
    address = rs.getString(3);
    area = rs.getString(4);
    yearofexp = rs.getString(5);
    ratepervisit = rs.getString(6);
    email = rs.getString(7);
    mobile = rs.getString(8);
    password = rs.getString(9);
    
   
                }
                catch(Exception ex){
                out.println(ex);
                
                }
                
                %>
                    
                    
                    
                
                
                <tr>
                    <td>Your Category </td>
                    <td>
                        <input type="text" name="t1" value="<%= category %>"  readonly required/></td>
                    
                        
                    </td>
                     
                </tr>
                <tr>
                    <td>Person Name</td>
                    <td><input type="text" name="t2" value="<%= pname %>" readonly required/></td>
                    
                </tr>
                <tr>
                    <td>Address</td>
                    <td><input type="text" name="t3" value="<%= address %>"required />
                        </td>
                    
                </tr>
                <tr>
                    <td>Working Area</td>
                    <td>
                        <input type="text" name="t4" value="<%= area %>" readonly required/>
                    
                        
                        <select name="t41">
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
                    <td>  <input type="number"  name="t5" value="<%= yearofexp %>" readonly required/>
                    
   <select name="t51">
                            <option>0</option>
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>more then 5</option>
                            
                        </select></td>
                    
                </tr>
                
                <tr>
                    <td>Rate per visit</td>
                    <td><input type="number" value="400" name="t6" value="<%= ratepervisit %>" required/></td>
                    
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="email" name="t7" value="<%= email %>" required/></td>
                    
                </tr>
                <tr>
                    <td>mobile</td>
                    <td><input type="text" name="t8" value="<%= mobile %>" required
                               pattern="[0-9]{10}" title="Invalid mobile no"
                               /></td>
                    
                </tr>
                
                <tr>
                    <td>password</td>
                    <td><input type="text" name="t9" value="<%= password %>" required

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
                
                String address = request.getParameter("t3");
                String area = request.getParameter("t4");
                String newarea = request.getParameter("t41");
                String yexp = request.getParameter("t5");
                String newyexp = request.getParameter("t51");
                String rate = request.getParameter("t6");
                String email = request.getParameter("t7");
                String mobile = request.getParameter("t8");
                String password = request.getParameter("t9");
                 try
            {
               
                
               String sql1 = " update person set address='"+
                       address+"',area='"+
                       area+"',yearofexp='"+
                       yearofexp+"',ratepervisit='"+
                       rate+"',mobile='"+
                       mobile+"',password='"+
                       password+"' where email='"+session.getAttribute("email")+"'";
                DBConnect xx = new DBConnect();
                xx.queryExecuter(sql1);
                out.println("<b>Person updated....<b>");
                       
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
