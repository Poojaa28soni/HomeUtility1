<%-- 
    Document   : ulogin
    Created on : 23 Apr, 2021, 12:38:42 PM
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
        
        
        
<div id="wrapper">
	
        
	<div id="page" class="container">
		<div id="content">
			<div class="post">
				
				<div class="entry">
					<p>
                                            
                                          <h2>User Login</h2>
        
        <form>
            <table class="gridtable">
               
                <tr>
                    <td>Email</td><td>
                        <input type="text" value="" name="t1" required></td>
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
                                            
                                            
                                            
				</div>
			</div>
			<div style="clear: both;">&nbsp;</div>
		</div>
		<!-- end #content -->
		<div id="sidebar">
			<div>
				<h2>Useful Links</h2>
				<ul class="list-style1">
					<li class="first"><a href="Home.jsp">Home</a></li>
					<li><a href="reg.jsp">New Registration</a></li>
				<li><a href="ulogin.jsp">User Login</a></li>
				<li><a href="login.jsp">Professional Login</a></li>
				<li><a href="search.jsp">Search</a></li>
				<li><a href="about.jsp">About Us</a></li>
				<li><a href="contact.jsp">Contact Us</a></li>
				</ul>
			</div>
		</div>
		<!-- end #sidebar -->
		<div style="clear: both;">&nbsp;</div>
	</div>
	<!-- end #page -->
	<div class="divider">&nbsp;</div>
	<div id="three-column" class="container">
		<div id="tbox1">
			<div class="box-style">
				<div class="image"><img src="images/img07.jpg" width="320" height="170" alt="" /></div>
				<div class="arrow"></div>
				<div class="content">
					<h2>Fusce ultrices fringilla</h2>
					<p>Aliquam erat volutpat. Pellentesque tristique ante ut risus. Quisque dictum. Integer nisl risus, sagittis convallis, rutrum id, elementum congue, nibh. </p>
				</div>
			</div>
		</div>
		<div id="tbox2">
			<div class="box-style">
				<div class="image"><img src="images/img08.jpg" width="320" height="170" alt="" /></div>
				<div class="arrow"></div>
				<div class="content">
					<h2>Mauris vulputate dolor</h2>
					<p>Aliquam erat volutpat. Pellentesque tristique ante ut risus. Quisque dictum. Integer nisl risus, sagittis convallis, rutrum id, elementum congue, nibh. </p>
				</div>
			</div>
		</div>
		<div id="tbox3">
			<div class="box-style">
				<div class="image"><img src="images/img09.jpg" width="320" height="170" alt="" /></div>
				<div class="arrow"></div>
				<div class="content">
					<h2>Nulla luctus eleifend </h2>
					<p>Aliquam erat volutpat. Pellentesque tristique ante ut risus. Quisque dictum. Integer nisl risus, sagittis convallis, rutrum id, elementum congue, nibh.</p>
				</div>
			</div>
		</div>
	</div>
</div>
<div id="footer-content" class="container">
	<div id="footer-bg">
		<div id="column1">
			<h2>Welcome to my website</h2>
			<p>In posuere eleifend odio quisque semper augue mattis wisi maecenas ligula. Donec leo, vivamus fermentum nibh in augue praesent a lacus at urna congue rutrum. Quisque dictum integer nisl risus, sagittis convallis, rutrum id, congue, and nibh. Pellentesque tristique ante ut risus. Quisque dictum. Integer nisl risus, sagittis convallis, rutrum id, elementum congue, nibh. Suspendisse dictum porta lectus.<br />
			</p>
		</div>
		<div id="column2">
			<h2>Etiam rhoncus volutpat</h2>
			<ul class="list-style2">
				<li class="first"><a href="#">Pellentesque quis elit non lectus gravida blandit.</a></li>
				<li><a href="#">Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</a></li>
				<li><a href="#">Phasellus nec erat sit amet nibh pellentesque congue.</a></li>
				<li><a href="#">Cras vitae metus aliquam risus pellentesque pharetra.</a></li>
				<li><a href="#">Maecenas vitae orci vitae tellus feugiat eleifend.</a></li>
			</ul>
		</div>
		<div id="column3">
			<h2>Recommended Links</h2>
			<ul class="list-style2">
				<li class="first"><a href="#">Pellentesque quis elit non lectus gravida blandit.</a></li>
				<li><a href="#">Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</a></li>
				<li><a href="#">Phasellus nec erat sit amet nibh pellentesque congue.</a></li>
				<li><a href="#">Cras vitae metus aliquam risus pellentesque pharetra.</a></li>
				<li><a href="#">Maecenas vitae orci vitae tellus feugiat eleifend.</a></li>
			</ul>
		</div>
	</div>
</div>
<div id="footer">
	<p>© 2021 Home Utlity System Inc. All rights reserved. </p>
</div>
        
        
        
        
        
        
        
        
        
        
        
        
            
<%
    if(request.getParameter("b1")!=null)
    {
        String email  = request.getParameter("t1");
        String pass  = request.getParameter("t2");

      
        
        try{
    String sql = "select * from reg where email='"+email+
            "' and password='"+pass+"'";
    DBConnect x = new DBConnect();
    ResultSet rs = x.queryReturner(sql);
    if(rs.next())
    {
        String uemail= rs.getString(1);
        String uname = rs.getString(3);
         String mobile = rs.getString(4);
         session.setAttribute("email", email);
                   session.setAttribute("name", uname);
                   session.setAttribute("umobile", mobile);
                  
                 response.sendRedirect("userHome.jsp");
                        
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
