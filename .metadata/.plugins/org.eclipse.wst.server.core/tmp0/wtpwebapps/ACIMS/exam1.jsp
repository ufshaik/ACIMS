<%@ page import="java.sql.*"%>
<%! Connection con=null;
    PreparedStatement aci;
    ResultSet rs;
%>
<%
try
{


Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/acims","root","");
aci=con.prepareStatement("select fileup from exampaper");
rs=aci.executeQuery();
rs.next();
String s="../exam/"+rs.getString(1); 
//String s="../exam/exam.html";
//out.println(s);

%><jsp:forward page="<%=s%>" />
<%}
catch(Exception e)
{
 out.println(e);
 }
%>
