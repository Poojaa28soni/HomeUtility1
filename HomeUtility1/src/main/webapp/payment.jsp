<%-- 
    Document   : payment
    Created on : 23 Apr, 2021, 1:07:20 PM
    Author     : Dell
--%>
<%@page  import="java.sql.*" %>
<%@page  import="dbutil.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
              <h2>User Area </h2>
        <hr>
        <p>
     <h3>Welcome <%= session.getAttribute("name")  %></h3>
     <hr>
     <form>
     <p>
         You are selecting a Professional
     <p>
         <%
            String category = null;
            String pname=null;
            String rate=null;
            String mobile=null;
            try
                {
                     pname = request.getParameter("b1");
                    DBConnect x = new DBConnect();
                    String sql = "Select catname,ratepervisit,mobile from person where pname='"+
                            pname.trim()+"'";
                    ResultSet rs = x.queryReturner(sql);
                    if(rs.next())
                    {
                        category= rs.getString(1);
                        rate= rs.getString(2);
                        mobile = rs.getString(3);
                        
                    }
                    }
            catch(Exception ex)
                {
                    
                }
            
            %>
        
        
       		<h2>Payment</h2>
		
            
                        
         <article>
  <header>
      
    <h1>Person Name - <%= pname  %>  </h1>
    <p>Category :<span style="color:red"> <%= category %></span></p>
  </header>
  <p>Rate -<span style="color:blue"><%= rate%> </span> </p>
   <p>Contact No -<span style="color:blue"><%= mobile%> </span> </p>
  <section>
   
      <input type="submit" name="b1" value="Click for Payment" />
    <p>
        <input type="submit" value="Sign out" formaction="Home.jsp" />
    
        </form>
  
  <%
  if(request.getParameter("b1")!=null)
  {
      //Way2sms obj = new Way2sms();
      
      String umobile = session.getAttribute("umobile").toString();
      
      out.println("Text Message Send...");
     // out.println(mobile+ "Kindly contact phone no :"+ umobile+" for service"+ "sa65sdf656fdfd"+ "940897373924","mahima" );
      
      //out.println(mobile+ "Your service has been confirmed.contact"
            //  +mobile+ "sa65sdf656fdfd", "947807373924","mahima" );
      
      
  }
  
  
  %>
    <jsp:include page="footer.jspf" />
    </body>
</html>
