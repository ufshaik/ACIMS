<%@ page import="java.sql.*"%>
<%!
Connection con=null;
Statement stmt1,stmt2,stmt3;
 ResultSet rs=null,rs1=null,rs2=null;
 %>
<%
try
 {
  String colcode=request.getParameter("cc");
  Class.forName("com.mysql.jdbc.Driver");
  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/acims","root","");
  stmt1=con.createStatement();
  String s="select * from report where COLL_CODE='"+colcode+"'";
 //out.println(s);
  rs=stmt1.executeQuery(s);
  rs.next();
  
  stmt2=con.createStatement();
  String s1="select COLL_NAME from colleges where COLL_CODE='"+colcode+"'";
  //out.println(s1);
  rs1=stmt2.executeQuery(s1);
  rs1.next();
//out.println(rs1.getString(1));

  String s2="select city from CCDETAILS where COLL_CODE='"+colcode+"'";
stmt3=con.createStatement();
 //  out.println(s2);
  rs2=stmt3.executeQuery(s2);
  rs2.next();

String colname=rs1.getString(1);
//out.println(colname);

 int  v1,v2,v3,v4,v5,v6,v7,tot;
 int r1,r2,r3,r4,r5,r6,r7;
 float score;
 v1=Integer.parseInt(rs.getString(2));r1=v1*15;
  v2=Integer.parseInt(rs.getString(3));r2=v2*25;
  v3=Integer.parseInt(rs.getString(4));r3=v3*15;
   v4=Integer.parseInt(rs.getString(5));r4=v4*15;
    v5=Integer.parseInt(rs.getString(6));r5=v5*10;
	 v6=Integer.parseInt(rs.getString(7));r6=v6*10;
	  v7=Integer.parseInt(rs.getString(8));r7=v7*10;
	   tot=Integer.parseInt(rs.getString(9));
	   score=(float)tot/100;


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

    <B>College  !!!</B></td></tr>

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
                             <a class=links href="applyaccr.html">Apply For Accreditation</FONT></TD></TR>


   <TR> <TD vAlign=center align=middle colSpan=2>
   <IMG height=1 src="D2_Blueline.gif" width="98%"></TD></TR>


    <TR>
                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5
                              src="D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a class=links href="accrcoll.jsp">Accredited Colleges</FONT></TD></TR>

   
<TR><TD vAlign=center align=middle colSpan=2>
<IMG height=1 src="D2_Blueline.gif" width="98%"></TD></TR>

</font></table>
</td>

<TD vAlign=top bgcolor=white>
  <Table  border=0>
    <Tbody>
	<tr width=100%>
<Td bgcolor="#efefef" colspan=2 ><Font Color=#000000   Face=verdana Size=2>Name Of Institute : </Font></td>
	 <td colspan=2 align=center><%=colname%> </td></tr>
    <Tr width=100%> 
       
     <Td bgcolor="#efefef" colspan=2><Font Color=#000000   Face=verdana Size=2>Place&nbsp; : </Font></td>
     <td colspan=2 ><%=rs2.getString(1)%> </td></tr>
</table>  
<Table align=center border=0 >
    <Tbody>
	<Tr> 
	 <Td bgcolor="#a9c6e2" align=center ><Font Color=#000000  Face=verdana Size=2><u>Criterion</Font>
	 <Td bgcolor="#a9c6e2"><Font Color=#000000  Face=verdana Size=2><u>Criterion Score  (Ci)</Font>
	 <Td bgcolor="#a9c6e2"><Font Color=#000000  Face=verdana Size=2><u>Weightage (Wi)</Font>
	 <Td bgcolor="#a9c6e2"><Font Color=#000000  Face=verdana Size=2><u>Criterion * Weightage </Font>
	<Tr>
	 <Td bgcolor="#efefef" height="15%" width="40%"><Font Color=#000000  Face=verdana Size=2>I.Curricular Aspects</Font>
	 <td bgcolor="#efefef" align=center width="10%"><%=v1%> 
	 <td bgcolor="#efefef" align=center width="10%">15 
	 <td bgcolor="#efefef" align=center width="10%"><%=r1%> 
       
<Tr>
	 <Td bgcolor="#efefef" ><Font Color=#000000  Face=verdana Size=2>II. Teaching-learning and Evaluation </Font>
	 <td bgcolor="#efefef" align=center><%=v2%> 
	 <td bgcolor="#efefef"align=center >25 
	 <td bgcolor="#efefef" align=center><%=r2%> 

 <Tr>
	 <Td bgcolor="#efefef" ><Font Color=#000000  Face=verdana Size=2>III. Research, Consultancy and Extension</Font>
	 <td bgcolor="#efefef" align=center ><%=v3%> 
	 <td bgcolor="#efefef" align=center>15 
	 <td bgcolor="#efefef" align=center><%=r3%> 

  <Tr>
	 <Td bgcolor="#efefef" ><Font Color=#000000  Face=verdana Size=2>IV. Infrastructure and Learning Resources</Font>
	 <td bgcolor="#efefef" align=center><%=v4%>
	 <td bgcolor="#efefef" align=center>15 
	 <td bgcolor="#efefef" align=center><%=r4%> 
 <Tr>
	 <Td bgcolor="#efefef" ><Font Color=#000000 Face=verdana Size=2>V. Student Support and Progression</Font>
	 <td bgcolor="#efefef" align=center><%=v5%> 
	 <td bgcolor="#efefef" align=center>10
	 <td bgcolor="#efefef" align=center><%=r5%>

<Tr>
	 <Td bgcolor="#efefef" ><Font Color=#000000  Face=verdana Size=2>VI. Organisation and Management</Font>
	 <td bgcolor="#efefef" align=center><%=v6%>
	 <td bgcolor="#efefef" align=center>10 
	 <td bgcolor="#efefef" align=center><%=r6%> 
<Tr>
	 <Td bgcolor="#efefef" ><Font Color=#000000  Face=verdana Size=2>VII. Healthy Practices</Font>
	 <td bgcolor="#efefef" align=center><%=v7%> 
	 <td bgcolor="#efefef" align=center>10 
	 <td bgcolor="#efefef" align=center><%=r7%> 



<Tr>
	 <Td  >
	 <td bgcolor="#a9c6e2" align=center><Font Color=#000000 Face=verdana Size=2>Total</Font>
	 <td bgcolor="#a9c6e2" align=center>100
	 <td bgcolor="#a9c6e2" align=center><%=tot%> 
 
<Tr>
	 <Td  >
	 <td  >
	 <td bgcolor="#a9c6e2" >Institutional Score
	 <td bgcolor="#a9c6e2" align=center><%=score%>% 
   
</Tbody>
</Table>

  

</Tbody>
</Table>

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

</Body>
</Html>
<%}
catch(Exception e)
{}
%>
