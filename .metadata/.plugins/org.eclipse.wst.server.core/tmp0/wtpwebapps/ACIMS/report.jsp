<%@ page import="java.sql.*"%>
<%@page import="com.Dbconnection.Dbconnection"%>
<%!
Connection con=null;
Statement stmt1;

//ResultSet rs=null;
String rg1,rg2,rg3,rg4,rg5,rg6,rg7,rg8,rg9,rg10;
%>
<%
  
  rg1=request.getParameter("code1");
  rg2=request.getParameter("c1");
  
  rg3=request.getParameter("c2");
  
  rg4=request.getParameter("c3");
  
  rg5=request.getParameter("c4");
  
  rg6=request.getParameter("c5");
  
  rg7=request.getParameter("c6");
  
  rg8=request.getParameter("c7");
  
  rg9=request.getParameter("r8");
//  rg10=request.getParameter("r9");

 
  %><%
 try
 {
	 con=Dbconnection.getConnection();
  
  String s="insert into REPORT values('"+rg1+"',"+rg2+","+rg3+","+rg4+","+rg5+","+rg6+","+rg7+","+rg8+","+rg9+")";
  stmt1=con.createStatement(); 
  //out.println(s);
  stmt1.executeUpdate(s);
  response.sendRedirect("admin.jsp?v=1");
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
%>

       


