<%
try
{
  String vv=request.getParameter("v");
 String uid=(String)session.getAttribute("uid1");
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
function len()
{
    var j=document.getElementById("fn").value;
	for(var i=0;i<j.length;i++)
	{
	   if(!((j.charAt(i)>='A'&&j.charAt(i)<='Z')||(j.charAt(i)>='a'&&j.charAt(i)<='z')||(j.charAt(i)==' ')))
	    {
		 alert("only characters are allowed");
		 document.getElementById("fn").focus();
		 break;
	    }
	}
	if(j.length>=15)
   {
	  
	         alert("The size of the first name should be less than 15:");
              document.getElementById("fn").focus();
	  }
	 
}

function len1()
{
    var j=document.getElementById("ln").value;
	for(var i=0;i<j.length;i++)
	{
	   if(!((j.charAt(i)>='A'&&j.charAt(i)<='Z')||(j.charAt(i)>='a'&&j.charAt(i)<='z')||(j.charAt(i)==' ')))
	    {
		 alert("only characters are allowed");
		 document.getElementById("ln").focus();
		 break;
	    }
	}
	if(j.length>=15)
   {
	  
	         alert("The size of the last name should be less than 15:");
              document.getElementById("ln").focus();
	  }
	 
}

function len2()
{
    var j=document.getElementById("id").value;
	if(j.length>=12)
   {
	  
	         alert("The size of the registration-id should be less than 12:");
               document.getElementById("id").focus();     
	  }

}

function len3()
{
    var j=document.getElementById("degree").value;
	for(var i=0;i<j.length;i++)
	{
	   if(!((j.charAt(i)>='A'&&j.charAt(i)<='Z')||(j.charAt(i)>='a'&&j.charAt(i)<='z')||(j.charAt(i)==' ')
		   ||(j.charAt(i)=='.')))
	    {
		 alert("only characters are allowed");
		 document.getElementById("degree").focus();
		 break;
	    }
	}
	if(j.length>=15)
   {
	  
	         alert("The size of the first name should be less than 15:");
              document.getElementById("degree").focus();
	  }
	 
}
function len4()
{
    var j=document.getElementById("subject").value;
	for(var i=0;i<j.length;i++)
	{
	   if(!((j.charAt(i)>='A'&&j.charAt(i)<='Z')||(j.charAt(i)>='a'&&j.charAt(i)<='z')||(j.charAt(i)==' ')))
	    {
		 alert("only characters are allowed");
		 document.getElementById("subject").focus();
		 break;
	    }
	}
	if(j.length>=15)
   {
	  
	         alert("The size of the first name should be less than 15:");
              document.getElementById("subject").focus();
	  }
	 
}
function len10()
{
    var j=document.getElementById("contactno").value;
	if(j.length>=15)
   {
	  
	         alert("The size of the contact number should be less than 15:");
     
	   document.getElementById("contactno").focus();
	   }
}
function len11()
{
    var j=document.getElementById("emailid").value;
	if(j.length>=25)
   {
	  
	         alert("The size of the emailid should be less than 25:");
     
	   document.getElementById("emailid").focus();
	   }
}
function len9()
{
    var j=document.getElementById("address").value;
	if(j.length>=40)
   {
	  
	         alert("The size of the address should be less than 40:");
     
	   document.getElementById("address").focus();
}
}

function len12()
{
    var j=document.getElementById("sal").value;
	var c=0;
	if(j.length>=15)
   {
	  
	         alert("The size of the Total salary should be less than 15:");
     
	  }
	  for(i=0;i<j.length;i++)
	{
       if(j.charAt(i)>='0'&&j.charAt(i)<='9')
        {}
	   else
		{
		   c=1; 
		}
	}
	if(c==1)
	{
		alert("characters are not allowed");
		 document.getElementById("sal").focus();
	}
}
function len13()
{
    var j=document.getElementById("classsal").value;
	var c=0;
	if(j.length>=15)
   {
	  
	         alert("The size of the sal of the day should be less than 15:");
     
	  }
	  for(i=0;i<j.length;i++)
	{
       if(j.charAt(i)>='0'&&j.charAt(i)<='9')
        {}
	   else
		{
		   c=1; 
		}
	}
	if(c==1)
	{
		alert("characters are not allowed");
		 document.getElementById("classsal").focus();
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




if (validate_required(id,"Registration number field must be filled out!")==false)
  {id.focus();return false}
if (validate_required(fn,"First name field must be filled out!")==false)
  {fn.focus();return false}
if (validate_required(ln,"Surname field must be filled out!")==false)
  {ln.focus();return false}
if (validate_required(degree,"Degree field must be filled out!")==false)
  {degree.focus();return false}
if (validate_required(subject,"Subject field must be filled out!")==false)
  {subject.focus();return false}
if (validate_required(sal,"Total salary field must be filled out!")==false)
  {sal.focus();return false}
if (validate_required(classsal,"Salary per day must be filled out!")==false)
  {classsal.focus();return false}
if (validate_required(address,"Address field must be filled out!")==false)
  {address.focus();return false}
if (validate_required(emailid,"emai-id field must be filled out!")==false)
  {emailid.focus();return false}
if (checkemail()==false)
  {emailid.focus();return false}
}}

</script>
</head>


<BODY bgcolor="#A9B1B9">




<table  valign="top" cellpadding=0 cellspacing=0 width="800"  align=center  bordercolor="#2A8DCC" >
 <tr><td valign=top class=to width="800" bgcolor="0F4F8D">
<table width="800" cellpadding=0 cellspacing=0 height="144" >
 <tr><td width="800" height="144"><IMG id=IMG1 height=144 src="img/sri1.gif" width="100%" ></td></tr>
<tr><td width="800" height="10"><IMG height=40 src="img/m021.gif" width=326> </td></tr></table></tr>

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
<td  width=600>

<table width=100% height=18 align=top>
<tr><td height=15></td></tr>
<tr>
<td bgcolor="0077c0" width="33%" align=center><a style="color: white" class=link1 href="staffdetails.jsp?v=0">Add Staff Details</a></td>
<td bgcolor="0077c0" width="33%" align=center><a style="color: white" class=link1  href="updatestaff.jsp?v=0">Update Staff Details</a></td>
<td bgcolor="0077c0" width="33%" align=center><a style="color: white" class=link1  href="viewstaff1.jsp?v=0">View Staff Details</a></td>

<tr><td height=50></td></tr></table>


<table align=center>
<tr><td height="10"></td></tr>
<tr><td align="center"><%if(vv.equals("1")){%><font color="green" size="4px">Record updated</font><%}
         if(vv.equals("2")){%><font color="red" size="4px">Already the registration id-exists</font><%}%></td></tr>

<tr><td height="10"></td></tr>
<tr><td><form onsubmit="return validate_form(this)" action="staffinsert.jsp" method="post">

<table border=0  align=center height="578">
<caption><h4><u><b><font color=#336699>ADD NEW STAFF </font></b></u></h4></caption>
<tr><td height="25">FirstName:</td><td height="25"><input type=text size=25 name="fn" onBlur="len()"></td><td height="25">LastName:</td><td height="25"><input type=text size=25 name="ln" onBlur="len1()"></td></tr><tr><td height="10"></td></tr>
<tr><td height="25">Registration ID:</td><td height="25"><input type=text  name="id" onBlur="len2()"></td></tr><tr><td height="10"></td></tr>
<tr><td height="25">Gender</td><td><input type="radio" name="gender" value="male">Male&nbsp;&nbsp;<input type="radio" name="gender" value="female">Female</td></tr><tr><td height="10"></td></tr>


<tr><td height="25" width="94">D.O.B:</td><td height="25" width="165"><select value=day name="day" onBlur="datevalidate()">
<%int i=1;
while(i<=31){
%>
<option value=<%=i%>><%=i%></option><%i++;}%></select>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select value=month name="mon" onBlur="datevalidate()">
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
</select></td><td>
<select value=year name="year" >
<%int j=1970;
while(j<=2020){
%>
<option value=<%=j%>><%=j%></option><%j++;}%></select></td></tr><tr><td height="10"></td></tr>


<tr><td height="25">Degree</td><td height="25"><input type="text" name="degree" onBlur="len3()"></td><td height="25">subject:</td><td height="25"><input type="text" name="subject" onBlur="len4()"></td></tr><tr><td height="10"></td></tr>
<tr><td height="25">Contact no:</td><td height="25"><input type=text  name="contactno" onBlur="len10()"></td>
<td height="25">Email-id</td><td height="25"><input type=text  name="emailid" ></td></tr><tr><td height="10"></td></tr>
<tr><td height="59">&nbsp;ADDRESS:</TD><TD height="59"><textarea rows=5 cols=15 name="address" onBlur="len9()"></textarea></td></tr><tr><td height="10" ></td></tr>
<tr><td height="25">Proffesion</td><td height="25"><select name="prof">
<option value="Assistant">Assistant professor</option>
<option value="professor">professor</option>
<option value="Nonteaching-staff">Nonteaching-staff</option>
<option value="adminstaff">Admin staff</option>
</select></td></tr><tr><td height="10"></td></tr>

<tr><td height="25">Total Salary</td><td height="25"><input type=text  name="sal" onBlur="len12()"></td><td height="25">salary per day</td><td height="25"><input type=text  name="classsal" onBlur="len13()"></td></tr>
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
<%}catch(Exception e)
{}
%>
