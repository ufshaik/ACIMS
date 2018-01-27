<%@ page import="java.sql.*"%>
<%@page import="com.Dbconnection.Dbconnection"%>
<%!
Connection con=null;
Statement stmt1,stmt2;

//ResultSet rs=null;
String rg4,rg5,rg6,rg7,rg8,rg9;
%>
<%
  
  rg4=request.getParameter("loginid1");
  rg5=request.getParameter("passwd1");
  rg6=request.getParameter("fnam");
  rg7=request.getParameter("lnam");
  rg8=request.getParameter("em");
  rg9=request.getParameter("num");

  
 
  %><%
 try
 {
	 con=Dbconnection.getConnection();
  String s="insert into logins values('"+rg4+"','"+rg5+"','jkcadmin')";
  stmt1=con.createStatement(); 
  //out.println(s);
  stmt1.executeUpdate(s);

  String s1="insert into jkcadmin values('"+rg4+"','"+rg6+"','"+rg7+"','"+rg8+"','"+rg9+"')";
  stmt2=con.createStatement(); 
  //out.println(s);
  stmt2.executeUpdate(s1);
  
 response.sendRedirect("jkcadmin.jsp?v=1"); 
 
%>
 <html>
 <body>
 
 </body></html>
<%
} 
 catch(Exception e)
    {
        out.println(e);
     }

	 finally
	 {
		 con.close();
	 }

%>

       


