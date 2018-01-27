<%@ page import="java.sql.*"%>
<%@page import="com.Dbconnection.Dbconnection"%>
<%! Connection con=null;
    PreparedStatement pst1,pst,pst2;
	ResultSet rz=null,ry;
    String pin,y;
%>
<%
try
{
	int flag=0;
	String uid=(String)session.getAttribute("uid1");
   if(uid!=null)
  {}
else
{
      response.sendRedirect("index.jsp");
  }

   con=Dbconnection.getConnection();
   
String br=request.getParameter("branch");
String co=request.getParameter("course");
String ta=uid+"s";

pst1=con.prepareStatement("select branch from lbrces");
rz=pst1.executeQuery();
while(rz.next())
	{
	  y=rz.getString(1);
	  if(br.equals(y))
        {
		  flag=1;
		}
	}
	if(flag==1)
	{
		 response.sendRedirect("deleteall.jsp?v=1");
		 flag=0;
	}
pst2=con.prepareStatement("select course from lbrces");
ry=pst2.executeQuery();
while(rz.next())
	{
	  y=ry.getString(1);
	  if(co.equals(y))
        {
		  flag=1;
		}
	}
	if(flag==1)
	{
		 response.sendRedirect("deleteall.jsp?v=2");
	}
pst=con.prepareStatement("delete from lbrces where branch=? and course=?");
pst.setString(1,br);
pst.setString(2,co);
int i=pst.executeUpdate();
if(i==1)
	{ response.sendRedirect("deleteid.jsp?v=3");}

	

}

	   
     
	
catch(Exception e)
{
out.println(e);
}%>

