<%String uid=(String)session.getAttribute("uid1");
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
<LINK href="letter/style.css" type=text/css 
rel=stylesheet>

<%@ page import="java.sql.*"%>
<%@page import="com.Dbconnection.Dbconnection"%>

<%!
Connection con=null;
Statement stmt1,stmt2,stmt3,stmt4,stmt5,stmt6,stmt7,col;
 ResultSet rs=null,rs1=null,rs2=null,rs3=null,rs5=null,rs6=null,rs10=null;
%>
<SCRIPT language=JavaScript>
function chk()
{
	document.tedata.faculties.value = "";
	for(i=0; i <= 8; i++)
	{
		if ( document.tedata.faculty[i].checked )
		{
			document.tedata.faculties.value = document.tedata.faculties.value + document.tedata.faculty[i].value + ", ";
		}
	}
	document.tedata.faculties.value = document.tedata.faculties.value.substr(0,document.tedata.faculties.value.length - 2);
	return true;
}
</script></head>

<%try
 {
   
	con=Dbconnection.getConnection();
	
  col=con.createStatement();
  String cc="select COLL_CODE from colleges where LOGINID='"+uid+"'";
  //out.println(s);
  rs10=col.executeQuery(cc);
  rs10.next();
  String colcode=rs10.getString(1);
  //out.println(colcode);
session.setAttribute("ccode",colcode);
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
  
  
  String val=request.getParameter("v");
  %>
<BODY >




<table  valign="top" cellpadding=0 cellspacing=0 width="773"  align=center border=1 bordercolor="#2A8DCC" >
 <tr><td valign=top class=to width="820" bgcolor="0F4F8D">
<table width="800" cellpadding=0 cellspacing=0 height="144" >
 <tr><td width="800" height="144"><IMG id=IMG1 height=144 src="img/sri1.gif" width="100%" ></td></tr>
<tr><td width="800" height="10"><IMG height=40 src="img/m021.gif" width=326/></td></tr></table></tr>

<tr><td width="800"><table width="800" border="1"  bordercolor="#0077c0">
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

<TD vAlign=top bgcolor=white>

  <Table align=center border=0>
    <Tbody>
    
<TR >
<td>
<TABLE width="620" border=0>
  <TBODY>
  <TR><TD align=center><%if(val.equals("1"))
	 { %>
<FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=green size=2><h4><b>Updated Successfully</h4></b></font></center>
<%}%> </td></tr>
  <TR vAlign=top >
    <TD bgcolor="efefef" align=center><FONT Face=Verdana, Arial, Helvetica, sans-serif;
 color=maroon size=4>Institution 
      Profile</FONT> </TD>
    </TR></TBODY></TABLE>
<BR>
<FORM name=tedata  action="updateprof.jsp"
method=post><INPUT type=hidden value=add name=mode></TD></TR> 
<TABLE width="620">
  <TBODY>
  <TR vAlign=top>
    <TD >1.</TD>
    <TD >Name of Institution</TD>
    <TD><%=rs.getString(1)%></TD></TR>
<TR vAlign=top>
    <TD >2.</TD>
    <TD >CODE of Institution</TD>
    <TD><%=colcode%></TD></TR>

  <TR vAlign=top>
    <TD >3.</TD>
    <TD >Contact Details</TD>
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
          <TD><INPUT maxLength=50 size=50 name=tel value=<%=rs1.getString(6)%>></TD></TR>
        <TR>
          <TD>Fax:</TD>
          <TD><INPUT maxLength=50 size=50 name=fax value=<%=rs1.getString(7)%>></TD></TR>
        <TR>
          <TD>Email:</TD>
          <TD><INPUT maxLength=100 size=50 name=email value=<%=email%>></TD></TR>
        <TR>
          <TD>Website:</TD>
          <TD><INPUT maxLength=100 size=50 
  name=website value=<%=rs1.getString(9)%>></TD></TR></TBODY></TABLE></TD></TR>
  <TR vAlign=top>
    <TD >4.</TD>
    <TD >Date of Establishment</TD>
    <TD><%=rs3.getString(1)%></TD></TR>
  <TR vAlign=top>
    <TD >5.</TD>
    <TD >University to which Affiliated<BR>(In case of college)</TD>
    <TD><%=rs.getString(4)%> </TD></TR>
  <TR vAlign=top>
    <TD >6.</TD>
    <TD >Name of the Head</TD>
    <TD> <INPUT maxLength=100 name=pname value=<%=rs.getString(5)%>> 
      &nbsp;Designation:<SELECT name=pdesig>
	  <%String des=rs.getString(6);%>
	  <option  selected><%=des%></option>
	  <OPTION value=Principal 
        >Principal</OPTION> <OPTION value=ViceChancellor>Vice Chancellor</OPTION> 
        <OPTION value=Director>Director</OPTION> <OPTION 
        value=Dean>Dean</OPTION> <OPTION value=Other>Other</OPTION></SELECT> 
</TD></TR>
   <TR vAlign=top>
    <TD >7.</TD>
    <%String n=rs.getString(9);%><TD >Is this College has JKC</TD>
        <TD><select name="jkc">
		<option value=<%=n%>><%=n%></option>
		<option value="yes">yes</option>
		<option value="no">no</option>
		</select>
		 </TD></TR>
  <TR vAlign=top>
    <TD >8.</TD>
    <TD >Faculties</TD>
        <TD><%=rs2.getString(2)%> </TD></TR>
  <TR vAlign=top>
    <TD >9.</TD>
    <TD >Total Number of (Numbers only)</TD>
    <TD>
      <TABLE>
        <TBODY>
        <TR>
          <TD>Teaching Staff:</TD>
          <TD><INPUT maxLength=5 size=5 name=teachstaff value=<%=rs2.getString(3)%>></TD></TR>
        <TR>
          <TD>Administrative &amp; Supportive Staff:</TD>
          <TD><INPUT maxLength=5 size=5 name=admstaff value=<%=rs2.getString(4)%>></TD></TR>
        <TR>
          <TD>Technical &amp; Professional Staff:</TD>
          <TD><INPUT maxLength=5 size=5 name=techstaff value=<%=rs2.getString(5)%>></TD></TR>
        <TR>
          <TD>Students:</TD>
          <TD><INPUT maxLength=5 size=5 
  name=students value=<%=rs2.getString(6)%>></TD></TR></TBODY></TABLE></TD></TR>
  <TR vAlign=top>
    <TD >10.</TD>
    <TD >Programmes offered<BR>[Eg.: B.A., M.A., B.Sc. if any new added]</TD>
    <TD><TEXTAREA name=progoffered rows=3 cols=50 ><%=rs2.getString(7)%></TEXTAREA> 
</TD></TR></TBODY></TABLE><br><center><INPUT type=submit value=SUBMIT name=save> </center>
</FORM></CENTER>


</table>
</td></tr>
</table></td></tr>


<tr><td height="1" width="820"><table width="800" cellpadding=0 cellspacing=0>
 <tr><td class=fo >


<table cellpadding=0 cellspacing=0 width="800" >
  <tr><td width="48"><IMG height=36 src="img/m33.gif" width=42 align=left ></td>
    <td class=fo width="800">All Rights Reserved. </td>
    <td align=right width="220" class=fo><IMG height=36 src="img/m35.gif" width=214 ></td></tr>
 </table></td></tr>
</table></td></tr>
</table>

</BODY>
</HTML>
<%}catch(Exception e)
{ out.println(e);}
finally
{
con.close();
}%>
