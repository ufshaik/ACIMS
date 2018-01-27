<%@ page import="java.sql.*"%>
<%! Connection con=null;
    PreparedStatement aci;
	Statement log,log1,log2,pst1;
	
    ResultSet rs,rs1,rs2,ry,rs3;
%>	
<%try
{
	int l=0;
	String f1=request.getParameter("f");
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/acims","root","");
String id2=request.getParameter("id");
out.println(id2);
if(f1.equals("Accept"))
	{
	        Statement st=con.createStatement();
	        st.executeUpdate("update jkcdata set status='1' where roll='"+id2+"'");
	        response.sendRedirect("sturequest.jsp?v=2");
	}
	else
	{
		    Statement st1=con.createStatement();
            st1.executeUpdate("delete jkcdata where roll='"+id2+"'");
			response.sendRedirect("sturequest.jsp?v=3");
	}
 

%>

<%}
catch(Exception e)
{out.println(e);}
finally
{
	con.close();
}%>
