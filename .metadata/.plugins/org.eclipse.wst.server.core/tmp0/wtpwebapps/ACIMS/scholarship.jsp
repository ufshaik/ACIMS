
<%
try
{
  String vv=request.getParameter("v");
 String uid=(String)session.getAttribute("uid1");
    if(uid!=null)
  {}
else
{
      response.sendRedirect("index.jsp");
  }
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

<tr><td width="800">
  <table width="800" border="1"  height=450 bordercolor="#2A8DCC" bgcolor=white>
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
<td width="600" valign=top><br><br><br><br><br><br>
<table align=center>
<tr><td><h4><font color=#336699>Select the below options to get the corresponding merit list</font></h4></td></tr>
<tr><td height="15"></td></tr>

<table align=center>
<form action="scholarship1.jsp" methoed="post">
<tr><td>Enter the selection process</td>
<td><select name="s1">
<option value="b">branch wise</option>
<option value="g">General</option></td></tr>

<tr><td height="10"></td></tr>
<tr><td>Enter the catogery</td>
<td><select name="s2">
<option value="g">General</option>
<option value="s">S.C</option>
<option value="b">B.C</option>
</td></tr>
<tr><td height="10"></td></tr>
<tr><td>Enter total number of students:</td><td><input type="text" name="num"></td></tr>
<tr><td height="15"></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type=SUBMIT size=5 name=s1 value="submit"></td>
<td height="27"><input type=reset name=r1 value="Reset"></td></tr><tr><td height="24"></td></tr>
</form>
</table>

 </table>


</td></tr>
</table></td></tr>


<tr><td width="800"><table width="800" cellpadding=0 cellspacing=0>
 <tr><td class=fo >


<table cellpadding=0 cellspacing=0 width="800" >
  <tr><td width="48"><IMG height=36 src="img/m33.gif" width=42 align=left ></td>
    <td class=fo width="800">All Rights Reserved.</td>
    <td align=right width="220" class=fo><IMG height=36 src="img/m35.gif" width=214 ></td></tr>
 </table></td></tr>
</table>
</td></tr>
</table>

</BODY>
</HTML>
<%}catch(Exception e)
{}
%>
