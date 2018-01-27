<%@ page import="java.sql.*"%>
<%! Connection con=null;
    PreparedStatement jre,aci,pst;
    ResultSet jrs,rs;
	
%>
<%

try
{ 
	String vv=request.getParameter("v");
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/acims","root","");
out.println("hi");
	jre=con.prepareStatement("select count(*) from companies");
        jrs=jre.executeQuery();
		jrs.next();
		

	int i=jrs.getInt(1);
	out.println(i);
	int j=1;
		while(i>0)
	   {
           String ch=request.getParameter("ch"+j);
		   out.println(ch);
		   if(ch!=null)
		   {
			   String nm1=request.getParameter("id1"+j);
			   String nm2=request.getParameter("id2"+j);
			   out.println(nm1+" "+nm2);
               pst=con.prepareStatement("delete from companies where name=? and year=?");
			   pst.setString(1,nm1);
               pst.setString(2,nm2);
			   pst.executeUpdate();
		   }
		   j++;
		   i--;
	   }
	   response.sendRedirect("jkcviewcomp.jsp?v=1");

			
}
catch(Exception e)
{
	out.println(e);
}
finally
{
	con.close();
}%>
