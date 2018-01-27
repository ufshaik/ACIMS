<%@ page import="java.sql.*"%>
<%@page import="com.Dbconnection.Dbconnection"%>
<%!
Connection con=null;
Statement stmt1,stmt2,checkst;

ResultSet rs=null,check=null;
String rg1,rg2,rg3,rg4;
%>
<%
  rg1=request.getParameter("uname");
  rg2=request.getParameter("current");
  rg3=request.getParameter("new1");
  rg4=request.getParameter("confirm");
  
  %><%
 try
 {
	 con=Dbconnection.getConnection();
  String ch="select count(*) from logins where loginid='"+rg1+"' and password='"+rg2+"' and type='cce'";
  checkst=con.createStatement(); 
  //out.println(ch);
  check=checkst.executeQuery(ch);
  check.next();
  int x=check.getInt(1);
  if(x!=0)
	 {
  String s="select loginid,password from  logins where loginid='"+rg1+"' and type='cce' ";
  stmt1=con.createStatement();  
 //out.println(s);
  rs=stmt1.executeQuery(s);
  rs.next();
   //out.println(rg2+ " "+rg3+" "+rg4);
  if((rg2.equals(rs.getString(2))) && (rg3.equals(rg4)))
	 { 
       String s1="update  logins set password='"+rg3+"' where password='"+rg2+"'and type='cce'  and loginid='"+rg1+"'";
       stmt2=con.createStatement();  
       //out.println(s1);
        stmt2.executeUpdate(s1);
     }
  
  response.sendRedirect("ccechangepwsd.jsp?v=1");
	 }
  else
	  response.sendRedirect("ccechangepwsd.jsp?v=2");
  
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

       


