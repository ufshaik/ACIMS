<%@ page import="java.sql.*"%>
<%@page import="com.Dbconnection.Dbconnection"%>
<%! Connection con=null;
    PreparedStatement aci;
    ResultSet rs31,rs3,rs11,rsl,rsl1;
%>
<%
try
{
 
String ta=request.getParameter("cc");
String f1=request.getParameter("id");


con=Dbconnection.getConnection();

      out.println(f1);

Statement loge1=con.createStatement();
	 String stri1="select count(*) from jkcdata where roll='"+f1+"'";
	 rsl1=loge1.executeQuery(stri1);
	 rsl1.next();
	 int x=rsl1.getInt(1);
	 out.println(x);

	 
	 if(x!=0)
	{
     // Statement loge=con.createStatement();
	 //String stri="select * from jkcdata where roll='"+f1+"'";
	 //rsl=loge.executeQuery(stri);
	 //rsl.next();
	 //String j1=rsl.getString(1);
	 //out.println(j1);
	 //if(j1.equals(f1))
	 //{
		 response.sendRedirect("stureg.jsp?v=4");
	// }
	}
      
     

      Statement log21=con.createStatement();
	 String str21="select count(*) from colleges where coll_code='"+ta+"'";
	 rs31=log21.executeQuery(str21);
	 rs31.next();
	 int j=rs31.getInt(1);
	 if(j==0)
	 {
		 response.sendRedirect("stureg.jsp?v=2");
	 }


      Statement log2=con.createStatement();
	 String str2="select loginid from colleges where coll_code='"+ta+"'";
	 rs3=log2.executeQuery(str2);
	 rs3.next();
	  String ta2=rs3.getString(1);
	 String ta1=ta2+"s";
	 
	  Statement log11=con.createStatement();
	
	 String str11="select count(*) from "+ta1+" where REG_ID='"+f1+"'";
	  rs11=log11.executeQuery(str11);
	 rs11.next();
	 int i1=rs11.getInt(1);
	 if(i1==0)
	 {
		 response.sendRedirect("stureg.jsp?v=3&&col="+ta2);
	 }
	 
	 
	 
	


aci=con.prepareStatement("insert into jkcdata values(?,?,?,?,?,?,?,?,?,?)");
aci.setString(3,f1);
aci.setString(1,request.getParameter("fn"));
aci.setString(2,request.getParameter("sn"));
aci.setString(4,request.getParameter("cn"));
aci.setString(5,ta);
aci.setString(6,request.getParameter("marks"));
aci.setString(7,request.getParameter("pwd"));
aci.setString(8,"0");
aci.setString(9,"0");
aci.setString(10,"0");
int i=aci.executeUpdate();
if(i==1)
{
	
response.sendRedirect("stureg.jsp?v=1");
}

con.close();
}
catch(Exception e)
{
	out.println(e);
 }
%>
