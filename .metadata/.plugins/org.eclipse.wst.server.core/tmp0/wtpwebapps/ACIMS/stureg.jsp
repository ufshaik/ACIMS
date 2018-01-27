
<HTML>
 <HEAD>
  <TITLE> Student Registration</TITLE>
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
<script language="JavaScript">
function check()
{
	var x=document.getElementById("pwd").value;
    var y=document.getElementById("cpwd").value;
	
	if(x.length!=y.length)
    {
		alert("Both the password donot match");
		document.getElementById("pwd").focus();
		return false;
	}

	for(var i=0;i<y.length;i++)
	{
        if(x.charAt(i)!=y.charAt(i))
		{
		alert("Both the password donot match");
		document.getElementById("pwd").focus();
		break;
	     }
     }
}

	

function len()
	{
	var x1="";
	var j=document.getElementById("marks").value;
	
	if(j.length>'6')
		{
		   alert("the value should be in the form  _ _ _._ _");
		   document.getElementById("marks").focus();
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
					 document.getElementById("marks").focus();
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
		        document.getElementById("marks").focus();
			}
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
if (validate_required(sn,"Surname field must be filled out!")==false)
  {sn.focus();return false}
if (validate_required(cn,"College name field must be filled out!")==false)
  {cn.focus();return false}
if (validate_required(cc,"college code field must be filled out!")==false)
  {cc.focus();return false}
if (validate_required(marks,"marks field must be filled out!")==false)
  {marks.focus();return false}
if (validate_required(pwd,"password field must be filled out!")==false)
  {pwd.focus();return false}
if (validate_required(cpwd,"Confirm password field must be filled out!")==false)
  {cpwd.focus();return false}
if(check()==false)
	{pwd.focus();return false}

}}
  </script>
 </HEAD>

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
<%String val=request.getParameter("v");%>
<tr><td>

<table width="820" border="1"  bordercolor="#2A8DCC">
<tr><td valign=left width="22%" class=ma colspan=2>
<table cellSpacing=0 cellPadding=0 width="100%" border=0>
<tr><td>&nbsp;</td></tr>
<tr><td vAlign=center align=middle rowSpan=2>
     <FONT face="Verdana, Arial, Helvetica, sans-serif" color="#E3BD12" size=3>

    <B>JKC !!!</B></td></tr>

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
                             <a style="color: black" class=links href="abtjkc.jsp">About JKC</FONT></TD></TR>


   <TR> <TD vAlign=center align=middle colSpan=2>
   <IMG height=1 src="D2_Blueline.gif" width="98%"></TD></TR>


    <TR>
                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5
                              src="D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a style="color: black" class=links href="stureg.jsp?v=0">Student Registration</FONT></TD></TR>

   
<TR><TD vAlign=center align=middle colSpan=2>
<IMG height=1 src="D2_Blueline.gif" width="98%"></TD></TR>
<TR>
                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5
                              src="D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a style="color: black" class=links href="jkccolleges.jsp">JKC Colleges</FONT></TD></TR>
<TR><TD vAlign=center align=middle colSpan=2>
<IMG height=1 src="D2_Blueline.gif" width="98%"></TD></TR>

<TR>
                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5
                              src="D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a style="color: black" class=links href="jkcreglistmain.jsp">JKC Students</FONT></TD></TR>
   

<TR><TD vAlign=center align=middle colSpan=2>
<IMG height=1 src="D2_Blueline.gif" width="98%"></TD></TR>


<TR>
                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5
                              src="D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a style="color: black" class=links href="notify.jsp">Notifications</FONT></TD></TR>

   
<TR><TD vAlign=center align=middle colSpan=2>
<IMG height=1 src="D2_Blueline.gif" width="98%"></TD></TR>

<TR>
                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5
                              src="D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a style="color: black" class=links href="cceviewstu.jsp">Selected Students</FONT></TD></TR>

   
<TR><TD vAlign=center align=middle colSpan=2>
<IMG height=1 src="D2_Blueline.gif" width="98%"></TD></TR>

<TR>
                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5
                              src="D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a style="color: black" class=links href="ccecomp.jsp">Companies</FONT></TD></TR>

   
<TR><TD vAlign=center align=middle colSpan=2>
<IMG height=1 src="D2_Blueline.gif" width="98%"></TD></TR>
</font></table>
</td>
<TD vAlign=top bgcolor=white height=350 >
<br><br>
 <%if(val.equals("1"))
	 { %>
<center><FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=green size=3px><b>Congratulations!!<br>
							     you have registered successfully</b></font></center>
<%}%> 
 <%if(val.equals("2"))
	 { %>
<center><FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=green size=3px><b>NO College found with that code
							     </b></font></center>
<%}%> 
 <%if(val.equals("3"))
	 { String college=request.getParameter("col");%>
<center><FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=green size=3px><b>You registration-id is not found in <%=college%>
							     </b></font></center>
<%}%> 
<%if(val.equals("4"))
	 { %>
<center><FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=green size=3px><b>The person with this registration id has already been registered
							     </b></font></center>
<%}%> 
<form onsubmit="return validate_form(this)" action="stureg1.jsp" method=post>
<table align=center width="567"><caption><font color="#0077c0" size=5px>Student registration form</font></caption>
<tr><td height="20" width="88"></td></tr>
<tr><td width="88">First name</td><td width="174">
  <input type="text" name="fn" maxlength=20 size="20"></td><td width="111">Sur name</td>
  <td width="176"><input type="text" name="sn" maxlength=20 size="20"></td></tr><tr>
  <td height="5" width="88"></td></tr>
<tr><td width="88">Registration-id</td><td width="469" colspan=4>
  <input type="text" name="id" maxlength=10 size="20">&nbsp;&nbsp;(Enter your roll-no given in your college)</td></tr><tr>
  <td height="5" width="88"></td></tr>
<tr><td width="88">college name</td><td colspan=4 width="469"><input type="text" size=50 name=cn maxlength=50></td></tr><tr>
<td height="5" width="88"></td></tr>
<tr><td width="88">college code</td><td width="174">
  <input type="text" name="cc" maxlength=2 size="20"></td>
<td width="111">marks(B.Tech%)</td><td width="176">
  <input type="text" name="marks" onBlur="len()" size="20"></td></tr><tr>
  <td height="5" width="88"></td></tr>
<tr><td width="88">password</td><td width="174">
  <input type="password" name="pwd" maxlength=10 size="20"></td>
<td width="111">confirm password</td><td width="176">
  <input type="password" name="cpwd" maxlength=10 onBlur="check()" size="20"></td></tr>
<tr><td height="5" width="88"></td></tr><tr><td height="5" width="88"></td></tr>
<tr><td width="88"></td><td height="27" width="174" ><INPUT type="submit" name="Button" value=submit  ></td>
<td height="27" width="111"><input type=reset name=r1 value="Reset"></td></tr><tr>
  <td height="30" width="88" ></td></tr>

</table></form>
 
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
    <LI><A href="applyaccr.html">Apply for Accreditation</A></LI>
    <LI><A href="accrcoll.jsp">Accredited Colleges</A></LI></UL>

  </LI> 



<LI id=jkc>&nbsp;<A href=""></A><UL>
    <LI><A href="abtjkc.jsp">About JKC</A></LI>
    <LI><A href="stureg.jsp?v=0">Student Registration</A></LI>
       <LI><A href="jkccolleges.jsp">JKC Colleges</A></LI>  
		<LI><A href="jkcreglistmain.jsp">JKC Students</A></LI>
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

