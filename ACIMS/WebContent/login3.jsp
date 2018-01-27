<%@ page import="java.sql.*"%>
<%!
Connection con=null;
Statement stmt;
ResultSet rs=null;
String usr,passwd;
%>
<%
  usr=request.getParameter("loginid");
  passwd=request.getParameter("password");
  %><%
  try
  {
  Class.forName("com.mysql.jdbc.Driver");
  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/acims","root","");
  stmt=con.createStatement();
  rs=stmt.executeQuery("select * from logins");
  
  while(rs.next())
  {
	   String un=rs.getString(1);
	   String pa=rs.getString(2);
        String va=rs.getString(3);
		out.println(un+" "+pa+" "+va);
	 if(usr.equals(un)&&passwd.equals(pa)&&(va.equals("admin")))
     {%>
      <jsp:forward page="admin.html"/>
     <%}
        if(usr.equals(un)&&passwd.equals(pa)&&(va.equals("college")))
		 {%>
      <jsp:forward page="college.html"/>
       <%}
        if(usr.equals(un)&&passwd.equals(pa)&&(va.equals("jkc")))
		 {%>
      <jsp:forward page="student.html"/>
       <%}
   }
  
   %>
   <jsp:forward page="invalidlogin.html"/>
   <%
     out.println("Username or password you entered is invalid");
    }
    
  
    catch(Exception e)
    {
        out.println(e);
     }
     %>

       


