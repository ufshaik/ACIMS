<%@ page import="java.sql.*"%>
<%@page import="com.Dbconnection.Dbconnection"%>
<%!
Connection con=null;
Statement stmt1,stmt2,stmt3,stmt4;
 ResultSet rs=null,rs1=null,rs3=null,rs4=null;
%>
<%
try
 {
	con=Dbconnection.getConnection();
  stmt1=con.createStatement();
  String s="select count(*) from colleges where status='requesting'";
 // out.println(s);
  rs=stmt1.executeQuery(s);
  rs.next();
  
  stmt2=con.createStatement();
  String s1="select count(*) from colleges where status='onprocess'";
 // out.println(s);
  rs1=stmt2.executeQuery(s1);
  rs1.next();
  

stmt3=con.createStatement();
  String s3="select Coll_name  from colleges where status='onprocess'";
  rs3=stmt3.executeQuery(s3);


  stmt4=con.createStatement();
  String s4="select Coll_code  from colleges where status='onprocess'";
  rs4=stmt4.executeQuery(s4);

  String val=request.getParameter("v");
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
<script>
var sum=0;
function clac(name1,name2,name3)
{
    var value,product;
    
    value=document.getElementById(name1.name).value;

	thisNumber = new Number(value);
	if (value != Math.floor(thisNumber))
	{
		alert("Please Enter Integer value");
		//document.getElementById(name1.name).focus();
		document.getElementById(name1.name).value="";
	}
	else if( value =="" || value==null )
    {
      
     // document.getElementById(name1.name).focus();   
	  alert(" Please Enter Value");
      document.getElementById(name1.name).value="";
    }          
	else if (value <= 0 ) 
	{
		alert(" cannot be zero/negative..Please enter a valid value");
		//document.getElementById(name1.name).focus(); 
		document.getElementById(name1.name).value="";
	}
	
	
    

    
    else
    {
     value=parseInt(value);    
     product= parseInt(document.getElementById(name2.name).value) * value;
     document.getElementById(name3.name).value=product;
	 sum=0;
	 for(i=1;i<=7;i++)
	{
		  if(document.getElementById("r"+i).value != "" )
	    sum+=parseInt(document.getElementById("r"+i).value);  

	}
	// sum=parseInt(sum)+parseInt(product);
	 frm3.r8.value=sum;
     frm3.r9.value=sum/100+  "  %";
	}
}
    
    </script>
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
                             <a style="color: black" class=links href="newrequests.jsp">New Requests(<%=rs.getString(1)%>)</FONT></TD></TR>


  

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
							 &nbsp;&nbsp;Accreditation(<%=rs1.getString(1)%>)</FONT></TD></TR>


  

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
                             <a style="color: black" class=links href="staffinfo.jsp">Staff Information</FONT></TD></TR>

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


<TD vAlign=top bgcolor=white width="628">
  <Table width="100%" >
   <br>
   <%if(val.equals("1"))
	 { %>
<center><FONT 
              face="Verdana, Arial, Helvetica, sans-serif" 
              color=green size=2><h4><b>Updated Successfully</h4></b></font></center>
<%} 
   if(val.equals("2")) {%>
 <center><FONT 
              face="Verdana, Arial, Helvetica, sans-serif" 
              color=red size=2><h4><b>User Already Exists</h4></b></font></center>
 <%}%> 
<tr>
	
	  <Form name=frm1 method="POST" action="adduser.jsp">
	   <tr >
	   <Td colspan=2 align=center ><Font Size=2 Face=Verdana Color=#336699 ><B><u>
       ADD NEW COLLEGE</u></B></Font></td></tr>
       <tr><td width=10><tr>
     <Td align=center><Font Color=#DC143C  Face=verdana Size=2>Name Of Institute : </Font></td>
	 <td >
	 <select name=inname >
	 <option name=inname>select
	 <%while(rs3.next())
	 { 
	   String colname=rs3.getString(1);
       //String code=rs1.getString(2);   	 
		 %>
	   
        <option name=inname><%=colname%>
		<%}%> </select></td></tr>
	 
    <Tr> 
       
     <Td align=center><Font Color=#DC143C  Face=verdana Size=2>Code of Institute&nbsp; : </Font></td>
     <td>
	 <select name=code >
	 <option name=code>select
<%while(rs4.next())
	 { 
	   //String colname=rs1.getString(1);
       String colcode=rs4.getString(1);   	 
		 %>
	 
        <option name=code><%=colcode%>
	<%}%> </select></td></tr>
	
	 
<Tr> 
     
     <Td align=center><Font Color=#DC143C  Face=verdana Size=2>Give Grade&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : </Font></td>
     <td>
	 <select name=grade >
<option name=grade>....
<option name=grade>A++ 
<option name=grade>A+
<option name=grade>A
<option name=grade>B++
<option name=grade>B+
<option name=grade>B
<option name=grade>C++
<option name=grade>C+

</td></tr>
	 
	 
	 
	 
	 
       
 <Tr> 
      
     <Td align=center><Font Color=#DC143C  Face=verdana Size=2>Give Login ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     : </Font></td>
	 <td><Input type=Text name=loginid Size=12></Input></td></tr>
 <Tr>
    
    <Td align=center><Font Color=#DC143C  Face=verdana Size=2>Give Password&nbsp;&nbsp;&nbsp;&nbsp; : </Font></td>
	<td><Input type=password name=passwd Size=12></Input></td></tr>

       <tr>
   <Td align=right> <Input type=Submit Value="   Add   " size=10></Form></td></tr>



                                                                                                          
</tr>
<Table  border=0 >
    <Tbody>
	<Tr> 
      <Form name=frm3 method="POST" action="report.jsp">
     <Td  Align="Center" colspan=4><Font Size=2 Face=Verdana Color=#336699 ><B><u>ADD Report for College </u></B></Font>
	 <Tr><tr><tr><tr><tr><tr><tr>
<Td bgcolor="#efefef" colspan=2><Font Color=#000000   Face=verdana Size=2>Name Of Institute : </Font></td>
	 <td><Input type=Text name=inname1 Size=40></Input></td></tr>
    <Tr> 
       
     <Td bgcolor="#efefef" colspan=2><Font Color=#000000   Face=verdana Size=2>Code of Institute&nbsp; : </Font></td>
     <td><Input type=Text name=code1 Size=12></Input></td></tr>
</table>  
 
<Table align=center border=0 >
    <Tbody>
	<Tr> 
	 <Td bgcolor="#a9c6e2" align=center ><Font Color=#000000  Face=verdana Size=2><u>Criterion</Font>
	 <Td bgcolor="#a9c6e2"><Font Color=#000000  Face=verdana Size=2><u>Criterion Score  (Ci)</Font>
	 <Td bgcolor="#a9c6e2"><Font Color=#000000  Face=verdana Size=2><u>Weightage (Wi)</Font>
	 <Td bgcolor="#a9c6e2"><Font Color=#000000  Face=verdana Size=2><u>Criterion * Weightage </Font>
	<Tr>
	 <Td bgcolor="#efefef" height="21%"><Font Color=#000000  Face=verdana Size=2>I.Curricular Aspects</Font>
	 <td bgcolor="#efefef" ><Input type=Text name=c1 Size=10 onblur=clac(c1,w1,r1)></Input>
	 <td bgcolor="#efefef" ><Input type=Text name=w1 Size=10 value=15 readonly></Input>
	 <td bgcolor="#efefef" ><Input type=Text name=r1 Size=10></Input>
       
<Tr>
	 <Td bgcolor="#efefef" ><Font Color=#000000  Face=verdana Size=2>II. Teaching-learning and Evaluation </Font>
	 <td bgcolor="#efefef" ><Input type=Text name=c2 Size=10 onblur=clac(c2,w2,r2)></Input>
	 <td bgcolor="#efefef" ><Input type=Text name=w2 Size=10 value=25 readonly></Input>
	 <td bgcolor="#efefef" ><Input type=Text name=r2 Size=10></Input>

 <Tr>
	 <Td bgcolor="#efefef" ><Font Color=#000000  Face=verdana Size=2>III. Research, Consultancy and Extension</Font>
	 <td bgcolor="#efefef" ><Input type=Text name=c3 Size=10 onblur=clac(c3,w3,r3)></Input>
	 <td bgcolor="#efefef" ><Input type=Text name=w3 Size=10 value=15 readonly></Input>
	 <td bgcolor="#efefef" ><Input type=Text name=r3 Size=10></Input>

  <Tr>
	 <Td bgcolor="#efefef" ><Font Color=#000000  Face=verdana Size=2>IV. Infrastructure and Learning Resources</Font>
	 <td bgcolor="#efefef" ><Input type=Text name=c4 Size=10 onblur=clac(c4,w4,r4)></Input>
	 <td bgcolor="#efefef" ><Input type=Text name=w4 Size=10 value=15 readonly></Input>
	 <td bgcolor="#efefef" ><Input type=Text name=r4 Size=10></Input>
  
 <Tr>
	 <Td bgcolor="#efefef" ><Font Color=#000000 Face=verdana Size=2>V. Student Support and Progression</Font>
	 <td bgcolor="#efefef" ><Input type=Text name=c5 Size=10 onblur=clac(c5,w5,r5)></Input>
	 <td bgcolor="#efefef" ><Input type=Text name=w5 Size=10 value=10 readonly></Input>
	 <td bgcolor="#efefef" ><Input type=Text name=r5 Size=10></Input>

<Tr>
	 <Td bgcolor="#efefef" ><Font Color=#000000  Face=verdana Size=2>VI. Organisation and Management</Font>
	 <td bgcolor="#efefef" ><Input type=Text name=c6 Size=10 onblur=clac(c6,w6,r6)></Input>
	 <td bgcolor="#efefef" ><Input type=Text name=w6 Size=10 value=10 readonly></Input>
	 <td bgcolor="#efefef" ><Input type=Text name=r6 Size=10></Input>
<Tr>
	 <Td bgcolor="#efefef" ><Font Color=#000000  Face=verdana Size=2>VII. Healthy Practices</Font>
	 <td bgcolor="#efefef" ><Input type=Text name=c7 Size=10 onblur=clac(c7,w7,r7)></Input>
	 <td bgcolor="#efefef" ><Input type=Text name=w7 Size=10 value=10 readonly></Input>
	 <td bgcolor="#efefef" ><Input type=Text name=r7 Size=10></Input>



<Tr>
	 <Td  >
	 <td bgcolor="#a9c6e2" ><Font Color=#000000 Face=verdana Size=2>Total</Font>
	 <td bgcolor="#a9c6e2" >100
	 <td bgcolor="#a9c6e2" ><Input type=Text name=r8 Size=10 ></Input>
 
<Tr>
	 <Td  >
	 <td  >
	 <td bgcolor="#a9c6e2" >Institutional Score
	 <td bgcolor="#a9c6e2" ><Input type=Text name=r9 Size=10 ></Input>
 
    <Tr>
   
   <Td Align=Right><Input type=Submit Value=" Submit " size=10></Input>
</Form>
</Tbody>
</Table>


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
    <LI><A href="applyaccr.jsp">Apply for Accreditation</A></LI>
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
  </LI>

<LI id=abtus>&nbsp;<A href=""></A><UL>
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
