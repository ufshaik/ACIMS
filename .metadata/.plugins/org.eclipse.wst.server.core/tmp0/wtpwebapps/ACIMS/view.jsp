<%@ page import="java.sql.*"%>
<%@page import="com.Dbconnection.Dbconnection"%>
<%! Connection con=null;
    PreparedStatement pst,pst1,pst2;
	Statement st;
    ResultSet rs,ry,rz;
   String pin;
%>
<%
try
{
	String uid=(String)session.getAttribute("uid1");
	   if(uid!=null)
  {}
else
{
      response.sendRedirect("index.jsp");
  }
	
	   con=Dbconnection.getConnection();
pin=request.getParameter("t3");
String ta=uid+"s";

pst2=con.prepareStatement("select count(*) from "+ta+" where REG_ID=?");
pst2.setString(1,pin);
rz=pst2.executeQuery();
rz.next();
int w=rz.getInt(1);

if(w==0)
	{
	    response.sendRedirect("viewstu.jsp?v=2");
	}
out.println(w);
pst=con.prepareStatement("select * from "+ta+" where REG_ID=?");
pst.setString(1,pin);
pst1=con.prepareStatement("select date_of_birth,date_of_joining from "+ta+" where REG_ID=?");
pst1.setString(1,pin);
ry=pst1.executeQuery();
rs=pst.executeQuery();
rs.next();
ry.next();
%>
<%session.setAttribute("uid1",uid);%>

<html>
<head>
<title></title>
<link rel=stylesheet href=st.css type=text/css>
<LINK 
media=screen,projection,print 
href="dropdown/main.css" type=text/css 
rel=stylesheet>
<BODY bgcolor="#A9B1B9">
<table  valign="top" cellpadding=0 cellspacing=0 width="800"  align=center  bordercolor="#2A8DCC" >
 <tr><td valign=top class=to width="800" bgcolor="0F4F8D">
<table width="800" cellpadding=0 cellspacing=0 height="144" >
 <tr><td width="800" height="144"><IMG id=IMG1 height=144 src="img/sri1.gif" width="100%" ></td></tr>
<tr><td width="800" height="10"><IMG height=40 src="img/m021.gif" width=326 ></td></tr></table></tr>


<tr><td><table width="800" border="1"  bordercolor="#2A8DCC" bgcolor=white>
<tr><td valign=left width="200" class=ma colspan=2><h5></h5>


<table cellSpacing=0 cellPadding=0 width="100%" border=0 >
<tr><td vAlign=center align=middle colSpan=2>



<tr><td height=15></td></tr>
<TR><TD vAlign=center align=middle ><IMG height=1 src="img/D2_Blueline.gif" width="98%"></TD></TR>


<TR>
                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5
                              src="img/D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT height=10
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <A class=links href="updateprofile.jsp?v=0">Update profile</A></FONT></TD></TR>

<TR> <TD vAlign=center align=middle colSpan=2>
<IMG height=1 src="img/D2_Blueline.gif" width="98%"></TD></TR>


<TR>
                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5
                              src="img/D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a class=links href="changepassword.jsp?v=0">Changepassword</FONT></TD></TR>

<TR>
                            <TD vAlign=center align=middle colSpan=2><IMG 
                              height=1
                              src="img/D2_Blueline.gif" 
                              width="98%"></TD></TR>


<TR>
                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5
                              src="img/D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a class=links href="addstu.jsp?v=0">Student Details</FONT></TD></TR>

<TR>
                            <TD vAlign=center align=middle colSpan=2><IMG 
                              height=1
                              src="img/D2_Blueline.gif" 
                              width="98%"></TD></TR>


<TR>
                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5
                              src="img/D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a class=links href="deleteid.jsp?v=0">Delete Details</FONT></TD></TR>

<TR> <TD vAlign=center align=middle colSpan=2>
<IMG height=1 src="img/D2_Blueline.gif" width="98%"></TD></TR>

<TR>
                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5
                              src="img/D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a class=links href="addmarks.jsp?v=0">Marks Details</FONT></TD></TR>

<TR><TD vAlign=center align=middle colSpan=2>
<IMG height=1 src="img/D2_Blueline.gif" width="98%"></TD></TR>
<TR>
                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5
                              src="img/D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a class=links href="addatt.jsp?v=0">Attendance Details</FONT></TD></TR>
<TR> <TD vAlign=center align=middle colSpan=2>
<IMG height=1 src="img/D2_Blueline.gif" width="98%"></TD></TR>

<TR>
                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5
                              src="img/D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a class=links href="staffdetails.jsp?v=0">Enter Staff Details</FONT></TD></TR>
<TR> <TD vAlign=center align=middle colSpan=2>
<IMG height=1 src="img/D2_Blueline.gif" width="98%"></TD></TR>

<TR>
                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5
                              src="img/D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a class=links href="scholarship.jsp?v=0">Scholarship Details</FONT></TD></TR>
<TR> <TD vAlign=center align=middle colSpan=2>
<IMG height=1 src="img/D2_Blueline.gif" width="98%"></TD></TR>

<TR>
                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5
                              src="img/D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a class=links href="payroll.jsp?v=0">Payroll System</FONT></TD></TR>
<TR> <TD vAlign=center align=middle colSpan=2>
<IMG height=1 src="img/D2_Blueline.gif" width="98%"></TD></TR>

<TR>
                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5
                              src="img/D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a class=links href="logout.jsp?v=0">Logout</FONT></TD></TR>

<TR><TD vAlign=center align=middle colSpan=2>
<IMG height=1 src="img/D2_Blueline.gif" width="98%"></TD></TR>

</font></table>

</td>
<td width=600>

<table width=100% height=18 align=top>
<tr><td height=15></td></tr>
<tr>
<td bgcolor="0077c0" width="33%" align=center><a class=link1 href="addstu.jsp?v=0">Add Newdetails</a></td>
<td bgcolor="0077c0" width="33%" align=center><a class=link1  href="updatestu.jsp?v=0">UpdateDetails</a></td>
<td bgcolor="0077c0" width="33%" align=center><a class=link1  href="viewstu.jsp?v=0">ViewDetails</a></td>

<tr><td height=50></td></tr></table>
<table align=center>
<tr><td>
<table border=0 width="400" align=center height="578" bgcolor=white>
<caption><h4><strong><u>STUDENT DETAILS FORM</u></strong></h4></caption>
<tr><td bgcolor="A9C6E2" height=20 align=center width=40%>Name:</td><td bgcolor="#EFEFEF" height=20 align=center><%=rs.getString(3)%>&nbsp;.&nbsp;<%=rs.getString(2)%></td></tr>
<tr><td bgcolor="A9C6E2" height=20 align=center>Father Name:</td><td bgcolor="#EFEFEF" height=20 align=center><%=rs.getString(4)%></td></tr>
<tr><td bgcolor="A9C6E2" height=20 align=center>Father Occupation:</td><td bgcolor="#EFEFEF" height=20 align=center><%=rs.getString(5)%></td></tr>
<tr><td bgcolor="A9C6E2" height=20 align=center>Regestraion-id:</td><td bgcolor="#EFEFEF" height=20 align=center><%=rs.getString(1)%></td></tr>
<tr><td bgcolor="A9C6E2" height=20 align=center>Date of joining:</td><td bgcolor="#EFEFEF" height=20 align=center><%=ry.getString(2)%></td></tr>
<tr><td bgcolor="A9C6E2" height=20 align=center>Gender</td><td bgcolor="#EFEFEF" height=20 align=center><%=rs.getString(16)%></td></tr> 
<tr><td bgcolor="A9C6E2" height=20 align=center>D.O.B:</td><td bgcolor="#EFEFEF" height=20 align=center><%=ry.getString(1)%></td></tr>
<tr><td bgcolor="A9C6E2" height=20 align=center>Branch:</td><td bgcolor="#EFEFEF" height=20 align=center><%=rs.getString(7)%></td></tr>
<tr><td bgcolor="A9C6E2" height=20 align=center>Category</td><td bgcolor="#EFEFEF" height=20 align=center><%=rs.getString(6)%></td></tr>
<tr><td bgcolor="A9C6E2" height=20 align=center>course</td><td bgcolor="#EFEFEF" height=20 align=center><%=rs.getString(20)%></td></tr>
<tr><td bgcolor="A9C6E2" height=20 align=center>S.S.C(%):</td><td bgcolor="#EFEFEF" height=20 align=center><%=rs.getString(13)%></td></tr>
<tr><td bgcolor="A9C6E2" height=20 align=center>Inter(%):</td><td bgcolor="#EFEFEF" height=20 align=center><%=rs.getString(14)%></td></tr>
<tr><td bgcolor="A9C6E2" height=20 align=center>District</td><td bgcolor="#EFEFEF" height=20 align=center><%=rs.getString(8)%></td></tr>

<tr><td bgcolor="A9C6E2" height=20 align=center>ADDRESS:</td><td bgcolor="#EFEFEF" height=20 align=center><%=rs.getString(21)%></td></tr>
<tr><td bgcolor="A9C6E2" height=20 align=center>Contact NO.:</td><td bgcolor="#EFEFEF" height=20 align=center><%=rs.getString(9)%></td></tr>
<tr><td bgcolor="A9C6E2" height=20 align=center>Email-id:</td><td bgcolor="#EFEFEF" height=20 align=center><%=rs.getString(10)%></td></tr>
<tr><td bgcolor="A9C6E2" height=20 align=center>Regestration fee:</td><td bgcolor="#EFEFEF" height=20 align=center><%=rs.getString(12)%></td></tr>
<tr><td bgcolor="A9C6E2" height=20 align=center>Account number</td><td bgcolor="#EFEFEF" height=20 align=center><%=rs.getString(11)%></td></tr>
<tr><td height=20></td></tr>
</table></td></tr>
</table>
</td></tr>
</table></td></tr>



<tr><td><table width="800" cellpadding=0 cellspacing=0>
 <tr><td class=fo >


<table cellpadding=0 cellspacing=0 width="800" >
  <tr><td width="48"><IMG height=36 src="img/m33.gif" width=42 align=left ></td>
    <td class=fo width="600">All Rights Reserved.</td>
    <td align=right width="200" class=fo><IMG height=36 src="img/m35.gif" width=214 ></td></tr>
 </table></td></tr>
</table>
</td></tr>
</table>

</BODY>
</HTML>
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

