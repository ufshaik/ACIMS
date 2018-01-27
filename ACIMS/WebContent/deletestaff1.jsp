<%@ page import="java.sql.*"%>
<%@page import="com.Dbconnection.Dbconnection"%>
<%! Connection con=null;
    PreparedStatement pst1,pst;
	ResultSet rz=null;
    String pin,y;
%>
<%
try
{
	int flag=0;
	String uid=(String)session.getAttribute("uid1");
if(uid.equals("null"))
                {
		response.sendRedirect("index.jsp");
	 }

con=Dbconnection.getConnection();

pin=request.getParameter("delid");
String ta=uid+"t";

pst1=con.prepareStatement("select reg_id from "+ta+"");
rz=pst1.executeQuery();
while(rz.next())
	{
	  y=rz.getString(1);
	  if(pin.equals(y))
        {
		  flag=1;
pst=con.prepareStatement("delete from "+ta+" where reg_id=?");
pst.setString(1,pin);
int i=pst.executeUpdate();
if(i==1)
	{ response.sendRedirect("deletestaff1.jsp?v=1");}
	 break;
		}
}

	   
     
	if(flag==0)
	{
		 response.sendRedirect("deletestaff1.jsp?v=2");
	}
}
catch(Exception e)
{
out.println(e);
}%>

