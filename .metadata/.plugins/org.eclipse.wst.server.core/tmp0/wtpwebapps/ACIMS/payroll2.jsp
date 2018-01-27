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
    String uid=(String)session.getAttribute("uid1");
	String ta=uid+"t";
	   if(uid!=null)
  {}
else
{
      response.sendRedirect("index.jsp");
  }
	String xy=(String)session.getAttribute("pro");

	String yz=(String)session.getAttribute("m1");
	
    String py=request.getParameter("present");
	
    String wr=request.getParameter("work");
	String id1=request.getParameter("id");
	
	i=Integer.parseInt(py);
	j=Integer.parseInt(wr);
	
	
	 con=Dbconnection.getConnection();
	 
aci1=con.prepareStatement("select TOTALSAL,CLASSSAL from "+ta+" where reg_id=?");
	aci1.setString(1,id1);

rs=aci1.executeQuery();
rs.next();
String p=rs.getString(1);

String q=rs.getString(2);


int k=Integer.parseInt(p);

int l=Integer.parseInt(q);

int m=k-l*(j-i);


aci=con.prepareStatement("update "+ta+" set MONTH=?,PRESENT=?,WORKHRS=?,SALOFMON=? where REG_ID=?");	aci.setString(1,request.getParameter("mon"));
aci.setString(2,py);
aci.setString(3,wr);
aci.setString(4,""+m);
aci.setString(5,id1);
int o=aci.executeUpdate();
if(o==1)
	{ response.sendRedirect("payroll1.jsp?prof="+xy+"&&mon="+yz+"&&v=1");}
	   
con.close();
}
catch(Exception e)
{
out.println(e);}
%>


 

