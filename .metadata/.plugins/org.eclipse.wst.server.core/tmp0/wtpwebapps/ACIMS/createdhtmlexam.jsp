<%@ page import="java.sql.*"%>
<%@page import="com.Dbconnection.Dbconnection"%>
<%! Connection con=null;
    PreparedStatement aci;
    
%>
<%
try
{

String r=request.getParameter("r1");
con=Dbconnection.getConnection();
if(r.equals("delete"))
	{
	   aci=con.prepareStatement("delete from exampaper");
	   aci.executeUpdate();
	   response.sendRedirect("createexam.jsp?v=2");
	}
else
	{
aci=con.prepareStatement("insert into exampaper values(?,?,?,?,?,?)");
aci.setString(1,request.getParameter("top"));
aci.setString(2,request.getParameter("noq"));
aci.setString(3,request.getParameter("uf"));
aci.setString(4,request.getParameter("key"));
aci.setString(5,request.getParameter("active"));
aci.setString(6,request.getParameter("dur"));

int i=aci.executeUpdate();
if(i==1)
{
response.sendRedirect("createexam.jsp?v=1");
}
	}
con.close();
}
catch(Exception e)
{
	out.println(e);
 }
%>
