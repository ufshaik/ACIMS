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
String ta=uid+"s";
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
pst1=con.prepareStatement("select date_of_birth,date_of_joining from "+ta+" where REG_ID=?");
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
<script language="javaScript">


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
if(value==null||value=="")
  {alert(alerttxt);return false}
else {return true}
}
}


function validate_form(thisform)
{
with (thisform)
{





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

<table  valign="top" cellpadding=0 cellspacing=0 width="800"  align=center  bordercolor="#2A8DCC" >
 <tr><td valign=top class=to width="800" bgcolor="0F4F8D">
<table width="800" cellpadding=0 cellspacing=0 height="144" >
 <tr><td width="800" height="144"><IMG id=IMG1 height=144 src="img/sri1.gif" width="100%" ></td></tr>
<tr><td width="800" height="10"><IMG height=40 src="img/m021.gif" width=326> </td></tr></table></tr>

<tr><td><table width="800" border="1"  bordercolor="#2A8DCC" bgcolor=white>
<tr><td valign=left width="200" class=ma colspan=2><h5></h5>
<br><br>


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
<td height=600>
<table width=100% height=18 align=top>
<tr><td height=15></td></tr>
<tr>
<td bgcolor="0077c0" width="33%" align=center><a style="color: white" class=link1 href="addstu.jsp?v=0">Add Newdetails</a></td>
<td bgcolor="0077c0" width="33%" align=center><a style="color: white" class=link1  href="updatestu.jsp?v=0">UpdateDetails</a></td>
<td bgcolor="0077c0" width="33%" align=center><a style="color: white" class=link1  href="viewstu.jsp?v=0">ViewDetails</a></td>

<tr><td height=50></td></tr></table>
<table align=center>
<tr><td align=center>
<%if(vv.equals("1")){%>
<font color=green size=4px>Updated Successfully</font>
<%}%></td></tr>
<tr><td height="10"></td></tr>
<tr><td><form onsubmit="return validate_form(this)" action="ulbrces.jsp" method="post">
<center><table border=0 height="578">
<caption> <h2><strong><u>STUDENT DETAILS FORM</u></strong></h2></caption>
<tr><td height="25">First Name:</td><td height="25"><input type=text size=25 name="fn" value=<%=rs.getString(2)%>   onBlur="len()"></td>
<td height="25">Last Name:</td><td height="25"><input type=text size=25 name="ln" value=<%=rs.getString(3)%>  onBlur="len1()"></td></tr>
<tr><td height="25">Father Name:</td><td height="25"><input type=text size=25 name="fathername" value=<%=rs.getString(4)%> onBlur="len3()"></td><td height="25">Father Occupation:</td><td height="25"><input type=text size=25 name="fatheroccupation" value=<%=rs.getString(5)%>></td></tr>
<tr><td height="25">Regestraion-id:</td><td height="25"><input type=text size=15 name="rid" value=<%=rs.getString(1)%> readonly ></td></tr>
<tr><td height="25">Date of joining:</td><td>
<%String p=ry.getString(2);
  String q=p.substring(0,2);%>
<select value=day name="day1" onBlur="datevalidate1()">
<option value=<%=q%>><%=q%></option>
<%int x=1;
while(x<=31){
%>
<option value=<%=x%>><%=x%></option><%x++;}%></select>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%q=p.substring(3,6);%><select value="month" name="mon1" onBlur="datevalidate1()">
<option value=<%=q%>><%=q%></option>
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
</select></td><td><%q=p.substring(7,11);%>
<select value=year name="year1">
<option value=<%=q%>><%=q%></option>
<%int y=1970;
while(y<=2020){
%>
<option value=<%=y%>><%=y%></option><%y++;}%></select>
</td></tr>
<tr><td height="25">Gender</td><td height="25"><input type=text size=25 name="gender" value=<%=rs.getString(16)%>></td></tr> 
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


<tr><td height="25">Branch:</td><td height="25">
<%String z=rs.getString(7);%>
<select value=branch name="branch">
<option value=<%=z%>><%=z%></option>
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
</td><td height="25">Category</td><td height="25">
<%z=rs.getString(6);%>
<select value=category name="category"> 
<option value=<%=z%>><%=z%></option>
    <option value=general>General</option>
 <option value=sc>SC</option>
 <option value=bc>BC</option>
 <option value=others>others</option>
 </select></td></tr>
<tr><td height="25">course</td><td height="25">
<%z=rs.getString(20);%><select value="course" name="course">
<option value=<%=z%>><%=z%></option>
  <option value=1>1st year</option>
 <option value=2-1>2-1</option>
 <option value=2-2>2-2</option>
 <option value=3-1>3-1</option>
 <option value=3-2>3-2</option>
 <option value=4-1>4-1</option>
 <option value=4-2>4-2</option>
 </select></td></tr>
<tr><td height="25">S.S.C(%):</td><td height="25"><input type=text size=10 name="ssc" value=<%=rs.getString(13)%>  onBlur="len15()"></td><td>Inter(%):</td><td><input type=text size=10 name="inter" value=<%=rs.getString(14)%>  onBlur="len16()"></td></tr>
<tr><td height="25">District</td><td height="25">
<%z=rs.getString(8);%>
<select value="district" name="district">

 

<option value=<%=z%>><%=z%></option>
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
<tr><td height="25">ADDRESS:</td><td><textarea rows=5 cols=15 name="address" onBlur="len9()"><%=rs.getString(21)%></textarea></tr>
<tr><td height="25">Contact NO.:</td><td height="25"><input type=text size=15 name="contactno" value=<%=rs.getString(9)%> onBlur="len10()"></td><td height="25">Email-id:</td><td height="25"><input type=text size=15 name="emailid" value=<%=rs.getString(10)%> ></td></tr>
<tr><td height="25">Regestration fee:</td><td height="25"><input type=text size=15 name="regfee" value=<%=rs.getString(12)%> onBlur="len12()"></td><td height="25">Account number</td><td height="25"><input type=text size=15 name="accountno" value=<%=rs.getString(11)%> onBlur="len11()"></td></tr>
<tr><td height="27"><input type=submit name=s1 value="Submit"></td>
<td height="27"><input type=reset name=r1 value="Reset"></td></tr>

</table></center></form></td></tr>
</table>
</td></tr>
</table></td></tr>



<tr><td><table width="800" cellpadding=0 cellspacing=0>
 <tr><td class=fo >


<table cellpadding=0 cellspacing=0 width="800" >
  <tr><td width="48"><IMG height=36 src="img/m33.gif" width=42 align=left ></td>
    <td class=fo width="600">All Rights Reserved.</td>
    <td align=right width="200" class=fo><IMG height=36 src="img/m35.gif" width=214 ></td></tr>
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
}
catch(Exception e)
{
out.println(e);
}
finally
{
	con.close();
}
%>

