<%@ page import="java.sql.*"%>
<%@page import="com.Dbconnection.Dbconnection"%>
<%! Connection con=null;
    PreparedStatement aci;
    
%>
<%
try
{


	con=Dbconnection.getConnection();
	
aci=con.prepareStatement("update jkcdata set company=?,year=? where roll=?");
aci.setString(3,request.getParameter("id"));
aci.setString(1,request.getParameter("company"));
aci.setString(2,request.getParameter("year"));

int i=aci.executeUpdate();
if(i==1)
{
	
response.sendRedirect("jkcstu.jsp?v=1");
}

con.close();
}
catch(Exception e)
{
 }
%>
