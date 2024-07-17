<%-- 
    Document   : userHome
    Created on : 23 Apr, 2021, 12:41:04 PM
    Author     : Dell
--%>
<%@page  import="java.sql.*" %>
<%@page  import="dbutil.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to User Home Page</title>
        
        <link href="http://fonts.googleapis.com/css?family=Dancing+Script|Open+Sans+Condensed:300" rel="stylesheet" type="text/css" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
    </head>
    <body>
        <h2>User Area </h2>
        <hr>
        <p>
     <h3>Welcome <%= session.getAttribute("name")  %></h3>
     <hr>
     
     <p>
         
     <h2> Search</h2>
        <form>
        Select Area 
        <select name="t1">
                            <option>Wright Town</option>
                            <option>Napier Town</option>
                            <option>Vijay Nagar</option>
                            <option>polipathar</option>
                            <option>ranjhi</option>
                            <option>gorakhpur</option>
                            <option>Adhartal</option>
                        </select>
        
        Select Category
        <select name="t2">
                            
                             <%
                    
            String sql = "select * from category";
            DBConnect x = new DBConnect();
            ResultSet rs = x.queryReturner(sql);
            while(rs.next())
            {%>
            
             <option>    <%= rs.getString(1) %></option>
             
            
           <% }
            %>
                            
                            
                            
                            
                           
                            
                        </select>
        
            <input type="submit" value="Search" name="b1" />
        </form>
            <form action="payment.jsp">
            <table border="1" class="gridtable">
                <thead>
                    <tr>
                        <th>Category</th>
                        <th>Name</th>
                        <th>Area</th>
                        <th>Year of Experience</th>
                        <th>Rate per visit</th>
                        <th>Mobile</th>
                        <th>Select Person for work</th>
                    </tr>
                </thead>
                <tbody>
                    
                    
                    
                    
                    
                    
                
                
                
                <%
            if(request.getParameter("b1")!=null)
            {
                String area = request.getParameter("t1");
                String cat = request.getParameter("t2");
            String sql1 = "select * from person where catname='"+
                    cat+"' and area='"+area+"'";
            DBConnect x1 = new DBConnect();
            ResultSet rs1 = x1.queryReturner(sql1);
            while(rs1.next())
            {%>
            
            
             
            <tr>
                        <td><%= rs1.getString(1) %></td>
                        <%String pname = rs1.getString(2);  %>
                         <td><%= pname %></td>
                         <td><%= rs1.getString(4) %></td>
                         <td><%= rs1.getString(5) %></td>
                         <td><%= rs1.getString(6) %></td>
                         <td><%= rs1.getString(8) %></td>
                         <td>
                             <input type="submit" name="b1"
                                    value="<%= pname %>" 
                                    
                             
                             
                         ></td>
                    </tr>
                
                
           <% }}
            %>
            </tbody>
            </table>

            </form>
       <jsp:include page="footer.jspf" />
    </body>
</html>
