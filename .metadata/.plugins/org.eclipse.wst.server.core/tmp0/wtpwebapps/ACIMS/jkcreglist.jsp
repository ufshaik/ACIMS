
	<%@page import="com.Dbconnection.Dbconnection"%>
<%@ page import="java.sql.*"%>
<%! Connection con=null;
    PreparedStatement pst,jre,pst1;

    ResultSet rs,jrs,rs1;
    String pin;
%>
<%
try
{
	
	 String vv=request.getParameter("v");

	 con=Dbconnection.getConnection();
jre=con.prepareStatement("select count(*) from jkcdata where status=0");
        jrs=jre.executeQuery();
		jrs.next();
		
pst1=con.prepareStatement("select * from jkcdata where status=1");
rs1=pst1.executeQuery();

		


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

<script>
	function validate_required(field,alerttxt)
{
with (field)
{
if (value==null||value=="")
  {alert(alerttxt);return false}
else {return true}
}
}

function validate_form(thisform)
{
with (thisform)
{
if (validate_required(id,"Enter the Notification Id")==false)
  {id.focus();return false}

if (validate_required(date,"Enter the Date of posting")==false)
  {date.focus();return false}

 if (validate_required(last,"Enter the last date ")==false)
  {last.focus();return false}
 if (validate_required(notify,"Enter the notification")==false)
  {notify.focus();return false}

}
	}

function numberfield(fld)
	{
	with(fld)
		{
		 var s=value;
		 var n=s.length;
			for(i=0;i<n;i++)
			{
				var c=s.charAt(i);
				
				if(!(c>='0' && c<='9'))
							
					alert("Please enter the id number that was displayed before");
				
				
			}
		}
	}

</script>
</head>
<BODY >

<table  valign="top" cellpadding=0 cellspacing=0 width="800"  align=center  bordercolor="#2A8DCC" >
 <tr><td valign=top class=to width="800" bgcolor="0F4F8D">
<table width="800" cellpadding=0 cellspacing=0 height="144" >
 <tr><td width="800" height="144"><IMG id=IMG1 height=144 src="img/sri1.gif" width="100%" ></td></tr>
<tr><td width="800" height="10"><IMG height=40 src="img/m021.gif" width=326 ></td></tr></table></tr>

 <tr><td><table width="800" border="1" bordercolor="#0077c0" height="500" bgcolor=white>
<tr><td valign=left width="200" class=ma><h5></h5>

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
                             <A class=links href="jkcupdateprofile.jsp?v=0">Update profile</A></FONT></TD></TR>

<TR> <TD vAlign=center align=middle colSpan=2>
<IMG height=1 src="img/D2_Blueline.gif" width="98%"></TD></TR>


<TR>
                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5
                              src="img/D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a class=links href="jkcchangepassword.jsp?v=0">Changepassword</FONT></TD></TR>

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
                             <a class=links href="sturequest.jsp?v=0">Student request <font color="orange">       (<%=jrs.getInt(1)%>)</font></FONT></TD></TR>

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
                             <a class=links href="notifications.jsp?v=0">Notifications</FONT></TD></TR>

<TR> <TD vAlign=center align=middle colSpan=2>
<IMG height=1 src="img/D2_Blueline.gif" width="98%"></TD></TR>

<TR>
                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5
                              src="img/D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a class=links href="jkccomp.jsp?v=0">Companies list</FONT></TD></TR>

<TR><TD vAlign=center align=middle colSpan=2>
<IMG height=1 src="img/D2_Blueline.gif" width="98%"></TD></TR>
<TR>
                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5
                              src="img/D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a class=links href="jkcstu.jsp?v=0">Selected students</FONT></TD></TR>
<TR> <TD vAlign=center align=middle colSpan=2>
<IMG height=1 src="img/D2_Blueline.gif" width="98%"></TD></TR>
<TR>
                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5
                              src="img/D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a class=links href="jkccolleges.jsp?v=0">JKC Colleges</FONT></TD></TR>
<TR> <TD vAlign=center align=middle colSpan=2>
<IMG height=1 src="img/D2_Blueline.gif" width="98%"></TD></TR>

<TR>
                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5
                              src="img/D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a class=links href="createexam.jsp?v=0">Create Exam paper</FONT></TD></TR>
<TR> <TD vAlign=center align=middle colSpan=2>
<IMG height=1 src="img/D2_Blueline.gif" width="98%"></TD></TR>

<TR>
                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5
                              src="img/D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a class=links href="jkcschedule.jsp?v=0">Exam Schedule</FONT></TD></TR>
<TR> <TD vAlign=center align=middle colSpan=2>
<IMG height=1 src="img/D2_Blueline.gif" width="98%"></TD></TR>

<TR>
                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5
                              src="img/D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a class=links href="jkcresults.jsp?v=0">Results</FONT></TD></TR>
<TR> <TD vAlign=center align=middle colSpan=2>
<IMG height=1 src="img/D2_Blueline.gif" width="98%"></TD></TR>
<TR>
                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5
                              src="img/D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a class=links href="jkcreglist.jsp?v=0">JKC Selected Students</FONT></TD></TR>
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

<td width="600" valign=top>

<table width=100% height=18 align=top>
<tr><td height=15></td></tr>
<tr>

<tr><td height=50></td></tr></table>



<form action="deletereglist.jsp" method="post">
<table align=center width=500>
<caption><font color="#0077c0" size=4px>Registered Students</font></caption>
<tr><td  bgcolor="#EFEFEF"></td><td bgcolor="A9C6E2" height=20 align=center>Name</td><td bgcolor="A9C6E2" height=20 align=center>Roll</td><td bgcolor="A9C6E2" width=50% height=20 align=center>College</td><td bgcolor="A9C6E2" height=20 align=center>code</td><td bgcolor="A9C6E2" height=20 align=center>Marks</td></tr>
<%int i=1;
	while(rs1.next())
	{
	String s="ch"+i;
		 String ss="chh"+i;
	String n=rs1.getString(1);
            n+=" "+rs1.getString(2);
	String r=rs1.getString(3);
			     
	 %>
        <tr><td bgcolor="#EFEFEF" height=20 align=center width="5%"><input type="checkbox" name=<%=s%>></td><td bgcolor="#EFEFEF" height=20 align=center width="5%"><%=n%></td><td bgcolor="#EFEFEF" height=20 align=center width="5%"><input type=hidden name=<%=ss%> value=<%=r%>><%=r%>
		</td><td bgcolor="#EFEFEF" height=20 align=center width="15%"><%=rs1.getString(4)%></td><td bgcolor="#EFEFEF" height=20 align=center width="15%"><%=rs1.getString(5)%></td><td bgcolor="#EFEFEF" height=20 align=center><%=rs1.getString(6)%></td></tr>
		<%i++;}%>
		<tr><td height=30></td></tr>
		<tr><td><input type=submit value=delete></td></tr>
</table>
</form>


</table>
</td></tr>



<tr><td height="1"><table width="800" cellpadding=0 cellspacing=0>
 <tr><td class=fo >


<table cellpadding=0 cellspacing=0 width="800" >
  <tr><td width="48"><IMG height=36 src="m33.gif" width=42 align=left ></td>
    <td class=fo width="800">All Rights Reserved. </td>
    <td align=right width="220" class=fo><IMG height=36 src="m35.gif" width=214 ></td></tr>
 </table></td></tr>
</table>
</td></tr>
</table>

</center>
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
	}%>

