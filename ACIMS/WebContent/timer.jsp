
<%@ page import="java.sql.*"%>
<%@page import="com.Dbconnection.Dbconnection"%>
<%
Connection con=null;
    PreparedStatement stmt,stmt1,ac;
	ResultSet rs,rs1,r;
%>


<%try
{
     int z;
	 out.println("hi");
	 String vv=request.getParameter("v");
	 if(vv.equals("1"))
	{
		response.sendRedirect("exam.jsp?v=1");
	}
	 String uid=(String)session.getAttribute("uid1");
	 out.println(uid);
	 con=Dbconnection.getConnection();
ac=con.prepareStatement("select count(*) from exampaper");
r=ac.executeQuery();
r.next();
int p=r.getInt(1);
if(p==0)
	{
	response.sendRedirect("exam3.jsp?v=1");
	}
    stmt=con.prepareStatement("select sysdate()+0");
    rs=stmt.executeQuery();
    rs.next();
	stmt1=con.prepareStatement("select activ,gap from exampaper");
    rs1=stmt1.executeQuery();
    rs1.next();

	String time=rs.getString(1);
	

	 int i=Integer.parseInt(time.substring(0,2));
	 int j=Integer.parseInt(time.substring(3,5));
   String time1=rs1.getString(1);
  
     int x=Integer.parseInt(time1.substring(0,2));
	 int y=Integer.parseInt(time1.substring(3,5)); 
	
	 
	String dur=rs1.getString(2);
    int l=x;    
	int k=y+Integer.parseInt(dur);
	if(k>=60)
	{
		k=k-60;
		if(l==12)
		{
			l=1;
		}
		else
		{
        l=l+1;
		}
	}
		


%>

<%session.setAttribute("uid1",uid);%>
<HTML>
<meta http-equiv="refresh" content="60"><body>
 

 <BODY>

<%
      
      if(i==x ||i==l)
	  {
	     if(i==x)
		 {
  			if(y<=j)
			 {
				 
				response.sendRedirect("exam.jsp?v=0");
				
			 }
			  else
	        {%>
	        <center>Exam is activated At <%=time1%><br>Current time:<%=time%></center>
             <%}

		 }
		 else
			 {
				 if(k>=j)
				 {
					response.sendRedirect("exam.jsp?v=0");
					
				 }
				  else
	              {
	             %>
		  <center>Presently no exam is activated</center> 
	<% }	
			 }
	  }
	  else if(i>x || i>l)
	  {
		  %>
		  <center>Presently no exam is activated</center> 
	<% }
	  else
	 {%>
	 <center>Exam is activated At <%=time1%><br>Current time:<%=time%></center>
     <%}%>


 </BODY>
</HTML>
<%}catch(Exception e)
{out.println(e);}
%>
