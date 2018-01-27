<%@ page import="java.sql.*"%>
<%@page import="com.Dbconnection.Dbconnection"%>
<%! Connection con=null;
    PreparedStatement aci=null,aci1;
    ResultSet rs;
	int i,j;
%>
<%
try
{ 
	
    String py=request.getParameter("prof");

    String wr=request.getParameter("mon");

	
    con=Dbconnection.getConnection();
    
aci1=con.prepareStatement("select reg_id,workhrs,present,salofmon from lbrcet where proff=? and month=?");
	aci1.setString(1,py);
   aci1.setString(2,wr);
rs=aci1.executeQuery();
rs.next();
i=rs.getInt(1);


if(1==1)
	{ response.sendRedirect("payroll1.jsp?prof="+py+"&&mon="+wr+"&&v=1");}
	   
con.close();
}
catch(Exception e)
{
out.println(e);}
finally
{
con.close();
}
%>


 

