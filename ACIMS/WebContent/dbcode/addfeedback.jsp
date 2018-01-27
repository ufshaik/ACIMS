<%@ page import="java.sql.*"%>
<%@page import="com.Dbconnection.Dbconnection"%>
<%!
Connection con=null;
Statement stmt1,stmt;

ResultSet rs=null;
String rg1,rg2,rg3;
%>
<%
  rg1=request.getParameter("name1");
  rg2=request.getParameter("email1");
  rg3=request.getParameter("feedback");
  
 
 
 try
 {
	 con=Dbconnection.getConnection();
	 
  stmt=con.createStatement();
  String count="select count(*) from feedbacks";
  rs=stmt.executeQuery(count);
  rs.next();
  int i=Integer.parseInt(rs.getString(1));
  i=i+1;
  //out.println(i);
 String s="insert into feedbacks values("+i+",'"+rg1+"','"+rg2+"','"+rg3+"')";
  stmt1=con.createStatement(); 
 //out.println(s);
   int rs= stmt1.executeUpdate(s);
  

	
	
	if(rs>0)
	{
   
  %> 
   <script type="text/javascript">
alert("Thanks for your feedback..!!!  Your FeedBack is valuable to us.");
window.location.href="../index.jsp";
</script>
<%
 
	}
} 
 catch(Exception e)
    {
        //out.println(e);
     }
finally
{
  con.close();
}
%>

       


