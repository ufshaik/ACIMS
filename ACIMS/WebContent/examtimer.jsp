
<%@ page import="java.sql.*"%>

<%
Connection con=null;
    PreparedStatement stmt,stmt1;
	ResultSet rs,rs1;
	String t,t1,t2;
%>


<%try
{
	Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/acims","root","");
   stmt1=con.prepareStatement("select activation from exampaper");
    rs1=stmt1.executeQuery();
	rs1.next();
	 t=rs1.getString(1);
	 out.println(t);
	
    stmt=con.prepareStatement("select to_char(sysdate,'hh:mi') from dual");
    rs=stmt.executeQuery();
    rs.next();
	String time=rs.getString(1);
	out.println(time);

	 int j=Integer.parseInt(time.substring(0,2));
	 int i=Integer.parseInt(time.substring(3,5));
   
	
	if(j<3)
	{
	   

	}
	else if(j==2)
	{   
		   if(i<=1)
		   {
			  
		   }
		   else
		   {
			   out.println("hi3");
	       
		   }
	}
	else
		out.println("hi");
	     
	
		


%>
<HTML>
 <HEAD>
    
<meta http-equiv="refresh" content="60">
  <TITLE> New Document </TITLE>
 <script language="JavaScript">
	  
	  
	  function tim()
	  {
        alert(time);     
	  }

</script>
 </HEAD>

 <BODY>
  
 </BODY>
</HTML>
<%}catch(Exception e)
{}
%>
