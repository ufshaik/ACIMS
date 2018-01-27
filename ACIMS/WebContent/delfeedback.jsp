<html><body>
<%@ page import="java.sql.*" %>
<%@page import="com.Dbconnection.Dbconnection"%>
<%!
   Connection con=null;
   Statement stmt,stmt1;
   
   ResultSet rs=null;
   
   
   int checked=0;
   int sno=0;
   %>
  <%    
     
    try{  

    	con=Dbconnection.getConnection();
	   stmt=con.createStatement();
   stmt1=con.createStatement();
       rs=stmt.executeQuery("select * from feedbacks");
       while(rs.next())
        {
         sno=rs.getInt(1);
		 String mm="checked"+sno;
		 String m=request.getParameter(mm);
		 //out.println(m);
		if(m!=null)
		{out.println(mm);
		 stmt1.executeUpdate("delete from  feedbacks where SNO='"+sno+"'"); 
		 	//out.println(sno);
		 }
		
		 }

     rs=stmt.executeQuery("select * from feedbacks");
     int i=1;
     while(rs.next())
	  {
		 //out.println(sno);
        int sn=rs.getInt(1);
	    if(sn!=i)
		  { 
		 stmt1.executeUpdate("update feedbacks set sno="+i+" where sno="+sn);
		  }
	     i++;
	   }


		
	response.sendRedirect("viewfeedback.jsp");

	   }
	  catch(Exception e)
	  {
	   out.println(e);
	   }
  %>
  </body>
  </html>
