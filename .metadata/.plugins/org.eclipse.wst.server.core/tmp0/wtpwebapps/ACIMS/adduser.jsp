<%@ page import="java.sql.*"%>
<%@page import="com.Dbconnection.Dbconnection"%>
<%!
Connection con=null;
Statement stmt1,stmt2,stmt3,stmt4,checkst;

ResultSet check=null;
String rg1,rg2,rg3,rg4,rg5,st;
%>
<%
  rg1=request.getParameter("inname");
  rg2=request.getParameter("code");
  rg3=request.getParameter("grade");
  rg4=request.getParameter("loginid");
  rg5=request.getParameter("passwd");
  st=rg4;
  //String val=request.getParameter("v"); 
  %><%
 try
 {
	 con=Dbconnection.getConnection();
  String ch="select count(*) from colleges where loginid='"+rg4+"'";
  checkst=con.createStatement(); 
  //out.println(ch);
  check=checkst.executeQuery(ch);
  check.next();
  int x=check.getInt(1);
  if(x==0)
	 {
  
  String s="insert into logins values('"+rg4+"','"+rg5+"','college')";
  stmt1=con.createStatement(); 
  out.println(s);
  stmt1.executeUpdate(s);
  
  
  stmt2=con.createStatement();
  String s1="update  colleges set STATUS='"+rg3+"', LOGINID='"+st+"' where COLL_CODE='"+rg2+"' and STATUS='onprocess'";
  out.println(s1);
  stmt2.executeUpdate(s1);

  String  stu=st+"s";
  String s2="create table "+stu+"( REG_ID VARCHAR(12) primary key,FIRSTNAME VARCHAR(30),LASTNAME VARCHAR(30),FATHERNAME VARCHAR(30),FAT_OCC VARCHAR(30), CATEGORY VARCHAR(10),BRANCH varchar(15),  DISTRICT varchar(10),CONTACT_NO varchar(15),EMAIL_ID varchar(50),ACC_NO varchar(30),REG_FEE int(40),SSC int(30),INTER int(40),DATE_OF_JOINING DATE,GENDER varchar(6),DATE_OF_BIRTH DATE,MARKS int(40),ATTEND int(50),COURSE varchar(6),ADDRESS varchar(80))";
  stmt3=con.createStatement(); 
  out.println("created  "+stu);
  stmt3.execute(s2);
  
  
  String staf=st+"t";
String s3="create table "+staf+"(FIRSTNAME varchar(30),LASTNAME varchar(30),REG_ID varchar(12) primary key,DEGREE varchar(10),CONTACTNO int(12),EMAIL_ID varchar(50),ADDRESS varchar(80),PROFF varchar(25),TOTALSAL int(10),CLASSSAL int(10),DOB DATE,GENDER varchar(10),SUBJECT varchar(20),MONTH varchar(4),PRESENT int(3),WORKHRS int(3),SALOFMON int(10))";
stmt4=con.createStatement(); 
 out.println("created  "+staf);
  stmt4.execute(s3);
response.sendRedirect("admin.jsp?v=1");
	 }
else
	response.sendRedirect("admin.jsp?v=2");

%>
 <html>
 <body>
 
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

       


