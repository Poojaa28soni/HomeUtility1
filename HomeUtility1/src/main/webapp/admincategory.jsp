<%-- 
    Document   : admincategory
    Created on : 8 Apr, 2021, 10:39:17 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <title>Home Utility System</title>
<link href="http://fonts.googleapis.com/css?family=Dancing+Script|Open+Sans+Condensed:300" rel="stylesheet" type="text/css" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />

    </head>
    <body> 
        <jsp:include page="header.jspf" />
        
        <hr>
        <p></p>
        Category Master
       <form action="./CategrySubmit">
            <table class="gridtable">
                <tr>
                    <td>Category Name</td>
                    <td><input type="text" name="t1" value="" /></td>
                    
                </tr>
                 <tr>
                    <td></td>
                    <td><input type="submit" value="Submit" name="b1" /></td>
                    
                </tr>
            </table>
        </form>
          <jsp:include page="footer.jspf" />
    </body>
</html>
