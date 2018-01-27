<%@ page import="java.sql.*"%>
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
  
  %><%
 try
 {
  Class.forName("com.mysql.jdbc.Driver");
  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/acims","root","");
  String s="select roll,pwd from  jkcdata where roll='"+rg1+"' and status='1' ";
  stmt1=con.createStatement();  
 //out.println(s);
  rs=stmt1.executeQuery(s);
  rs.next();
   //out.println(rg2+ " "+rg3+" "+rg4);
  if((rg2.equals(rs.getString(2))) && (rg3.equals(rg4)))
	 { 
       String s1="update  jkcdata set pwd='"+rg3+"' where pwd='"+rg2+"'and status='1'  and roll='"+rg1+"'";
       stmt2=con.createStatement();  
       //out.println(s1);
        stmt2.executeUpdate(s1);
     }
  
  response.sendRedirect("jkcchangepassword.jsp?v=1");
  
  
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
%>

       


