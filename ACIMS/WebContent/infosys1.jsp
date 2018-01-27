<%@ page import="java.sql.*"%>
<%@page import="com.Dbconnection.Dbconnection"%>
<%try
{
  String uid=request.getParameter("uid1");

session.setAttribute("uid1",uid);
%>

<html>
<head>
<Script Language="JavaScript">
function xyz()
{
  window.open("timer.jsp?v=0","exampaper","width=1024,height=768,toolbar=false,status=false,menubar=false,directories=false,resizable=false");
}

</Script><title></title>
<link rel=stylesheet href=st.css type=text/css>
<LINK 
media=screen,projection,print 
href="dropdown/main.css" type=text/css 
rel=stylesheet>
<!-- UDM 4 -->
<SCRIPT src="dropdown/udm_custom.js" 
type=text/javascript></SCRIPT>

<SCRIPT src="dropdown/udm_control.js" 
type=text/javascript></SCRIPT>

<SCRIPT src="dropdown/udm_style.js" 
type=text/javascript></SCRIPT>

<SCRIPT src="dropdown/udm_slide.js" 
type=text/javascript></SCRIPT>

<SCRIPT src="dropdown/dropdown.js" 
type=text/javascript></SCRIPT>
</head>
<BODY >

<table  valign="top" cellpadding=0 cellspacing=0 width="800"  align=center  bordercolor="#2A8DCC" >
 <tr><td valign=top class=to width="800" bgcolor="0F4F8D">
<table width="800" cellpadding=0 cellspacing=0 height="144" >
 <tr><td width="800" height="144"><IMG id=IMG1 height=144 src="img/sri1.gif" width="100%" ></td></tr>
<tr><td width="800" height="10"><IMG height=40 src="img/m021.gif" width=326> </td></tr></table></tr>

  <table width="800" border="1"  bordercolor="#2A8DCC" bgcolor=white>
<tr><td valign=left width="200" class=ma colspan=2>


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
                             <A class=links href="changepassword.jsp?v=0">Change Password</A></FONT></TD></TR>

<TR> <TD vAlign=center align=middle colSpan=2>
<IMG height=1 src="img/D2_Blueline.gif" width="98%"></TD></TR>


<TR>
                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5
                              src="img/D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a class=links href="recruitment.jsp?v=0">Recruitment Procedures</FONT></TD></TR>

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
                             <a class=links href="company papers.jsp?v=0">Previous Papers</FONT></TD></TR>

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
                             <a class=links href="schedule.jsp?v=0">Exam Schedule</FONT></TD></TR>

<TR><TD vAlign=center align=middle colSpan=2>
<IMG height=1 src="img/D2_Blueline.gif" width="98%"></TD></TR>
<TR>
                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5
                              src="img/D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a class=links href="recruitment.jsp?uid1=<%=uid%>" onclick="xyz()" >Exam Paper</FONT></TD></TR>
							 
<TR> <TD vAlign=center align=middle colSpan=2>
<IMG height=1 src="img/D2_Blueline.gif" width="98%"></TD></TR>

<TR>
                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5
                              src="img/D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a class=links href="results.jsp?v=0">Result</FONT></TD></TR>
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
<TR> <TD vAlign=center align=middle colSpan=2>
<IMG height=1 src="img/D2_Blueline.gif" width="98%"></TD></TR>





</font></table></td>
<td width="600" height=420 valign=top>

<table width=100% height=18 align=top>
<tr><td height=15></td></tr>
<tr>
<td bgcolor="0077c0" width="90" align=center><a class=link1 href="recruitment.jsp">Satyam</a></td>
<td bgcolor="0077c0" width="80" align=center><a class=link1  href="wipro1.jsp">Wipro</a></td>
<td bgcolor="0077c0" width="99" align=center><a class=link1  href="infosys1.jsp">Infosys</a></td>
<td bgcolor="0077c0" width="78" align=center><a class=link1  href="ibm1.jsp">IBM</a></td>
<td bgcolor="0077c0" width="150" align=center><a class=link1  href="tech1.jsp">Tech Mahendra</a></td>
<td bgcolor="0077c0" width="99" align=center><a class=link1  href="cts1.jsp">Cognizant</a></td></tr>
<tr><td height=50></td></tr></table>


<table align=center>
<caption><h3><b>Infosys</b><h3></caption>
<tr><td bgcolor="A9C6E2" height=20 width=20% align=center>No of rounds</td><td bgcolor="A9C6E2" width=20% height=20 align=center>Type of round</td><td bgcolor="A9C6E2" width=20% height=20 align=center>No of questions</td></tr>
<tr><td bgcolor="#EFEFEF" height=20 align=center>Round 1:</td><td bgcolor="#EFEFEF" height=20 align=center>Apptitude :(40min)</td><td bgcolor="#EFEFEF" height=20 align=center> 30 questions</td></tr>
<tr><td bgcolor="#EFEFEF" height=20 align=center></td><td bgcolor="#EFEFEF" height=20 align=center>English test(30 min)</td><td bgcolor="#EFEFEF" height=20 align=center>40 questions </td></tr>

<tr><td bgcolor="#EFEFEF" height=20 align=center>Round 4:</td><td bgcolor="#EFEFEF" height=20 align=center>HR Interview</tr><td bgcolor="#EFEFEF" height=20 align=center> </td></td>
<tr><td height=70></td></tr>
</table>













</td></tr>
</table>



<tr><td height="1"><table width="800" cellpadding=0 cellspacing=0>
 <tr><td class=fo >


<table cellpadding=0 cellspacing=0 width="800" >
  <tr><td width="48"><IMG height=36 src="m33.gif" width=42 align=left ></td>
    <td class=fo width="800">All Rights Reserved. </td>
    <td align=right width="220" class=fo><IMG height=36 src="m35.gif" width=214 ></td></tr>
 </table></td></tr>
</table>
</table></td></tr>
</table>

</center>
</BODY>
</HTML>
<%}
catch(Exception e)
{}
%>
