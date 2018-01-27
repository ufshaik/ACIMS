<%@ page import="java.sql.*"%>
<%@page import="com.Dbconnection.Dbconnection"%> 
<%!
Connection con=null;
Statement stmt1,checkst;

ResultSet check=null;
String rg1,rg2,rg3,rg4;
%>
<%
  rg1=request.getParameter("inname");
  rg2=request.getParameter("colcode");
  //rg3=request.getParameter("oldgrade");
  rg4=request.getParameter("newgrade");
  %><%
 try
 {
	  con=Dbconnection.getConnection();
  String ch="select count(*) from colleges where coll_name='"+rg1+"' and coll_code='"+rg2+"'";
  checkst=con.createStatement(); 
  //out.println(ch);
  check=checkst.executeQuery(ch);
  check.next();
  int x=check.getInt(1);
  if(x!=0)
	 {
  String s="update  colleges set STATUS='"+rg4+"' where COLL_CODE='"+rg2+"' ";
  stmt1=con.createStatement();  
 //out.println(s);
  stmt1.executeUpdate(s);
  
  response.sendRedirect("changegrade.jsp?v=1");
	 }
else
	response.sendRedirect("changegrade.jsp?v=2");
  
  
  %>
 <html>
 <body>
 Updated successfully
 </body></html>
<%
} 
 catch(Exception e)
    {
        out.println(e);
     }
finally
{
  con.close();
}
%>

       


