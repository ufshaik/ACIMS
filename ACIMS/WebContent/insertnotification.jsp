<%@page import="java.sql.*"%>
<%@page import="com.Dbconnection.Dbconnection"%>
<%
 try
 {
String driver="sun.jdbc.odbc.JdbcOdbcDriver";

Connection con=Dbconnection.getConnection();


String url="jdbc:odbc:acims";
String username="acims";
String password="acims";
String a1,a2,a3,a4;

a1=request.getParameter("date");
a2=request.getParameter("last");
a3=request.getParameter("notify");
a4=request.getParameter("id");

Statement st=con.createStatement();

int i=st.executeUpdate("insert into notifications values("+a4+",'"+a1+"','"+a2+"','"+a3+"','0')");

 if(i>0)
	 {  
   response.sendRedirect("notifications.jsp?v=1");
	  
        
   }

}
catch(Exception e)
{
out.println(e);
}%>

