<%@page import="java.sql.*"%>
<%@page import="com.Dbconnection.Dbconnection"%>
<%!Connection con=null;
   Statement st;
   ResultSet rs;
%>
<%try{
	  con=Dbconnection.getConnection();
st=con.createStatement();
rs=st.executeQuery("select * from notifications");
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

<SCRIPT src="dropdown/images_rotate.js" 
type=text/javascript></SCRIPT>
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


<script type="text/javascript" language="JavaScript" src="rotate/slideshow.js"></script>

<script type="text/javascript" language="JavaScript">
	function checkemail()
{
var str=document.frm.email1.value;

var filter=/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i
if (!(filter.test(str)))
 {
  alert("Please input a valid email address!")
  document.frm.email1.focus();
 } 
  
}
</script>
</head>

<BODY >
<table cellpadding=0 cellspacing=0 width="780" border=1  align=center  bordercolor="#2A8DCC" >
  <tr><td valign=top class=to width="780">
       <table width="820" cellpadding=0 cellspacing=0 height="174">
            <tr>
             <td width="822" height="144"><IMG id=IMG1 height=144 src="img/sri.gif" width="100%" ></td></tr>
             <tr><td width="822" height="10"><IMG height=40 src="img/m021.jpg" width=326 ><A href="index.jsp"><IMG 
                onmouseover="this.src='img/buttons/home.gif'" onmouseout="this.src='img/buttons/home1.gif'" 
               alt=Home 
               src="img/buttons/home1.gif" width="93" height="40"></A><A onmouseover="openMenu('naac',this,-20,0);" 
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
          src="img/buttons/jkc1.gif" width="93" height="40"></A><A

             onmouseover="openMenu('abtus',this,260,0);" 
            onmouseout="closeMenu('abtus',this);" 
           ><IMG 
           onmouseover="this.src='img/buttons/abtus.gif'" onmouseout="this.src='img/buttons/abtus1.gif'" 
           alt=AboutUs 
         src="img/buttons/abtus1.gif" width="93" height="40"></A></td></tr>
   
   
       </table>
   </td></tr>
  <tr><td colspan=2 width=100% bgcolor="0077c0">
 <FONT  face="Verdana, Arial, Helvetica, sans-serif" color="#FFE0A2" size=3>
 <h5><marquee behavior="alternate" scrollamount=4 onmouseover=this.stop() onmouseout=this.start()> Welcome to Accredited College Information Management Systems</marquee></td></tr></h5>


<tr><td  bgcolor=white>
   

 <table valign=top width="819"><tr valign=top> 
    <td valign=top width="571">
       <table  cellpadding=0 cellspacing=0 >
         <tr><td rowspan=2 valign=top width="205"><IMG height=181 src="img/m12.jpg" width=205 ></td>
         <td valign=top bgcolor=#dbdbdb width="318"><IMG height=19 src="img/m13.gif" width=318 ><h1>VISION :</h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;To 
                  make quality the defining element of&nbsp;&nbsp; higher education in India through a combination of self and external quality evaluation, promotion and sustenance initiatives.</td>
         <td rowspan=2 valign=top width="43"><IMG height=181 src="img/m14.gif" width=43 ></td>

         <tr><td valign=bottom bgcolor=#dbdbdb width="318"><IMG height=32 src="img/m23.gif" width=318 ></td></tr>
         </table> 
            
         <table width="575">
        
        <tr><td width="308" ><font color=#000000> To make quality the defining element of higher education in India through a combination of self and external quality evaluation, promotion and sustenance initiatives.</font></td>
<td  width="264"  >
<script type="text/javascript">
//new fadeshow(IMAGES_ARRAY_NAME, slideshow_width, slideshow_height, borderwidth, delay, pause (0=no, 1=yes), optionalRandomOrder)
new fadeshow(fadeimages, 305, 200, 0, 2200, 0, "R")
              </script></td>
        </tr>
        </table>
     
       <p>&nbsp;</p>
     
       <table >



<tr>
<td colspan=2 align=center><FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#006699 size=3><b><u>Enter Ur FeedBack</b></font></td></tr>
<tr ><td height=5></td></tr>
<tr><td valign=top>
<form name=frm method=post action="addfeedback.jsp">

<table valign=top>

<tr  ><td >
Name:</td><td><INPUT size="20" name="name1" maxlength="10"></td></tr>
<tr ><td height=5></td></tr>
<tr ><td >
Email:</td><td><INPUT size="25" name="email1" maxlength="50" onblur="checkemail()"></td></tr>
</td></table>
<td><table>
<tr><td>
FeedBack:</td><td><textarea name="feedback" rows=5 cols=28 maxlength="150"></textarea></td></tr>
<td align=right><Input type="submit" value="Submit"></td>
</form></table></td>

</td></tr></table>

</td>
<td width="238">
 <table valign=top width="241" height="1" >
<tr><td><br></td></tr>
<tr>
<form method="post" action="login.jsp">
<tr ><td width="101" height="19" align=center>
Login ID: </td><td width="130" height="19" ><INPUT type="text" size="20" name="loginid"></input></td></tr>
<tr ><td width="101" height="19" align=center>Password:</td><td width="130" height="19" ><INPUT type="password" size="20" name="password"></td></tr>
<tr><td width="231" height="19" colspan=2><FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=red size=2>UserName & Password 
  donot match </font></td></tr>

<tr><td  width="101" ></td>
  <td width="130" align=center><input type="submit"  value="  Sign-In  "></td></tr>
</form>
<tr><td height="15" width="123"></td></tr>
</table>


<br><br><br><br>
<table >

<tr><td bgcolor="0077c0" align="center">

<FONT  face="Verdana, Arial, Helvetica, sans-serif" color="#FFE0A2" size=3><B>NOTIFICATIONS</td></tr>
<tr><td height=30></td></tr>

<tr><td width="198" height="194" align="left" valign="top"><marquee LOOP="infinite" behavior="scroll" 
                                    direction="up"  
                                    height="133px"
                                    width="200px"
                                    scrollamount=2
                                    scrolldelay=65
                                    style="text-align: center ; padding: 4px; "
                                    truespeed onmouseover=this.stop() onmouseout=this.start()>
<%
int i=1;
while(rs.next())
{%>
 <table>    
<tr><td height="20" width="200">
	<font face="Verdana" color="#800000" size=2><ul><li> <%=rs.getString(4)%></font></ul></li>
</td></tr>

 </table>         
<%i++;if(i>5)
         {break;}}%>



</marquee>	

	 </font></td></tr>
	<tr>
<td valign="top" height="100%">
	<table cellpadding="0" cellspacing="0" border="0" height="100%">
		<tr><td height="20"></td></tr>
		<tr>
			<form action="search.jsp" >
			<td width="170" height="86" background="bgserch.gif" style="padding-top:45px;padding-left:15px;">
			<table cellpadding="0" cellspacing="0" border="0">
				<tr>
					<td><input type="text" style="width:130;height:20" name="Search"></td>
					<td><input type="image" src="go.gif" border="0" hspace="7"></td>
				</tr>
			</table>
			</td></form></tr>
	 
	 
	 
	 
	 
	 
	 </td></tr></table>
	 </table>
	 </table>
<table width="784" cellpadding=0 cellspacing=0 >
 <tr><td class=fo >


<table cellpadding=0 cellspacing=0 width="826" >
  <tr><td width="48"><IMG height=36 src="img/m33.gif" width=42 align=left ></td>
    <td class=fo width="737">All Rights Reserved. </td>
    <td align=right width="220" class=fo><IMG height=36 src="img/m35.gif" width=214 ></td></tr>
 </table></td></tr>
</table>


<UL class=udm id=udm>
  <LI id=naac>&nbsp;<A href=""></A><UL>

    <LI><A href="naacprof.html">NAAC's Profile</A> </LI>
    <LI><A href="whyaccr.html">Why Accreditation</A></LI>
    <LI><A href="accrproc.html">Process of Accreditation</A></LI>
    <LI><A href="criteria.html">Criteria for Assessment</A></LI>
    <LI><A href="grade.html">Grading System</A> </LI>
    <LI><A href="applyproc.html">How to Apply</A> </LI>
  </UL></LI>
 <LI id=colleges>&nbsp;<A href=""></A><UL>
    <LI><A href="applyaccr.html">Apply for Accreditation</A></LI>
    <LI><A href="accrcoll.jsp">Accredited Colleges</A></LI></UL>

  </LI> 



<LI id=jkc>&nbsp;<A href=""></A><UL>
    <LI><A href="abtjkc.jsp">About JKC</A></LI>
    <LI><A href="stureg.jsp?v=0">Student Registration</A></LI>
      <LI><A href="jkccolleges.jsp">JKC Colleges</A></LI> 
		<LI><A href="jkcreglistmain.jsp">JKC Selected Students</A></LI>
		<LI><A href="notify.jsp">Notifications</A></LI>
     <LI><A href="cceviewstu.jsp">Selected Students</A></LI>
	 <LI><A href="ccecomp.jsp ">Companies </A></LI></UL>
  </LI><LI id=abtus>&nbsp;<A href=""></A><UL>
    <LI><A href="sriram.jsp">Sriram.U</A></LI>
    <LI><A href="jagadeesh.jsp">Jagadeesh Kumar.P</A></LI>
        <LI><A href="naveen.jsp">Naveen Kumar.B</A></LI>
     <LI><A href="yamini.jsp">Yamini.K</A></LI>
	 
  </LI></UL>
<SCRIPT src="dropdown/265.htm" 
type=text/javascript></SCRIPT></td></tr></table></center>

</BODY>
</HTML>
          
<%}
catch(Exception e)
	{
	out.println(e);
	}
finally
{
	con.close();
}	
	%>   
