<%@ page import="java.sql.*"%>
<%@page import="com.Dbconnection.Dbconnection"%>
<%! Connection con=null;
    PreparedStatement jre,aci;
    ResultSet jrs,rs;
%>
<%
try
{
	
	 String vv=request.getParameter("v");

	 con=Dbconnection.getConnection();

	jre=con.prepareStatement("select count(*) from jkcdata where status=0");
        jrs=jre.executeQuery();
		jrs.next();
		
aci=con.prepareStatement("select count(*) from exampaper");
        rs=aci.executeQuery();
		rs.next();
		int i=rs.getInt(1);
		        

%>
<html>
<head>
<title></title>
<link rel=stylesheet href=st.css type=text/css>
<LINK 
media=screen,projection,print 
href="dropdown/main.css" type=text/css 
rel=stylesheet>
<script language="JavaScript">

function time(field)
	{
	    
	     var str=field.value;
		
		 if(str.length>5)
		 { 
			  alert("The Time you entered is invalid");
			  return false;
		 }
		 var str1=str.charAt(0)+str.charAt(1);
		 var str2=str.charAt(3)+str.charAt(4);
		
		 if(str.charAt(2)!=':')
		 {
               alert("The time you enterd is not in correct format");
			   return false;
		 }
		
		 if(((str1)>=0 && (str1)<=12)&& ((str2)>=0 && (str2)<60))
		{}else{
			 alert("The time you entered is invalid");
			 return false;
		}
	}

function numberformat(field,alerttxt)
	{
         var str=field.value;
		
		 for( var i=0;i<str.length;i++)
		 {
			   
               if(  !(str.charAt(i)>='0'&&str.charAt(i)<='9'  ))
		       {
			     alert(alerttxt);
			    return false;
		        }
		  }

	}




function check()
	{
	    var str1=document.getElementById("noq").value;
        var str2=document.getElementById("key").value;
      
        if(str1!=str2.length)
		{ alert("No of questions and Key string does not match");
		  return false;
		}
		for(var i=0;i<str2.length;i++)
		{
			if(str2.charAt(i)=='A'||str2.charAt(i)=='B'||str2.charAt(i)=='C'||str2.charAt(i)=='D')
			{}
			else
			{
				alert("The Key string should contain either A or B or C or D");
				return false;
			}
		}
		return true;
		
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




if (validate_required(top,"Topic field must be filled out!")==false)
  {top.focus();return false}
if (validate_required(noq,"Number of Questions field must be filled out!")==false)
  {noq.focus();return false}
if (validate_required(uf,"Enter filename field must be filled out!")==false)
  {uf.focus();return false}
if (validate_required(key,"Key field must be filled out!")==false)
  {key.focus();return false}
if (validate_required(active,"Activation time field must be filled out!")==false)
  {active.focus();return false}
if (validate_required(dur,"Duration field must be filled out!")==false)
  {dur.focus();return false}
if(numberformat(noq,"only numbers are allowed in no of questions field")==false)
	{noq.focus();return false}
if(numberformat(dur,"only numbers are allowed in duration field")==false)
	{dur.focus();return false}

if(check()==false)
	{key.focus();return false}
if(time(active)==false)
	{active.focus();return false}
}}

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
                             <a class=links href="jkcadminchgpwd.jsp?v=0">Changepassword</FONT></TD></TR>

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
<td width="600">
<table width="600" height="600">

<tr><td height=30></td></tr>


<form action="createdhtmlexam.jsp" method="post">
<tr><td align=center><%if(i!=0)
	{
	if(vv.equals("1")){}else{%><font color=green size=4px>Delete the present exampaper</font>
	   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=submit name=r1 value="delete">
	
	<%}}%>
	
	</td></tr>
	</form>
	
	
	 <tr><td> <%if(vv.equals("1")){%>
<center><font color=green size=4px>Exam created</font></center><%}%>
<%if(vv.equals("2")){%>
<center><font color=green size=4px>Successfully deleted</font></center><%}%></tr></td>
<tr><td height="30"></td></tr><tr><td height="30"><center><h3><font color="#0077c0">CREATE EXAM</font></h3>

<table>
<tr><td height="10"></td></tr>


<form onsubmit="return validate_form(this)" action="createdhtmlexam.jsp"  method="post">

<tr><td>Topic </td><td><input type="text" name="top" size=20>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Number of questions</td><td><input type="text" name="noq" size=20 ></td></tr>
<tr><td height=10></td></tr>
<tr><td>Enter File Name</td><td><input type="text" name="uf" size=0 ></td></tr><tr><td height=10></td></tr>
<tr><td>Key String</td><td><input type="text" name="key" size=40></td></tr><tr><td height=10></td></tr>
<tr><td>Activation Time </td><td><input type="text" name="active" size=20>HH:MM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Duration</td><td><input type="text" name="dur" size=20 ></td></tr>
<tr><td height=10></td></tr>

<tr><td height="10"></td></tr>
<%if(i==0){if(vv.equals("1")){}else{%>
<tr><td colspan=2 align=center>
<input type="submit" size=5 name=r1 value=Submit></td>
<td align=left><input type="reset" name=r1 value="reset">
<%}}%>
</td></tr><tr><td height="24"></td>
<tr><td height="200"></td></tr>
</table></form></center></td></tr>
</table>
</td></tr>

</table>



<tr><td height="1"><table width="800" cellpadding=0 cellspacing=0>
 <tr><td class=fo >


<table cellpadding=0 cellspacing=0 width="800" >
  <tr><td width="48"><IMG height=36 src="img/m33.gif" width=42 align=left ></td>
    <td class=fo width="800">All Rights Reserved. </td>
    <td align=right width="220" class=fo><IMG height=36 src="img/m35.gif" width=214 ></td></tr>
 </table></td></tr>
</td></tr>
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
%>
