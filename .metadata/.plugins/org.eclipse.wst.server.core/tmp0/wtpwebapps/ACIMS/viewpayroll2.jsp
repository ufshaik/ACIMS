<%@ page import="java.sql.*"%>
<%@page import="com.Dbconnection.Dbconnection"%>
<%! Connection con=null;
    PreparedStatement aci1,aci,aci2;
    ResultSet rs,ry,rz;
	
%>
<%
try
{ 
	int i=0;
    String py=request.getParameter("prof");

    String wr=request.getParameter("mon");

	String uid=(String)session.getAttribute("uid1");
	String ta=uid+"t";
	   if(uid!=null)
  {}
else
{
      response.sendRedirect("index.jsp");
  }
	   con=Dbconnection.getConnection();
aci=con.prepareStatement("select proff from "+ta+"");
rz=aci.executeQuery();
while(rz.next())
	{
	 String y=rz.getString(1);   
	   if(py.equals(y))
		{
		   i=1;
		}
	}
	if(i!=1)
	{
		  i=0;
          response.sendRedirect("viewpayroll.jsp?v=1");
	}
aci2=con.prepareStatement("select month from "+ta+"");
ry=aci2.executeQuery();
while(ry.next())
	{
	 String z=ry.getString(1);   
	   if(wr.equals(z))
		{
		   i=1;
		}
	}
	if(i!=1)
	{
          response.sendRedirect("viewpayroll.jsp?v=2");
	}

aci1=con.prepareStatement("select reg_id,firstname,lastname,workhrs,present,salofmon from "+ta+" where proff=? and month=?");
	aci1.setString(1,py);
   aci1.setString(2,wr);
rs=aci1.executeQuery();
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

</head>
<BODY >

<center>




<table  valign="top" cellpadding=0 cellspacing=0 width="800"  align=center  bordercolor="#2A8DCC" >
 <tr><td valign=top class=to width="800" bgcolor="0F4F8D">
<table width="800" cellpadding=0 cellspacing=0 height="144" >
 <tr><td width="800" height="144"><IMG id=IMG1 height=144 src="img/sri1.gif" width="100%" ></td></tr>
<tr><td width="800" height="10"><IMG height=40 src="img/m021.gif" width=326 ></td></tr></table></tr>


<tr><td><table width="800" border="1" height="500"  bordercolor="#2A8DCC"  bgcolor=white>
<tr><td valign=left width="200" class=ma><h5></h5>

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
<td width="600" valign=top>
<table width=100% height=18 align=top>
<tr><td height=15></td></tr>
<tr>
<td bgcolor="0077c0" width="50%" align=center><a style="color: white" class=link1 href="payroll.jsp?v=0">Enter pay details</a></td>
<td bgcolor="0077c0" width="50%" align=center><a style="color: white" class=link1  href="viewpayroll.jsp?v=0">View pay details</a></td>


<tr><td height=50></td></tr></table>
<br><br><br><br><br><br>

<form  method="post">


<table  width=550 border=0 align=center bordercolor=white>

<caption><h3><font color=#336699>Salary list</font><h3></caption>
<tr><td bgcolor="A9C6E2" height=20 align=center>Registraion-id</font></td><td bgcolor="A9C6E2" height=20 align=center>Name</font></td><td bgcolor="A9C6E2" height=20 align=center>Working hrs</font></td><td bgcolor="A9C6E2" height=20 align=center>Days present</font></td><td bgcolor="A9C6E2" height=20 align=center>Present salary </td></tr>
<%while(rs.next())
	{%>
       <tr><td bgcolor="#EFEFEF" height=20 align=center><%=rs.getString(1)%></td><td bgcolor="#EFEFEF" height=20 align=center><%=rs.getString(3)%>&nbsp;<%=rs.getString(2)%></td><td bgcolor="#EFEFEF" height=20 align=center><%=rs.getString(4)%></td><td bgcolor="#EFEFEF" height=20 align=center><%=rs.getString(5)%></td><td bgcolor="#EFEFEF" height=20 align=center><%=rs.getString(6)%></td></tr>
	   
	   <%}%>





</table></form>
</td></tr>
</table></td></tr>





<tr><td height="1"><table width="800" cellpadding=0 cellspacing=0>
 <tr><td class=fo >


<table cellpadding=0 cellspacing=0 width="800" >
  <tr><td width="48"><IMG height=36 src="img/m33.gif" width=42 align=left ></td>
    <td class=fo width="800">All Rights Reserved. </td>
    <td align=right width="220" class=fo><IMG height=36 src="img/m35.gif" width=214 ></td></tr>
 </table></td></tr>

</table></td></tr>
</table>

</center>
</BODY>
</HTML>
<%}
catch(Exception e)
{
out.println(e);}
finally
{
  con.close();
}
%>
