<%@ page import="java.sql.*"%>
<%@page import="com.Dbconnection.Dbconnection"%>
<%
Statement stmt,stmt1;
ResultSet rs=null,rs1=null;
String usr,passwd;

  usr=request.getParameter("loginid");
  passwd=request.getParameter("password");
  //out.println(usr+" "+passwd);%>
<%session.setAttribute("uid1",usr);%>
  <%
  try
  {
	  Connection con;
	  con=Dbconnection.getConnection();
	  
  stmt=con.createStatement();
  
  HttpSession httpSession=request.getSession();
  
  rs=stmt.executeQuery("select * from logins");
  
  while(rs.next())
  {
	   String un=rs.getString(1);
	   String pa=rs.getString(2);
        String va=rs.getString(3);
		//out.println(un+" "+pa+" "+va);
		
		 httpSession.setAttribute("u_name",rs.getString(1));
		 httpSession.setAttribute("p_word",rs.getString(2));
		 httpSession.setAttribute("type",rs.getString(3));
		 
	 if((usr.equals(un))&&(passwd.equals(pa))&&(va.equals("cce")))
     { %>
      <jsp:forward page="admin.jsp?v=0"/>
     <%}
        if(usr.equals(un)&&passwd.equals(pa)&&(va.equals("college")))
		 {%>
      <jsp:forward page="home.jsp"/>
       <%}
        if(usr.equals(un)&&passwd.equals(pa)&&(va.equals("jkcadmin")))
		 {%>
      <jsp:forward page="jkcadminhome.jsp?v=0"/>
       <%}
   }

stmt1=con.createStatement();
 String s2="select ROLL,PWD,STATUS from jkcdata";
  out.println(s2);
  rs1=stmt1.executeQuery(s2);
 while(rs1.next())
  {
	   String un1=rs1.getString(1);
	   String pa1=rs1.getString(2);
        String va1=rs1.getString(3);  
    //out.println(un1+" "+pa1+" "+va1);
	if((usr.equals(un1))&&(passwd.equals(pa1))&&(va1.equals("1")))
     { %>
      <jsp:forward page="home1.jsp?v=0"/>
     <%}
  }
    %>
   <jsp:forward page="invalidlogin.jsp"/>
   <%
     out.println("Username or password you entered is invalid");
    }
    
  
    catch(Exception e)
    {
        out.println(e);
     }
     %>

       


