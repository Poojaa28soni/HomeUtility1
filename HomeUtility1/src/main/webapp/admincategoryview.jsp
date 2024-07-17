<%-- 
    Document   : admincategoryview
    Created on : 8 Apr, 2021, 10:43:11 AM
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
    <body> <jsp:include page="header.jspf" />
        <hr>
        <p></p>
        <h2> View all Category </h2>
        
        <table class="gridtable">
            <tr>
                <td>Category Name</td>
            </tr>
            
            
        
        <%
            String sql = "select * from category";
            DBConnect x = new DBConnect();
            ResultSet rs = x.queryReturner(sql);
            while(rs.next())
            {%>
            <tr>
                <td><%= rs.getString(1) %></td>
            </tr>  
            
           <% }
            %>
        
        </table>
          <jsp:include page="footer.jspf" />
        
    </body>
</html>
