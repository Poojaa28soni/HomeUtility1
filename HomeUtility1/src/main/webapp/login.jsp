<%-- 
    Document   : login
    Created on : 17 Apr, 2021, 4:51:42 PM
    Author     : Dell
--%>
<%@page  import="java.sql.*" %>
<%@page  import="dbutil.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Home Utility System</title>
<link href="http://fonts.googleapis.com/css?family=Dancing+Script|Open+Sans+Condensed:300" rel="stylesheet" type="text/css" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />

    </head>
    <body>
        <jsp:include page="withoutloginheader.jspf" />
        <form>
            <table class="gridtable">
                <tr>
                    <td><h1>login </h1></td> 
                </tr>
                <tr>
                    <td>Mobile</td><td><input type="text" value="" name="t1" required></td>
                </tr>
                   <tr>
                       <td>password</td>
                       <td>
                   <input type="password" value="" name="t2" required>
                       </td>
                   </tr>
                
                   <tr>
                       <td></td>
                       <td><input type="submit" value="login" name="b1" /></td>
                   </tr>
            </table>
            
        </form>
            
<%
    if(request.getParameter("b1")!=null)
    {
        String mobile  = request.getParameter("t1");
        String pass  = request.getParameter("t2");

        if(mobile.equals("000") && pass.equals("000"))
        {
            response.sendRedirect("admincategory.jsp");
        }
        
        
        try{
    String sql = "select pname,email,mobile from person where mobile='"+mobile+ "' and password='"+pass+"'";
    DBConnect x = new DBConnect();
    ResultSet rs = x.queryReturner(sql);
    if(rs.next())
    {
        String name= rs.getString(1);
        String email = rs.getString(2);
        session.setAttribute("name", name);
        session.setAttribute("email", email);
        
    response.sendRedirect("afterlogin.jsp");
        
    }
    else
    {
            out.println("Invalid id or password");
        
    }
        }
        catch(Exception ex)
        {
            out.println("Invalid id or password");
        }
    }
    
    %>
  <jsp:include page="footer.jspf" />
    </body>
</html>
