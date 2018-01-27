<%@ page import="java.sql.*"%>
<%@page import="com.Dbconnection.Dbconnection"%>
<%!
Connection con=null;
Statement stmt1,stmt2,stmt3,stmt4,stmt5,stmt6,stmt7;
 ResultSet rs=null,rs1=null,rs2=null,rs3=null,rs5=null,rs6=null;
%>
<%
try
 {
  String colcode=request.getParameter("cc");

  con=Dbconnection.getConnection();
  
  stmt1=con.createStatement();
  String s="select * from colleges where COLL_CODE='"+colcode+"'";
  //out.println(s);
  rs=stmt1.executeQuery(s);
  rs.next();
  stmt2=con.createStatement();
  String s1="select * from ccdetails where COLL_CODE='"+colcode+"'";
  rs1=stmt2.executeQuery(s1);
  rs1.next();
 stmt3=con.createStatement();
  String s2="select * from colldetails where COLL_CODE='"+colcode+"'";
  rs2=stmt3.executeQuery(s2);
  rs2.next();
 String email=rs1.getString(8);
  String collegecode=rs.getString(2);
 stmt4=con.createStatement();
  String s3="select DATE_EST from colleges where COLL_CODE='"+colcode+"'";
  rs3=stmt4.executeQuery(s3);
  rs3.next();

 stmt5=con.createStatement();
  String s5="select count(*) from colleges where status='requesting'";
  rs5=stmt5.executeQuery(s5);
  rs5.next();
 stmt6=con.createStatement();
  String s6="select count(*) from colleges where status='onprocess'";
 // out.println(s);
  rs6=stmt6.executeQuery(s6);
  rs6.next();

  stmt7=con.createStatement();
  String s7="update  colleges set STATUS='onprocess' where COLL_CODE='"+collegecode+"' and STATUS='requesting'";
  stmt7.executeUpdate(s7);
  //rs7.next();

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
<style>
.links
{
    FONT-WEIGHT: bold;
    FONT-SIZE:10px;
    COLOR: #ffffff;
    FONT-FAMILY: "Verdana, Arial, Helvetica, sans-serif";
    TEXT-DECORATION: none
}
</style>

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

    <B>Welcome CCE  !!!</B></td></tr>

    <tr><td>&nbsp;</td></tr>
    <TR><TD vAlign=center align=middle ><IMG height=1 src="D2_Blueline.gif" width="98%"></TD></TR>
    <TR>
                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5
                              src="D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a style="color: black" class=links href="admin.jsp?v=0">Home </FONT></TD></TR>


     <TR> <TD vAlign=center align=middle colSpan=2>
    <IMG height=1 src="D2_Blueline.gif" width="98%"></TD></TR>


   <TR>
                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5
                              src="D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a style="color: black" class=links href="jkcadmin.jsp?v=0">Add JKC Admin</FONT></TD></TR>
	 <TR> <TD vAlign=center align=middle colSpan=2>
    <IMG height=1 src="D2_Blueline.gif" width="98%"></TD></TR>


   <TR>
                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5
                              src="D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a style="color: black" class=links href="newrequests.jsp">New Requests(<%=rs5.getString(1)%>)</FONT></TD></TR>

<TR> <TD vAlign=center align=middle colSpan=2>
    <IMG height=1 src="D2_Blueline.gif" width="98%"></TD></TR>


   <TR>
                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5
                              src="D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a style="color: black" class=links href="waitingcol.jsp">Waiting For 
							 &nbsp;Accreditation(<%=rs6.getString(1)%>)</FONT></TD></TR>


  

   <TR> <TD vAlign=center align=middle colSpan=2>
   <IMG height=1 src="D2_Blueline.gif" width="98%"></TD></TR>
  

   

    <TR>
                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5
                              src="D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a style="color: black" class=links href="accrcolladmin.jsp">Accredited Colleges</FONT></TD></TR>


<TR> <TD vAlign=center align=middle colSpan=2>
   <IMG height=1 src="D2_Blueline.gif" width="98%"></TD></TR>
    <TR>
                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5
                              src="D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a style="color: black" class=links href="changegrade.jsp?v=0">Change Grade</FONT></TD></TR>

    <TR>
                            <TD vAlign=center align=middle colSpan=2><IMG 
                              height=1 
                              src="D2_Blueline.gif" 
                              width="98%"></TD></TR>


     <TR>
                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5
                              src="D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a style="color: black" class=links href="studentinfo.jsp">Student Information</FONT></TD></TR>

<TR>
                            <TD vAlign=center align=middle colSpan=2><IMG 
                              height=1 
                              src="D2_Blueline.gif" 
                              width="98%"></TD></TR>


<TR>
                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5
                              src="D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a style="color: black" class=links href="ccescholarship.jsp">Scholarships</FONT></TD></TR>

<TR> <TD vAlign=center align=middle colSpan=2>
<IMG height=1  src="D2_Blueline.gif" width="98%"></TD></TR>

<TR>
                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5
                              src="D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a style="color: black" class=links href="cceselstu.jsp">Selected Students</FONT></TD></TR>

<TR><TD vAlign=center align=middle colSpan=2>
<IMG height=1 src="D2_Blueline.gif" width="98%"></TD></TR>
<TR>
                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5
                              src="D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a style="color: black" class=links href="viewfeedback.jsp">View Feedback</FONT></TD></TR>
<TR><TD vAlign=center align=middle colSpan=2>
<IMG height=1 src="D2_Blueline.gif" width="98%"></TD></TR>
<TR>
                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5
                              src="D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a style="color: black" class=links href="ccechangepwsd.jsp?v=0">Change Password</FONT></TD></TR>
<TR><TD vAlign=center align=middle colSpan=2>
<IMG height=1 src="D2_Blueline.gif" width="98%"></TD></TR>
<TR>
                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5
                              src="D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a style="color: black" class=links href="index.jsp">Logout</FONT></TD></TR>
							 <TR><TD vAlign=center align=middle colSpan=2>
<IMG height=1 src="D2_Blueline.gif" width="98%"></TD></TR>
</font></table>
</td>
<TD vAlign=top bgcolor=white>

<table width="650" border="1"  bordercolor="#2A8DCC">
 <TBODY>
  <TR vAlign=top>
    <TD>1.</TD>
    <TD>Name of Institution</TD>
    <TD><%=rs.getString(1)%></TD></TR>
<TR vAlign=top>
    <TD>2.</TD>
    <TD>CODE of Institution</TD>
    <TD><%=colcode%></TD></TR>

 <TR vAlign=top>
    <TD>3.</TD>
    <TD>Contact Details</TD>
    <TD>
      <TABLE>
        <TBODY>
        <TR vAlign=top>
          <TD>Address:</TD>
          <TD><%=rs1.getString(2)%></TD></TR>
        <TR>
          <TD>City:</TD>
          <TD><%=rs1.getString(3)%></TD></TR>
        <TR>
          <TD>Pin:</TD>
          <TD><%=rs1.getString(4)%></TD></TR>
        <TR>
          <TD>State/UT:</TD>
		  <TD><%=rs1.getString(5)%></TD></TR>
<TR>
          <TD>Tel:</TD>
          <TD><%=rs1.getString(6)%></TD></TR>
<TR>
          <TD>Fax:</TD>
          <TD><%=rs1.getString(7)%></TD></TR>
 <TR>
          <TD>Email:</TD>
          <TD><%=email%></TD></TR>
 <TR>
          <TD>Website:</TD>
          <TD><%=rs1.getString(9)%></TD></TR></TBODY></TABLE></TD></TR>
  <TR vAlign=top>
    <TD>4.</TD>
    <TD>Date of Establishment</TD>
    <TD><%=rs3.getString(1)%></TD></TR>
  <TR vAlign=top>
    <TD>5.</TD>
    <TD>University to which Affiliated</TD>
	<TD><%=rs.getString(4)%></TD></TR>

<TR vAlign=top>
    <TD>6.</TD>
    <TD>Name of the Head</TD>
	<TD><%=rs.getString(5)%></TD>
        <TR vAlign=top>
    <TD>6.</TD>
    <TD>Designation:</td>
	<TD><%=rs.getString(6)%></TD></TR>
<TR vAlign=top>
    <TD>7.</TD>
    <TD>Faculties</TD>
	<TD><%=rs2.getString(2)%></TD></TR>
 <TR vAlign=top>
    <TD>8.</TD>
	<TD>Teaching Staff:</TD>
    <TD><%=rs2.getString(3)%></TD></TR>
 <TR vAlign=top>
    <TD>9.</TD>
          <TD>Administrative &amp; Supportive Staff:</TD>
          <TD><%=rs2.getString(4)%></TD></TR>
 <TR vAlign=top>
    <TD>10.</TD>
          <TD>Technical &amp; Professional Staff:</TD>
          <TD><%=rs2.getString(5)%></TD></TR>
 <TR vAlign=top>
    <TD>11.</TD>
          <TD>Students:</TD>
          <TD><%=rs2.getString(6)%></TD></TR>
  <TR vAlign=top>
    <TD>12.</TD>
    <TD>Programmes offered</td>
    <TD><%=rs2.getString(7)%></TD></TR>

</TBODY></TABLE>
</Tbody>
</Table>




<table width="780" cellpadding=0 cellspacing=0>
 <tr><td class=fo >
<table cellpadding=0 cellspacing=0 width="821" >
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
       <LI><A href="jkcreglistmain.jsp">JKC Selected Students</A></LI>
		<LI><A href="notify.jsp">Notifications</A></LI>
     <LI><A href="cceviewstu.jsp">Selected Students</A></LI>
	 <LI><A href="ccecomp.jsp ">Companies </A></LI></UL>
  </LI> <LI id=abtus>&nbsp;<A href=""></A><UL>
    <LI><A href="sriram.jsp">Sriram.U</A></LI>
    <LI><A href="jagadeesh.jsp">Jagadeesh Kumar.P</A></LI>
        <LI><A href="naveen.jsp">Naveen Kumar.B</A></LI>
     <LI><A href="yamini.jsp">Yamini.K</A></LI>
	 
  </LI></UL>
<SCRIPT src="dropdown/265.htm" 
type=text/javascript></SCRIPT></td></tr></table></center>

</Body>
</Html>
<%}
catch(Exception e)
{}
finally
{
   con.close();
}
%>

