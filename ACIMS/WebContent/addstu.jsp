
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
<head><title></title>


<link rel=stylesheet href=st.css type=text/css>
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
	if(j.length>=30)
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
	if(j.length>=30)
   {
	  
	         alert("The size of the Last name should be less than 15:");
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
    var j=document.getElementById("fathername").value;
	for(var i=0;i<j.length;i++)
	{
	   if(!((j.charAt(i)>='A'&&j.charAt(i)<='Z')||(j.charAt(i)>='a'&&j.charAt(i)<='z')||(j.charAt(i)==' ')))
	    {
		 alert("only characters are allowed");
		 document.getElementById("fathername").focus();
		 break;
	    }
	}
	if(j.length>=30)
   {
	  
	         alert("The size of the father-name should be less than 20:");
              document.getElementById("fathername").focus();    
	  }

}
function len4()
{
    var j=document.getElementById("fatheroccupation").value;
	if(j.length>=30)
   {
	  
	         alert("The size of the father-occupation should be less than 10:");
              document.getElementById("fatheroccupation").focus();     
	  }

}





function len9()
{
    var j=document.getElementById("address").value;
	if(j.length>=80)
   {
	  
	         alert("The size of the address should be less than 40:");
     
	   document.getElementById("address").focus();
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
	if(j.length>=50)
   {
	  
	         alert("The size of the emailid should be less than 25:");
     
	   document.getElementById("emailid").focus();
	   }
}
function len12()
{
    var j=document.getElementById("regfee").value;
	var c=0;
	if(j.length>=15)
   {
	  
	         alert("The size of the Registration fees should be less than 15:");
     
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
		 document.getElementById("regfee").focus();
	}
}
function len13()
{
    var j=document.getElementById("accountno").value;
	if(j.length>=30)
   {
	  
	         alert("The size of the account no should be less than 10:");
              document.getElementById("accountno").focus();
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
if (validate_required(emailid,"email-id field must be filled out!")==false)
  {emailid.focus();return false}
if (checkemail()==false)
  {emailid.focus();return false}
}}

function len15()
	{
	var x1="";
	var j=document.getElementById("ssc").value;
	
	if(j.length>'6')
		{
		   alert("the value should be in the form  _ _ _._ _");
		   document.getElementById("ssc").focus();
		}
    else
	    {
		    for(var i=0;i<j.length;i++)
			{ 
				if((j.charAt(i)>='0'&&j.charAt(i)<='9')||(j.charAt(i)=='.'))
				 {}
				else
				 {
					 alert("characters are not allowed");
					 document.getElementById("ssc").focus();
					 break;
				 }
				if(j.charAt(i)=='.')
			    {
					break;
				}
				else
				{
                x1=x1+j.charAt(i);
				}
			}
			
			if(x1>100)
			{
				alert(" The percentage of marks should not exceed 100");
		        document.getElementById("ssc").focus();
			}
		}
	}
	
	function len16()
	{
	var x1="";
	var j=document.getElementById("inter").value;

	if(j.length>'6')
		{
		   alert("the value should be in the form  _ _ _._ _");
		   document.getElementById("inter").focus();
		}
    else
	    {
		    for(var i=0;i<j.length;i++)
             { 
				if((j.charAt(i)>='0'&&j.charAt(i)<='9')||(j.charAt(i)=='.'))
				 {}
				else
				 {
					 alert("characters are not allowed");
					 document.getElementById("inter").focus();
					 break;
				 }
				if(j.charAt(i)=='.')
			    {
					break;
				}
				else
				{
                x1=x1+j.charAt(i);
				}
			}
			
			if(x1>100)
			{
				alert(" The percentage of marks should not exceed 100");
		        document.getElementById("inter").focus();
			}
		}
	}



function datevalidate()
{
 var a=parseInt(document.getElementById("day").value);
 var c=parseInt(document.getElementById("year").value);
 var b=document.getElementById("mon").value;
 if(c%4==0)
 {
   if(b=="feb")
    {
      if(a>29)
		{
      alert("invalid date");
	  document.getElementById("day").focus();
     }}
    else if(b=="apr"||b=="jun"||b=="sep"||b=="nov")
    {
      if(a>30)
		{
		  alert("invalid date");
	  document.getElementById("day").focus();
		}
    }
 }     
 else
 {
   if(b=="feb")
    {
      if(a>28)
		{
		  alert("invalid date");
	  document.getElementById("day").focus();
		}
     }
    else if(b=="apr"||b=="jun"||b=="sep"||b=="nov")
    {
      if(a>30)
		{
		  alert("invalid date");
     document.getElementById("day").focus();
		}
    }
    
 }
}



function datevalidate1()
{
 var a=parseInt(document.getElementById("day1").value);
 var c=parseInt(document.getElementById("year1").value);
 var b=document.getElementById("mon1").value;
 if(c%4==0)
 {
   if(b=="feb")
    {
      if(a>29)
		{
      alert("invalid date");
	  document.getElementById("day1").focus();
		}
     }
    else if(b=="apr"||b=="jun"||b=="sep"||b=="nov")
    {
      if(a>30)
		{
      alert("invalid date");
	  document.getElementById("day1").focus();
		}
     
    }
 }     
 else
 {
   if(b=="feb")
    {
      if(a>28)
		{
		  alert("invalid date");
	  document.getElementById("day1").focus();
		}
     }
    else if(b=="apr"||b=="jun"||b=="sep"||b=="nov")
    {
      if(a>30)
		{
		  alert("invalid date");
     document.getElementById("day1").focus();
		}
    }
    
 }
}

</script>
</head>

<BODY bgcolor="#A9B1B9">



<center>
<table  valign="top" cellpadding=0 cellspacing=0 width="800"  align=center  bordercolor="#2A8DCC" >
 <tr><td valign=top class=to width="800" bgcolor="0F4F8D">
<table width="800" cellpadding=0 cellspacing=0 height="144" >
 <tr><td width="800" height="144"><IMG id=IMG1 height=144 src="img/sri1.gif" width="100%" ></td></tr>
<tr><td width="800" height="10"><IMG height=40 src="img/m021.gif" width=326> </td></tr></table></tr>

  <table width="800" border="1"  bordercolor="#2A8DCC" bgcolor=white>
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
<td width="600">


<table width=100% height=18 align=top>
<tr><td height=15></td></tr>
<tr>
<td bgcolor="0077c0" width="33%" align=center><a style="color: white" class=link1 href="addstu.jsp?v=0">Add Newdetails</a></td>
<td bgcolor="0077c0" width="33%" align=center><a style="color: white" class=link1  href="updatestu.jsp?v=0">UpdateDetails</a></td>
<td bgcolor="0077c0" width="33%" align=center><a style="color: white" class=link1  href="viewstu.jsp?v=0">ViewDetails</a></td>

<tr><td height=50></td></tr></table>

<table>
<tr><td height="10"></td></tr>
<tr><td align="center">
<%if(vv.equals("1")){%>
<font color="red" size="4px">Record updated</font>
        <%}if(vv.equals("2")){%>
        <font color="red" size="4px">The Register-id already exists</font>
        <%}%>
		</td></tr>

<tr><td width="600">

<form onsubmit="return validate_form(this)" action="lbrces.jsp?v=0" method="post">
<center><table border=0  align=center height="600" width="521" >
<caption> <h2><strong><u><font color="#336699">STUDENT DETAILS FORM</font></u></strong></h2></caption>

<tr><td height="25" width="94">First Name:</td><td height="25" width="165"><input type=text size=25 name="fn" onBlur="len()"></td>
  <td height="25" width="111">Last Name:</td><td height="25" width="133"><input type=text size=25 name="ln" onBlur="len1()"></td></tr><tr>
  <td height="10" width="94"></td></tr>
<tr><td height="25" width="94">Father Name:</td><td height="25" width="165"><input type=text size=25 name="fathername" onBlur="len3()"></td>
  <td height="25" width="111">Father Occupation:</td>
  <td height="25" width="133"><input type=text size=25 name="fatheroccupation" onBlur="len4()"></td></tr><tr>
  <td height="10" width="94"></td></tr>
<tr><td height="25" width="94">Regestraion-id:</td><td height="25" width="165"><input type=text size=15 name="id" onBlur="len2()"></td></tr><tr>
<td height="10" width="94"></td></tr>
<tr><td height="25" width="94">Date of joining:</td><td height="25" width="165"><select value=day name="day1" onBlur="datevalidate1()">

<%int x=1;
while(x<=31){
%>

<option value=<%=x%>><%=x%></option><%x++;}%></select>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select value="month" name="mon1" onBlur="datevalidate1()">
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
<select value=year name="year1">
<%int y=1970;
while(y<=2020){
%>
<option value=<%=y%>><%=y%></option><%y++;}%></select>

</td></tr>
<tr>
<td height="10" width="94"></td></tr>
<tr><td height="25" width="94">Gender</td><td height="25" width="165"><input type=radio size=25 name="gender" value="male">Male&nbsp;&nbsp;&nbsp;&nbsp;<input type=radio size=25 name="gender" value="female">Female</td></tr><tr>
<td height="10" width="94"></td></tr>
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
<option value=<%=j%>><%=j%></option><%j++;}%></select></td></tr>




<tr><td height="10" width="94"></td></tr>
 <tr><td height="25" width="94">Branch:</td><td height="25" width="165"><select value=branch name="branch">
 <option value=eee>EEE</option>
 <option value=cse>CSE</option>
 <option value=mech>MECH</option>
 <option value=ece>ECE</option>
 <option value=eie>EIE</option>
 <option value=csit>CSIT</option>
 <option value=civil>CIVIL</option>
 <option value=biotech>BIOTECH</option>
 <option value=ice>ICE</option>
 <option value=metallurgy>METALLURGY</option>
</select>
 </td>
   <td height="25" width="111">Category</td><td height="25" width="133"><select value=category name="category"> 
    <option value=General>General</option>
 <option value=sc>SC</option>
 <option value=bc>BC</option>
 <option value=others>others</option>
 </select>
 </td></tr><tr>
  <td height="10" width="94"></td></tr>
 <tr><td height="25" width="94">course</td><td height="25" width="165"><select value="course" name="course">
  <option value=1>1st year</option>
 <option value=2-1>2-1</option>
 <option value=2-2>2-2</option>
 <option value=3-1>3-1</option>
 <option value=3-2>3-2</option>
 <option value=4-1>4-1</option>
 <option value=4-2>4-2</option>
 </select>
 
 </td></tr><tr>
<td height="10" width="94"></td></tr>
<tr><td height="25" width="94">S.S.C(%):</td><td height="25" width="165"><input type=text size=10 name="ssc"          onBlur="len15()"></td>
  <td width="111">Inter(%):</td><td width="133"><input type=text size=10 name="inter" onBlur="len16()"></td></tr><tr>
  <td height="10" width="94"></td></tr>
<tr><td height="25" width="94">District</td><td height="25" width="165"><select value="district" name="district">

 


<option value=Adilabad>Adilabad</option> 
<option value=Anantapur>Anantapur</option>
<option value=Chittoor>Chittoor</option>
<option value=Cuddapah>Kadapa(Cuddapah)</option>
<option value=EastGodavari>East Godavari </option>
<option value=Guntur>Guntur</option>
<option value=Hyderabad>Hyderabad</option>
<option value=Karimnagar>Karimnagar</option>
<option value=Khammam>Khammam</option>
<option value=Krishna >Krishna</option>
<option value=Kurnool>Kurnool</option>
<option value=Mahbubnagar>Mahbubnagar</option>
<option value=Medak> Medak</option>
<option value=Nalgonda>Nalgonda</option>
<option value=Nellore>Nellore</option>
<option value=Nizamabad>Nizamabad</option>
<option value=Prakasam>Prakasam</option>
<option value=Ranga Reddy>Ranga Reddy</option>
<option value=Srikakulam>Srikakulam</option>
<option value=Visakhapatnam>Visakhapatnam</option>
<option value=Vizianagaram>Vizianagaram</option>
<option value=Warangal>Warangal</option>
<option value=WestGodavari>West Godavari</option>
</select>








</td></tr>
<tr>
  <td height="10" width="94"></td></tr>
<tr><td height="25" width="94">ADDRESS:</td><td width="165"><textarea rows=5 cols=15 name="address" onBlur="len9()"></textarea></tr><tr>
<td height="10" width="94"></td></tr>

<tr><td height="25" width="94">Contact NO.:</td><td height="25" width="165"><input type=text size=15 name="contactno" onBlur="len10()"></td>
  <td height="25" width="111">Email-id:</td><td height="25" width="133"><input type=text size=15 name="emailid" ></td></tr><tr>
  <td height="10" width="94"></td></tr>
<tr><td height="25" width="94">Regestration fee:</td>
  <td height="25" width="165"><input type=text size=15 name="regfee" onBlur="len12()"></td>
  <td height="25" width="111">Account number</td><td height="25" width="133"><input type=text size=15 name="accountno" onBlur="len13()"></td></tr><tr>
  <td height="10" width="94"></td></tr>
<tr><td height="20" width="94"></td></tr>
<tr><td height="27" width="94"><INPUT type="submit" name="Button" value=submit  ></td>
<td height="27" width="165"><input type=reset name=r1 value="Reset"></td></tr><tr>
  <td height="30" width="94"></td></tr>

<tr><td height="50" width="94"></td></tr>
</table>
</center></form></td></tr>
</table>
</td></tr>
</table></td></tr>




<tr><td width="821"><table width="780" cellpadding=0 cellspacing=0>
 <tr><td class=fo >


<table cellpadding=0 cellspacing=0 width="800" >
  <tr><td width="48"><IMG height=36 src="img/m33.gif" width=42 align=left ></td>
    <td class=fo width="600">All Rights Reserved.&nbsp;&nbsp;</td>
    <td align=right width="200" class=fo><IMG height=36 src="img/m35.gif" width=214 ></td></tr>
 </table></td></tr>
</table>
</td></tr>
</table>
</center>
</BODY>
</HTML>
<%}catch(Exception e)
{}

%>
