<%@ page import="java.sql.*"%>
<%@page import="com.Dbconnection.Dbconnection"%>
<%! Connection con=null;
    PreparedStatement pst,pst1,pst2;
    ResultSet rs,ry,rz;
%>
<%
try
{
	String br=request.getParameter("branch");
	String ye=request.getParameter("year");
	String vv=request.getParameter("v");
	String uid=(String)session.getAttribute("uid1");
	String ta=uid+"s";
	   if(uid!=null)
  {}
else
{
      response.sendRedirect("index.jsp");
  }
	int i=0,j=0;

	 con=Dbconnection.getConnection();
	 
pst1=con.prepareStatement("select branch from "+ta+" group by branch");
ry=pst1.executeQuery();
while(ry.next())
	{
	   if(br.equals(ry.getString(1)))
		   i=1;
	}
	if(i!=1)
	{
		 response.sendRedirect("addmarks.jsp?&&v=1");
	}

pst2=con.prepareStatement("select course from "+ta+" group by course");
rz=pst2.executeQuery();
while(rz.next())
	{
	   if(ye.equals(rz.getString(1)))
		   j=1;
	}
	if(j!=1)
	{
		 response.sendRedirect("addmarks.jsp?&&v=2");
	}


pst=con.prepareStatement("select reg_id from "+ta+" where course=? AND branch=?");
pst.setString(1,ye);
pst.setString(2,br);
rs=pst.executeQuery();
%>
<%session.setAttribute("branc",br);
  session.setAttribute("yea",ye);
  session.setAttribute("uid1",uid);%>



<html>
<head>
<title></title>
<link rel=stylesheet href=st.css type=text/css>
<LINK 
media=screen,projection,print 
href="dropdown/main.css" type=text/css 
rel=stylesheet>

</head>



<BODY bgcolor="#A9B1B9" >




<table  valign="top" cellpadding=0 cellspacing=0 width="780"  align=center  bordercolor="#2A8DCC" >
 <tr><td valign=top class=to width="780" bgcolor="0F4F8D">
<table width="820" cellpadding=0 cellspacing=0 height="174" >
 <tr><td width="822" height="144"><IMG id=IMG1 height=144 src="img/sri1.gif" width="100%" ></td></tr>
<tr><td width="822" height="10"><IMG height=40 src="img/m021.gif" width=326> </td></tr></table></tr>

<tr><td><table width="820" border="1"  bordercolor="#2A8DCC" bgcolor=white>
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
<td>
<table width=100% height=18 align=top>
<tr><td height=15></td></tr>
<tr>
<td bgcolor="0077c0" width="50%" align=center><a style="color: white" class=link1 href="addmarks.jsp?v=0">Enter marks</a></td>
<td bgcolor="0077c0" width="50%" align=center><a style="color: white" class=link1  href="viewmarks.jsp?v=0">View marks</a></td>


<tr><td height=50></td></tr></table>
<table  width="620" height="500" >
<tr><td height="20"></td></tr>
<tr><td align=center><%if(vv.equals("1"))
	     {%><font color="green" size=4px>Record Updated</font><%}%>
	  </td></tr>
<tr><td height="10"></td></tr><tr><td height="30"><center><h2><font color="#336699">Update Marks</font></h2>
<form action="updatemarks.jsp" methoed="post">
<table>
<tr><td height="10"></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Registraion-id</td><td><select name="id">
<%while(rs.next())
	{
	  String x=rs.getString(1);
	%>
<option value=<%=x%>><%=x%></option><%}%></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Enter marks</td><td><input type=text size=15 name="marks"></td></tr>

<tr></tr><tr></tr>
<tr><td height="10"></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type=SUBMIT size=5 name=s1 value="submit"></td>
<td height="27"><input type=reset name=r1 value="Reset"></td></tr><tr><td height="24"></td>
<tr><td height="20"></td></tr>

	  <tr><td height="200"></td></tr>
</table></form></center></td></tr>
</table>
</td></tr>
</table></td></tr>



<tr><td><table width="780" cellpadding=0 cellspacing=0>
 <tr><td class=fo >


<table cellpadding=0 cellspacing=0 width="821" >
  <tr><td width="48"><IMG height=36 src="img/m33.gif" width=42 align=left ></td>
    <td class=fo width="737">All Rights Reserved.</td>
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
