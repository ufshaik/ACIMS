
<%try
{
	String vv=request.getParameter("v");
%>	
	<html>
<head>
<title></title>
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
<form method="post" action="login.jsp">
<BODY>

<table cellpadding=0 cellspacing=0 width="780" border=1  align=center  bordercolor="#2A8DCC" >
 <tr><td valign=top class=to width="780">
<table width="820" cellpadding=0 cellspacing=0 height="174">
 <tr><td width="822" height="144"><IMG id=IMG1 height=144 src="img/sri.gif" width="100%" ></td></tr>
<tr><td width="822" height="10"><IMG height=40 src="img/m021.jpg" width=326 ><A href="indexTABLE.html"><IMG height=40 src="img/buttons/home1.gif" width=94 border=0 ></A><A onmouseover="openMenu('naac',this,-20,0);" 
  onmouseout="closeMenu('naac',this);" 
  ><IMG 
  onmouseover="this.src='img/buttons/naac.gif'" onmouseout="this.src='img/buttons/naac1.gif'" 
  alt=NAAC 
  src="img/buttons/naac1.gif" width="93" height="40"></A><A onmouseover="openMenu('colleges',this,72,0);" 
  onmouseout="closeMenu('colleges',this);" 
  ><IMG 
  onmouseover="this.src='img/buttons/college.gif'" onmouseout="this.src='img/buttons/college1.gif'" 
  alt=college 
  src="img/buttons/college1.gif" width="93" height="40"></A><A onmouseover="openMenu('jkc',this,168,0);" 
  onmouseout="closeMenu('jkc',this);" 
  ><IMG 
  onmouseover="this.src='img/buttons/jkc.gif'" onmouseout="this.src='img/buttons/jkc1.gif'" 
  alt=jkc 
  src="img/buttons/jkc1.gif" width="93" height="40"></A>

<A onmouseover="openMenu('naac',this,260,0);" 
  onmouseout="closeMenu('naac',this);" 
  ><IMG 
  onmouseover="this.src='img/buttons/naac.gif'" onmouseout="this.src='img/buttons/naac1.gif'" 
  alt=NAAC 
  src="img/buttons/naac1.gif" width="93" height="40"></A></td></tr>
   
 </table>
<table width="567" cellpadding=0 cellspacing=0>
 <tr><td width="567">
<table width=823 cellpadding=0 cellspacing=0>
 <tr><td rowspan=2 valign=top width="205"><IMG height=181 src="img/m12.jpg" width=205 ></td>
   <td valign=top bgcolor=#dbdbdb width="318"><IMG height=19 src="img/m13.gif" width=318 ><br><br><h1>VISION:</h1>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;To 
                  make quality the defining element of&nbsp;&nbsp; higher education in India through a combination of self and external quality evaluation, promotion and sustenance initiatives.</td>
   <td rowspan=2 valign=top width="43"><IMG height=181 src="img/m14.gif" width=43 ></td>
<td width="257">Login ID&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; <INPUT size="20" name="loginid"><br><br>
Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <INPUT size="20" name="password"><br>



<%if(vv.equals("1")){%>
<font color="red">USERNAME AND PASSWORD DOESNOT MATCH</font><%}%>
	 
 
 
 <br>
<a href="%22#&quot;">Forgot Password?</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit"  value="  Sign-In  "></td></tr>

 <tr><td valign=bottom bgcolor=#dbdbdb width="318"><IMG height=32 src="img/m23.gif" width=318 ></td></tr>
 <tr><td colspan=3 width="489"><IMG height=151 src="img/m24.jpg" width=116 align=left ><font color=#ffffff>To make quality the defining element of higher education in India through a combination of self and external quality evaluation, promotion and sustenance initiatives.</font></td></tr>
</table>
</td></tr></table><br><br>
<table width="780" cellpadding=0 cellspacing=0>
 <tr><td class=fo >


<table cellpadding=0 cellspacing=0 width="821" >
  <tr><td width="48"><IMG height=36 src="img/m33.gif" width=42 align=left ></td>
    <td class=fo width="737">All Rights Reserved.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
    <td align=right width="220" class=fo><IMG height=36 src="img/m35.gif" width=214 ></td></tr>
 </table></td></tr>
</table>


<UL class=udm id=udm>
  <LI id=naac>&nbsp;<A href=""></A><UL>
    <LI><A href="abtnaac.html">About NAAC</A></LI>
    <LI><A href="naacprof.html">NAAC's Profile</A> </LI>
    <LI><A href="whyaccr.html">Why Accreditation</A></LI>
    <LI><A href="accrproc.html">Process of Accreditation</A></LI>
    <LI><A href="criteria.html">Criteria for Assessment</A></LI>
    <LI><A href="grade.html">Grading System</A> </LI>
    <LI><A href="applyproc.html">How to Apply</A> </LI>
  </UL></LI>
 <LI id=colleges>&nbsp;<A href=""></A><UL>
    <LI><A href="applyaccr.html">Apply for Accreditation</A></LI>
    <LI><A href="accrcoll">Accredited Colleges</A></LI></UL>

  </LI> 



<LI id=jkc>&nbsp;<A href=""></A><UL>
    <LI><A href="studreg.html">About JKC</A></LI>
    <LI><A href="http://www.northwesternbc.edu/94.htm">Student Login</A></LI>
        <LI><A href="http://www.northwesternbc.edu/94.htm">Achievements</A></LI></UL>

  </LI></UL>
<SCRIPT src="dropdown/265.htm" 
type=text/javascript></SCRIPT></td></tr></table></center>

</BODY>
</HTML>
<%}
catch(Exception e)
{}
%>
