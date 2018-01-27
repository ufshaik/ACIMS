<%@ page import="java.sql.*"%>
<%@page import="com.Dbconnection.Dbconnection"%>
<%! Connection con=null;
    PreparedStatement aci=null;
    
%>
<%
try
{ 
	String xy=(String)session.getAttribute("branc");
    String yz=(String)session.getAttribute("yea");
		String uid=(String)session.getAttribute("uid1");
		String ta=uid+"s";
		   if(uid!=null)
  {}
else
{
      response.sendRedirect("index.jsp");
  }
		   con=Dbconnection.getConnection();
		   
out.println("executed");
aci=con.prepareStatement("update "+ta+" set marks=? where REG_ID=?");
out.println("completed");
aci.setString(1,request.getParameter("marks"));
aci.setString(2,request.getParameter("id"));
int i=aci.executeUpdate();
if(i==1)
	{ response.sendRedirect("updatemarkslist.jsp?branch="+xy+"&&year="+yz+"&&v=1");}
	   
con.close();
}
catch(Exception e)
{
out.println(e);}
%>


 

