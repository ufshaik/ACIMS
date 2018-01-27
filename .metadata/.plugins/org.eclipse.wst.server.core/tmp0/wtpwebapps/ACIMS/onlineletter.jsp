<%@ page import="java.sql.*"%>
<%@page import="com.Dbconnection.Dbconnection"%>
<%!
Connection con=null;
Statement stmt1,stmt2,stmt3;

//ResultSet rs=null;
String rg1,rg2,rg3,rg4,rg5,rg6,rg7,rg8,rg9,rg10,rg11,rg12,rg13,rg14,rg15,rg16,rg17,rg18,rg19,rg20,rg21;
%>
<%
  rg1=request.getParameter("inname");
  rg2=request.getParameter("code");
  rg3=request.getParameter("address");
  rg4=request.getParameter("city");
  rg5=request.getParameter("pin");
  rg6=request.getParameter("state");
  rg7=request.getParameter("tel");
  rg8=request.getParameter("fax");
  rg9=request.getParameter("email");
  rg10=request.getParameter("website");
 String est=request.getParameter("esttdt");
  String dd = est.substring(0,2);
  String mm = est.substring(3,5);
  String yy = est.substring(6,10);
  rg11=dd+"-"+mm+"-"+yy;
  rg12=request.getParameter("affil");
  rg13=request.getParameter("ptitle");
  rg14=request.getParameter("pname");
  rg15=request.getParameter("pdesig");
  rg16=request.getParameter("faculties");
  rg17=request.getParameter("teachstaff");
  rg18=request.getParameter("admstaff");
  rg19=request.getParameter("techstaff");
  rg20=request.getParameter("students");
  rg21=request.getParameter("progoffered");
 
  %><%
 try
 {
	 con=Dbconnection.getConnection();
	 
  String m=rg13;
    m=m+rg14;
  String s="insert into colleges values('"+rg1+"','"+rg2+"','"+rg11+"','"+rg12+"','"+rg14+"','"+rg15+"','requesting','notgiven','no')";
  stmt1=con.createStatement();  
  out.println(s);
  stmt1.executeUpdate(s);
  
  
  
  
  stmt2=con.createStatement();
  stmt2.executeUpdate("insert into ccdetails values('"+rg2+"','"+rg3+"','"+rg4+"','"+rg5+"','"+rg6+"','"+rg7+"','"+rg8+"','"+rg9+"','"+rg10+"')");


  stmt3=con.createStatement();
  
  stmt3.executeUpdate("insert into colldetails values('"+rg2+"','"+rg16+"','"+rg17+"','"+rg18+"','"+rg19+"','"+rg20+"','"+rg21+"')");
  
  response.sendRedirect("message.jsp?");
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

       


