<%@page import="java.sql.*"%>
<%@page import="com.Dbconnection.Dbconnection"%>
<%
 try
 {
	Connection con=Dbconnection.getConnection();

String url="jdbc:odbc:acims";
String username="acims";
String password="acims";
String a1,a2,a3,a4,a5;

a1=request.getParameter("logid");
a2=request.getParameter("fname");
a3=request.getParameter("lname");
a4=request.getParameter("em");
a5=request.getParameter("contact");

Statement st=con.createStatement();

int i=st.executeUpdate("update jkcadmin set firstname='"+a2+"',lastname='"+a3+"',email='"+a4+"',contact='"+a5+"' where loginid='"+a1+"'");

 if(i>0)
	 {  
   response.sendRedirect("jkcupdateprofile.jsp?v=1");
	  
        
   }

}
catch(Exception e)
{
out.println(e);
}

%>

