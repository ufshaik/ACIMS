<%@ page import="java.sql.*"%>
<%@page import="com.Dbconnection.Dbconnection"%>
<%!
Connection con=null;
Statement stmt1,stmt2,stmt3;

//ResultSet rs=null;
String rg1,rg2,rg3,rg4,rg5,rg6,rg7,rg8,rg9,rg10,rg11,rg12,rg13,rg14,rg15,rg16,rg17,rg18,rg19,rg20,rg21,rg22;
%>
<%
String colcode=(String)session.getAttribute("ccode");
  out.println(colcode);
  //rg1=request.getParameter("inname");
  //rg2=request.getParameter("code");
  //rg3=request.getParameter("address");
 // rg4=request.getParameter("city");
  //rg5=request.getParameter("pin");
  //rg6=request.getParameter("state");
  rg7=request.getParameter("tel");
  rg8=request.getParameter("fax");
  rg9=request.getParameter("email");
  rg10=request.getParameter("website");
  //rg11=request.getParameter("esttdt");
  //rg12=request.getParameter("affil");
  //rg13=request.getParameter("ptitle");
  rg14=request.getParameter("pname");
  rg15=request.getParameter("pdesig");
  //rg16=request.getParameter("faculties");
  rg17=request.getParameter("teachstaff");
  rg18=request.getParameter("admstaff");
  rg19=request.getParameter("techstaff");
  rg20=request.getParameter("students");
  rg21=request.getParameter("progoffered");
  rg22=request.getParameter("jkc");
  %><%
 try
 {
	 con=Dbconnection.getConnection();
  
  String s="update colleges set head_name='"+rg14+"',designation='"+rg15+"',jkc='"+rg22+"' where coll_code='"+colcode+"'";
  stmt1=con.createStatement();  
  //out.println(s);
  stmt1.executeUpdate(s);
  
  String s1="update ccdetails set telephone='"+rg7+"',fax='"+rg8+"',email='"+rg9+"',website='"+rg10+"' where coll_code='"+colcode+"'";
  stmt2=con.createStatement();  
  //out.println(s);
  stmt2.executeUpdate(s1);

  String s2="update colldetails set teachingstaff='"+rg17+"',adminstaff='"+rg18+"',proffstaff='"+rg19+"',students='"+rg20+"',programes='"+rg21+"' where coll_code='"+colcode+"'";;
  stmt3=con.createStatement();  
  //out.println(s);
  stmt3.executeUpdate(s2);
  
  
  
  
  response.sendRedirect("updateprofile.jsp?v=1");
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

       


