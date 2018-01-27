<%@ page import="java.sql.*"%>
<%@page import="com.Dbconnection.Dbconnection"%>
<%! Connection con=null;
    PreparedStatement pst,pst1,pst2;
	Statement st;
    ResultSet rs,ry,rz;
   String pin;
%>

<%
try
{
	String uid=(String)session.getAttribute("uid1");
   if(uid!=null)
  {}
else
{
      response.sendRedirect("index.jsp");
  }
	String vv=request.getParameter("v");
	con=Dbconnection.getConnection();
pin=request.getParameter("t5");
String ta=uid+"t";

pst2=con.prepareStatement("select reg_id from "+ta+"");
rz=pst2.executeQuery();
String ja;
int flag=0;
while(rz.next())
	{
           ja=rz.getString(1);  
		  
       	   if(pin.equals(ja))
		{
flag=1;
pst=con.prepareStatement("select * from "+ta+" where REG_ID=?");
pst.setString(1,pin);
pst1=con.prepareStatement("select dob from "+ta+" where REG_ID=?");
pst1.setString(1,pin);

ry=pst1.executeQuery();
rs=pst.executeQuery();
rs.next();
ry.next();

%>

<%session.setAttribute("regid",pin);%>
<%session.setAttribute("uid1",uid);%>


<html>
<head>
<title></title>
<link rel=stylesheet href=st.css type=text/css>
<LINK 
media=screen,projection,print 
href="dropdown/main.css" type=text/css 
rel=stylesheet>
<script language="JavaScript">

function checkemail()
{
var str=document.getElementById("emailid").value;

var filter=/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i
if (!(filter.test(str)))
 {
  alert("Please input a valid email address!")
  return false;
 } 
  
}

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

if (validate_required(emailid,"email-id field must be filled out!")==false)
  {emailid.focus();return false}
if (checkemail()==false)
  {emailid.focus();return false}
}}
</script>
<BODY bgcolor="#A9B1B9">




<table  valign="top" cellpadding=0 cellspacing=0 width="800"  align=center  bordercolor="#2A8DCC" >
 <tr><td valign=top class=to width="800" bgcolor="0F4F8D">
<table width="800" cellpadding=0 cellspacing=0 height="144" >
 <tr><td width="800" height="144"><IMG id=IMG1 height=144 src="img/sri1.gif" width="100%" ></td></tr>
<tr><td width="800" height="10"><IMG height=40 src="img/m021.gif" width=326 ></td></tr></table></tr>

<tr><td><table width="800" border="1"  bordercolor="#2A8DCC" bgcolor=white>
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
<td width=600 >

<table width=100% height=18 align=top>
<tr><td height=15></td></tr>
<tr>
<td bgcolor="0077c0" width="200" align=center><a style="color: white" class=link1 href="staffdetails.jsp?v=0">Add staffDetails</a></td>
<td bgcolor="0077c0" width="200" align=center><a style="color: white" class=link1  href="updatestaff.jsp?v=0">Update staffDetails</a></td>
<td bgcolor="0077c0" width="200" align=center><a style="color: white" class=link1  href="viewstaff1.jsp?v=0">View staffDetails</a></td>

<tr><td height=50></td></tr></table>




<table align=center> 
<tr><td height="10"></td></tr>
<tr><td align="center"><%if(vv.equals("1")){%><font color="green" size="4px">Record updated</font><%}
         if(vv.equals("2")){%><font color="red" size="4px">Already the registration id-exists</font><%}%></td></tr>

<tr><td height="10"></td></tr>
<tr><td><form onsubmit="return validate_form(this)" action="ustaff.jsp" method="post">

<table border=0  align=center height="578">
<caption><h3><u><b><font color=#336699>Update Staff Details</font></b> </u></h3></caption>
<tr><td height="25">FirstName:</td><td height="25"><input type=text size=25 name="fn" value=<%=rs.getString(1)%>></td><td height="25">LastName:</td><td height="25"><input type=text size=25 name="ln" value=<%=rs.getString(2)%>></td></tr><tr><td height="10"></td></tr>
<tr><td height="25">Registration ID:</td><td height="25"><input type=text  name="id" value=<%=rs.getString(3)%>></td></tr><tr><td height="10"></td></tr>
<tr><td height="25">Gender</td><td><input type="text" name="gender" value=<%=rs.getString(12)%>></td></tr>


<tr><td height="10"></td></tr>

<tr><td height="25">D.O.B:</td><td height="25">
<%String r=ry.getString(1);
  String s=r.substring(0,2);%>
<select value=day name="day" onBlur="datevalidate()">
<option value=<%=s%>><%=s%></option>
<%int x1=1;
while(x1<=31){
%>
<option value=<%=x1%>><%=x1%></option><%x1++;}%></select>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%s=r.substring(3,6);%><select value="month" name="mon" onBlur="datevalidate()">
<option value=<%=s%>><%=s%></option>
<option value="jan">jan</option>
<option value="feb">feb</option>
<option value="mar">mar</option>
<option value="apr">apr</option>
<option value="may">may</option>
<option value="jun">jun</option>
<option value="jul">jul</option>
<option value="aug">aug</option>
<option value="sep">sep</option>
<option value="oct">oct</option>
<option value="nov">nov</option>
<option value="dec">dec</option>
</select></td><td><%s=r.substring(7,11);%>
<select value=year name="year">
<option value=<%=s%>><%=s%></option>
<%int y1=1970;
while(y1<=2020){
%>
<option value=<%=y1%>><%=y1%></option><%y1++;}%></select>
</td></tr>



<tr><td height="10"></td></tr>




<tr><td height="25">Degree</td><td height="25"><input type="text" name="degree" value=<%=rs.getString(4)%>></td><td height="25">subject:</td><td height="25"><input type="text" name="subject" value=<%=rs.getString(13)%>></td></tr><tr><td height="10"></td></tr>
<tr><td height="25">Contact no:</td><td height="25"><input type=text  name="contactno" value=<%=rs.getString(5)%>></td>
<td height="25">Email-id</td><td height="25"><input type=text  name="emailid" value=<%=rs.getString(6)%>></td></tr><tr><td height="10"></td></tr>
<tr><td height="59">&nbsp;ADDRESS:</TD><TD height="59"><textarea rows=5 cols=15 name="address" ><%=rs.getString(7)%></textarea></td></tr><tr><td height="10"></td></tr>
<tr><td height="25">Proffesion</td><td height="25"><select name="prof">
<%String x=rs.getString(8);%>
<option value=<%=x%>><%=x%></option>
<option value="Assistant">Assistant professor</option>
<option value="professor">professor</option>
<option value="Nonteaching-staff">Nonteaching-staff</option>
<option value="adminstaff">Admin staff</option>
</select></td></tr><tr><td height="10"></td></tr>

<tr><td height="25">Total Salary</td><td height="25"><input type=text  name="sal" value=<%=rs.getString(9)%>></td><td height="25">pay for class</td><td height="25"><input type=text  name="classsal" value=<%=rs.getString(10)%>></td></tr>
<tr><td height="20"></td></tr><tr><td height="10"></td></tr>
<tr><td height="27"><input type=submit name=s1 value="Submit"></td>
<td height="27"><input type=reset name=r1 value="Reset"></td></tr>
<tr><td height="10"></td></tr>

</table></td></tr>
</table>
</td></tr>
</table></td></tr>



<tr><td><table width="800" cellpadding=0 cellspacing=0>
 <tr><td class=fo >


<table cellpadding=0 cellspacing=0 width="800" >
  <tr><td width="48"><IMG height=36 src="img/m33.gif" width=42 align=left ></td>
    <td class=fo width="800">All Rights Reserved. </td>
    <td align=right width="220" class=fo><IMG height=36 src="img/m35.gif" width=214 ></td></tr>
 </table></td></tr>
</table>
</td></tr>
</table>

</BODY>
</HTML>
<%
	    break;
		}
	}
	if(flag==0)
	{
		response.sendRedirect("updatestu.jsp?v=1");
	}
}catch(Exception e)
{}
finally
{
   con.close();
}
%>
