
<%@ page import="java.sql.*"%>

<%
Connection con=null;
    PreparedStatement stmt;
	ResultSet rs;
%>


<%try
{
	Class.forName("com.mysql.jdbc.Driver");
   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/acims","root","");
    stmt=con.prepareStatement("select to_char(sysdate,'hh:mi') from dual");
    rs=stmt.executeQuery();
    rs.next();
	String time=rs.getString(1);
	out.println(time);
 


%>
<HTML>
 <HEAD>
  <TITLE> New Document </TITLE>
  
 </HEAD>

 <BODY>
  <h1>Exam is not activated</h1>
 </BODY>
</HTML>
<%}catch(Exception e)
{}
%>
