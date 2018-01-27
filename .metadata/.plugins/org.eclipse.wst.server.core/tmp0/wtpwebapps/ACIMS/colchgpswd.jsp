<%@ page import="java.sql.*"%>
<%@page import="com.Dbconnection.Dbconnection"%>
<%!
Connection con=null;
Statement stmt1,stmt2;

ResultSet rs=null;
String rg1,rg2,rg3,rg4;
%>
<%
  rg1=request.getParameter("uname");
  rg2=request.getParameter("current");
  rg3=request.getParameter("new");
  rg4=request.getParameter("confirm");
  

 try
 {

	 con=Dbconnection.getConnection();
	 
  String s="select loginid,password from  logins where loginid='"+rg1+"' and type='college' ";
  stmt1=con.createStatement();  
 //out.println(s);
  rs=stmt1.executeQuery(s);
  rs.next();
   //out.println(rg2+ " "+rg3+" "+rg4);
  if((rg2.equals(rs.getString(2))) && (rg3.equals(rg4)))
	 { 
       String s1="update  logins set password='"+rg3+"' where password='"+rg2+"'and type='college'  and loginid='"+rg1+"'";
       stmt2=con.createStatement();  
       //out.println(s1);
        stmt2.executeUpdate(s1);
    
  
  response.sendRedirect("changepassword.jsp?v=1");
  
  
  %>
 <html>
 <body>
 Updated successfully
 </body></html>
<%
	 }
  else
  {
	  %>	
		<script type="text/javascript">
		alret("sorry! :-( try again..)");
		window.location.href="changepassword.jsp?v=0";
		

</script>
<%
  }
  }
  
 catch(Exception e)
    {
        out.println(e);
     }
 
  
%>

       


