<%-- 
    Document   : reg
    Created on : 23 Apr, 2021, 12:37:50 PM
    Author     : Dell
--%>

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
    
    <h1>New Registration!</h1>
        <hr>
        <p></p>
        
        <form action="./LoginCheck">
            <table class="gridtable">
                <tr>
                    <td>Email</td>
                    <td><input type="email" 
                               name="email" required /></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" 
                               name="pass" required /></td>
                </tr>
                
                 <tr>
                    <td>Confirm Password</td>
                    <td><input type="password" 
                               name="cpass" required /></td>
                </tr>
                 <tr>
                    <td>Name</td>
                    <td><input type="text" name="uname" 
                               required /></td>
                </tr>
                
                 <tr>
                    <td>Mobile</td>
                    <td><input type="text" name="mobile" 
                               required /></td>
                </tr>
                 
                
                
                <tr>
                    <td></td>
                    <td><input type="Submit" value="Submit" 
                               name="b1"  /></td>
                </tr>
            </table>
        </form>
      <jsp:include page="footer.jspf" />
    </body>
</html>
