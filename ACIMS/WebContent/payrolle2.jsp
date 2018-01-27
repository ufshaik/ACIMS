<%@ page import="java.sql.*"%>
<%@page import="com.Dbconnection.Dbconnection"%>
<%! Connection con=null;
    PreparedStatement pst,pst1,pst2;
    ResultSet rs,ry,rz;
%>
<%
try
{
	int i=0,j=0;
	String pr=request.getParameter("prof");
	String m=request.getParameter("mon");
	String vv=request.getParameter("v");
	String uid=(String)session.getAttribute("uid1");
	String ta=uid+"t";
                  if(uid!=null)
  {}
else
{
      response.sendRedirect("index.jsp");
  }
                  con=Dbconnection.getConnection();
pst1=con.prepareStatement("select proff from "+ta+" group by proff");
ry=pst1.executeQuery();

while(ry.next())
	{
	   if(pr.equals(ry.getString(1)))
		   i=1;
	}
	if(i!=1)
	{
		 response.sendRedirect("payroll.jsp?&&v=1");
	}


pst=con.prepareStatement("select reg_id from "+ta+" where proff=?");
pst.setString(1,pr);

rs=pst.executeQuery();
%>
<%
  session.setAttribute("pro",pr);
  session.setAttribute("m1",m);
  session.setAttribute("uid1",uid);%>



<html>
<head>
<title></title>
<link rel=stylesheet href=st.css type=text/css>
<LINK 
media=screen,projection,print 
href="dropdown/main.css" type=text/css 
rel=stylesheet>
 <script language="javaScript">
function validate_required(field,alerttxt)
{
with(field)
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




if (validate_required(work,"Total working hours field must be filled out!")==false)
  {work.focus();return false}
if (validate_required(present,"Total present field must be filled out!")==false)
  {present.focus();return false}
}}
</script>
</head>



<BODY bgcolor="#A9B1B9">




<table  valign="top" cellpadding=0 cellspacing=0 width="800"  align=center  bordercolor="#2A8DCC" >
 <tr><td valign=top class=to width="800" bgcolor="0F4F8D">
<table width="800" cellpadding=0 cellspacing=0 height="144" >
 <tr><td width="800" height="144"><IMG id=IMG1 height=144 src="img/sri1.gif" width="100%" ></td></tr>
<tr><td width="800" height="10"><IMG height=40 src="img/m021.gif" width=326 ></td></tr></table></tr>

<tr><td><table width="800" border="1"  bordercolor="#2A8DCC">
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
<td width=600>
 <table width="600"><tr></tr><tr><td>&nbsp;&nbsp;<h5>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="payroll.jsp?v=0">Enter marks</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="viewpayroll.jsp?v=0">View marks</h5></a>

<tr><td>

<table  width="600" height="500" >
<tr><td align=center><%if(vv.equals("1"))
	     {%><font color="green">Record Updated</font><%}%>
	  </td></tr>
<tr><td height="10"></td></tr><tr><td height="30"><center><h2><font color=#336699>payroll system</font></h2>


<form onsubmit="return validate_form(this)" action="payroll2.jsp" methoed="post">
<table>
<tr><td height="10"></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Registraion-id</td><td><select name="id">
<%while(rs.next())
	{
	  String x=rs.getString(1);
	%>
<option value=<%=x%>><%=x%></option><%}%></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total working days</td><td><input type=text size=15 name="work"></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total days present</td><td><input type=text size=15 name="present"></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Month</td><td><input type=text size=15 value=<%=m%> name="mon" readonly></td></tr>


<tr></tr><tr></tr>
<tr><td height="10"></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type=SUBMIT size=5 name=s1 value="ok"></td>
<td height="27"><input type=reset name=r1 value="Reset"></td></tr><tr><td height="24"></td>
<tr><td height="20"></td></tr>

	  <tr><td height="200"></td></tr>
</table></form></center></td></tr>
</table>
</td></tr>
</table></td></tr>



<tr><td><table width="800" cellpadding=0 cellspacing=0>
 <tr><td class=fo >


<table cellpadding=0 cellspacing=0 width="800" >
  <tr><td width="48"><IMG height=36 src="img/m33.gif" width=42 align=left ></td>
    <td class=fo width="800">All Rights Reserved.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
    <td align=right width="220" class=fo><IMG height=36 src="img/m35.gif" width=214 ></td></tr>
 </table></td></tr>
</table>
</td></tr>
</table>

</BODY>
</HTML>
<%
}
catch(Exception e)
{
out.println(e);
}
%>
