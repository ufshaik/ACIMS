<%@ page import="java.sql.*"%>
<%! Connection con=null;
    PreparedStatement pst;
	Statement st,stmt;
	ResultSet rs;
    int n;
   
%>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/acims","root","");
pst=con.prepareStatement("delete  from companies where name=? and year=?");
pst.setString(1,request.getParameter("company"));
pst.setString(2,request.getParameter("yr"));
n=pst.executeUpdate();

 if(n>0)
	 {  
 response.sendRedirect("deletecomp.jsp?v=1");  

 }
 else
	{
 response.sendRedirect("deletecomp.jsp?v=2");  
	}
	}

catch(Exception e)
{
out.println(e);
}%>

