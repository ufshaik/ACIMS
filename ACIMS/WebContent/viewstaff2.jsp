<%@ page import="java.sql.*"%>
<%@page import="com.Dbconnection.Dbconnection"%>
<%! Connection con=null;
    PreparedStatement pst,pst1;
	Statement st;
    ResultSet rs,ry;
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
String ta=uid+"t";
pst=con.prepareStatement("select * from "+ta+" where REG_ID=?");
pst.setString(1,pin);
pst1=con.prepareStatement("select to_char(dob,'dd/mon/yyyy') from "+ta+" where REG_ID=?");
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
<tr><td width="800" height="10"><IMG height=40 src="img/m021.gif" width=326> </td></tr></table></tr>
<tr><td><table width="800" border="1"  bordercolor="#2A8DCC" bgcolor=white>
<tr><td valign=left width="200" class=ma colspan=2><h5></h5>

<table cellSpacing=0 cellPadding=0 width="100%" border=0>
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
<td bgcolor="0077c0" width="33%" align=center><a class=link1 href="staffdetails.jsp?v=0">Add staffDetails</a></td>
<td bgcolor="0077c0" width="33%" align=center><a class=link1  href="updatestaff.jsp?v=0">Update staffDetails</a></td>
<td bgcolor="0077c0" width="33%" align=center><a class=link1  href="viewstaff1.jsp?v=0">View staffDetails</a></td>

<tr><td height=50></td></tr></table>
<table align=center>
<tr><td>
<table border=0  align=center height="400" width="400">
<caption><h4><strong><u><b><font color=#336699>Staff details</font></b></u></strong></h4></caption>
<tr><td bgcolor="A9C6E2" height=10 align=center width=40%>Name:</td><td bgcolor="#EFEFEF" height=10 align=center><%=rs.getString(2)%>&nbsp;<%=rs.getString(1)%></td></tr>
<tr><td bgcolor="A9C6E2" height=10 align=center>Registration-id</td><td bgcolor="#EFEFEF" height=10 align=center><%=rs.getString(3)%></td></tr>
<tr><td bgcolor="A9C6E2" height=10 align=center>Gender</td><td bgcolor="#EFEFEF" height=10 align=center><%=rs.getString(12)%></td></tr> 
<tr><td bgcolor="A9C6E2" height=10 align=center>D.O.B:</td><td bgcolor="#EFEFEF" height=10 align=center><%=ry.getString(1)%></td></tr>
<tr><td bgcolor="A9C6E2" height=10 align=center>Degree:</td><td bgcolor="#EFEFEF" height=10 align=center><%=rs.getString(4)%></td></tr>
<tr><td bgcolor="A9C6E2" height=10 align=center>Subject:</td><td bgcolor="#EFEFEF" height=10 align=center><%=rs.getString(13)%></td></tr>
<tr><td bgcolor="A9C6E2" height=10 align=center>proff</td><td bgcolor="#EFEFEF" height=10 align=center><%=rs.getString(8)%></td></tr>
<tr><td bgcolor="A9C6E2" height=10 align=center>ADDRESS:</td><td bgcolor="#EFEFEF" height=10 align=center><%=rs.getString(7)%></td></tr>
<tr><td bgcolor="A9C6E2" height=10 align=center>Contact NO.:</td><td bgcolor="#EFEFEF" height=10 align=center><%=rs.getString(5)%></td></tr>
<tr><td bgcolor="A9C6E2" height=10 align=center>Email-id:</td><td bgcolor="#EFEFEF" height=10 align=center><%=rs.getString(6)%></td></tr>
<tr><td bgcolor="A9C6E2" height=10 align=center>Total salary</td><td bgcolor="#EFEFEF" height=10 align=center><%=rs.getString(9)%></td></tr>
<tr><td bgcolor="A9C6E2" height=10 align=center>Salary per class</td><td bgcolor="#EFEFEF" height=10 align=center><%=rs.getString(10)%></td></tr>
<tr><td align=center colspan=2><a href="viewstaff1.jsp"><font color=blue face=verdena size=3px>&lt;&lt;Back</font></td></tr>
<tr><td height=20></td></tr>
</table></td></tr>
</table>
</td></tr>
</table></td></tr>



<tr><td><table width="800" cellpadding=0 cellspacing=0>
 <tr><td class=fo >


<table cellpadding=0 cellspacing=0 width="800" >
  <tr><td width="48"><IMG height=36 src="img/m33.gif" width=42 align=left ></td>
    <td class=fo width="800">All Rights Reserved. </td>
    <td align=right width="220" class=fo><IMG height=36 src="img/m35.gif" width=214 ></td></tr>
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

