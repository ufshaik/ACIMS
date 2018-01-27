<%@ page import="java.sql.*"%>
<%@page import="com.Dbconnection.Dbconnection"%>
<%! Connection con=null;
    PreparedStatement jre,aci,pst;
    ResultSet jrs,rs;
	
%>
<%

try
{ 
	String vv=request.getParameter("v");
	con=Dbconnection.getConnection();

	jre=con.prepareStatement("select count(*) from jkcresult");
        jrs=jre.executeQuery();
		jrs.next();
		

	int i=jrs.getInt(1);

	int j=1;
		while(i>0)
	   {
           String ch=request.getParameter("ch"+j);
		
		   if(ch!=null)
		   {
			   String nm1=request.getParameter("chh"+j);
			   
               pst=con.prepareStatement("delete from jkcresult where roll='"+nm1+"'");
			   
			   pst.executeUpdate();
		   }
		   j++;
		   i--;
	   }
	   response.sendRedirect("jkcresults.jsp?v=1");

			
}
catch(Exception e)
{
	out.println(e);
}
finally
{
	con.close();
}%>
