<%@ page import="java.sql.*"%>
<%! Connection con=null;
    PreparedStatement aci,aci1,aci2,jre,at;
    ResultSet rs,jrs,rs1,rs2,rs3,rs4;
	String str,str1;
	
%>
<%
try
{
String uid=request.getParameter("uid1");
session.setAttribute("uid1",uid);

Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/acims","root","");
jre=con.prepareStatement("select count(*) from jkcdata where status=0");
        jrs=jre.executeQuery();
		jrs.next();

String a=request.getParameter("z");
String b=request.getParameter("w");



aci=con.prepareStatement("select firstname,surname,roll,college from jkcdata where company='"+a+"' and year='"+b+"'");
rs2=aci.executeQuery();



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

<Script Language="JavaScript">
function xyz()
{
  window.open("timer.jsp?v=0","exampaper","width=1024,height=768,toolbar=false,status=false,menubar=false,directories=false,resizable=false");
}

</Script>
</head>
 <body>
<table cellpadding=0 cellspacing=0 width="780" border=1  align=center  bordercolor="#2A8DCC" >
 <tr><td valign=top class=to width="780">
<table width="820" cellpadding=0 cellspacing=0 height="144">
 <tr><td width="822" height="144"><IMG id=IMG1 height=144 src="img/sri.gif" width="100%" ></td></tr>
<tr><td width="822" height="10"><IMG height=40 src="img/m021.jpg" width=326 ><A href="index.jsp" 
           ><IMG 
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

<tr><td>

<table width="820" border="1"  bordercolor="#2A8DCC">
<tr><td valign=left width="22%" class=ma colspan=2>
<table cellSpacing=0 cellPadding=0 width="100%" border=0>
<tr><td>&nbsp;</td></tr>
<tr><td vAlign=center align=middle rowSpan=2>
     <FONT face="Verdana, Arial, Helvetica, sans-serif" color="#E3BD12" size=3>

    <B>JKC !!!</B></td></tr>

    <tr><td>&nbsp;</td></tr>
    

     <TR> <TD vAlign=center align=middle colSpan=2>
    <IMG height=1 src="D2_Blueline.gif" width="98%"></TD></TR>


   <TR>
                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5
                              src="D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a class=links href="abtjkc.jsp">About JKC</FONT></TD></TR>


   <TR> <TD vAlign=center align=middle colSpan=2>
   <IMG height=1 src="D2_Blueline.gif" width="98%"></TD></TR>


    <TR>
                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5
                              src="D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a class=links href="stureg.jsp?v=0">Student Registration</FONT></TD></TR>

   
<TR><TD vAlign=center align=middle colSpan=2>
<IMG height=1 src="D2_Blueline.gif" width="98%"></TD></TR>

<TR>
                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5
                              src="D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a class=links href="jkccolleges.jsp">JKC Colleges</FONT></TD></TR>
<TR><TD vAlign=center align=middle colSpan=2>
<IMG height=1 src="D2_Blueline.gif" width="98%"></TD></TR>



<TR>
                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5
                              src="D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a class=links href="notify.jsp">Notifications</FONT></TD></TR>

   
<TR><TD vAlign=center align=middle colSpan=2>
<IMG height=1 src="D2_Blueline.gif" width="98%"></TD></TR>

<TR>
                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5
                              src="D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a class=links href="cceviewstu.jsp">Selected Students</FONT></TD></TR>

   
<TR><TD vAlign=center align=middle colSpan=2>
<IMG height=1 src="D2_Blueline.gif" width="98%"></TD></TR>

<TR>
                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5
                              src="D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a class=links href="ccecomp.jsp">Companies</FONT></TD></TR>

   
<TR><TD vAlign=center align=middle colSpan=2>
<IMG height=1 src="D2_Blueline.gif" width="98%"></TD></TR>
</font></table>
</td>
<td width="600" height=400 valign=top>
<table width="600"  valign=top>
<tr><td height="30"><center><font color="#0077c0"><h3>RESULT</h3></font>
 <form action="deleteresult.jsp" method="post">
<table border=0 bordercolor=white valign=top>
<tr><td bgcolor="A9C6E2" height=20 align=center>Name of the Student</td><td bgcolor="A9C6E2" height=20 align=center width=20%>Roll</td><td bgcolor="A9C6E2" height=20 align=center>College</td></tr><tr>
<%  int i=1;

		  while(rs2.next())
			{
			  String d=rs2.getString(1);
			         d+=" "+rs2.getString(2);
			    %>
			  <tr><td bgcolor="#EFEFEF" height=20 align=center><%=d%></td><td bgcolor="#EFEFEF" height=20 align=center><%=rs2.getString(3)%></td><td bgcolor="#EFEFEF" height=20 align=center><%=rs2.getString(4)%></td>
</tr>
<%
       
		}
	%>



</form>


<tr><td height="20"></td></tr>
</table></form></center></td></tr>
</table>
</td></tr>
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




<%
	}
catch(Exception e)
{
out.println(e);
}%>

