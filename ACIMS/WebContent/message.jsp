
<HTML><HEAD><TITLE>Online Submission of Letter of Intention</TITLE>
<LINK href="letter/style.css" type=text/css 
rel=stylesheet>
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
<SCRIPT language=javascript 
src="letter/validate.js">
</SCRIPT>
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

function valform(ff)
{
	if ( !isNotEmpty(ff.inname.value, "Institution Name", "inname"))
	{
		ff.inname.focus();
		return false;
	}
        if ( !isNotEmpty(ff.code.value, "Code", "code"))
	{
		ff.inname.focus();
		return false;
	}
        if ( !isNotEmpty(ff.address.value, "Address", "address"))
	{
		ff.address.focus();
		return false;
	}

	if ( !isNotEmpty(ff.city.value, "City", "city"))
	{
		ff.city.focus();
		return false;
	}

	if ( !isInteger(ff.pin.value, "Pin code", "pin"))
	{
		ff.pin.focus();
		return false;
	}

	if ( !isNotEmpty(ff.tel.value, "Tel", "tel"))
	{
		ff.tel.focus();
		return false;
	}

	if ( !isNotEmpty(ff.email.value, "Email", "email"))
	{
		ff.email.focus();
		return false;
	}

	if ( !isNotEmpty(ff.esttdt.value, "Establishment Date", "esttdt"))
	{
		ff.esttdt.focus();
		return false;
	}

	if ( ff.esttdt.value != "" )
	{
		if (!isDateFormat(ff.esttdt.value, "Date of Establishment", "esttdt"))
		{
			ff.esttdt.focus();
			return false;
		}

		dd = ff.esttdt.value.substr(0,2);
		mm = ff.esttdt.value.substr(3,2);
		yy = ff.esttdt.value.substr(6,4);
		var date1 = new Date(mm + '/' + dd + '/' + yy);
		var date2 = new Date()

		if ( date1 >= date2 )
		{
			alert("Date of Establishment can not be greater then today's date.");
			ff.esttdt.focus();
			return false;
		}

	}

	
	if ( !isNotEmpty(ff.pname.value, "Principal Name", "pname"))
	{
		ff.pname.focus();
		return false;
	}

	if ( !isInteger(ff.teachstaff.value, "teachstaff", "teachstaff"))
	{
		ff.teachstaff.focus();
		return false;
	}
	if ( !isInteger(ff.admstaff.value, "Administrative Staff", "admstaff"))
	{
		ff.admstaff.focus();
		return false;
	}
	if ( !isInteger(ff.techstaff.value, "Technical & Supportive staff", "techstaff"))
	{
		ff.techstaff.focus();
		return false;
	}
	if ( !isInteger(ff.students.value, "Students", "students"))
	{
		ff.students.focus();
		return false;
	}

	ff.save.disabled=true;

	return true;
}
</SCRIPT>
</HEAD>

<BODY bgProperties=fixed bgcolor="#A9B1B9" onload=tedata.inname.focus()>
<form name=tedata onsubmit="return valform(tedata)" method="post" action="onlineletter.jsp">


<table cellpadding=0 cellspacing=0 width="780" border=1  align=center  bordercolor="#2A8DCC" bgcolor="#A9B1B9">
 <tr><td valign=top class=to width="780">
<table width="820" cellpadding=0 cellspacing=0 height="144">
 <tr><td width="822" height="144"><IMG id=IMG1 height=144 src="img/sri.gif" width="100%" ></td></tr>
<tr><td width="822" height="10"><IMG height=40 src="img/m021.jpg" width=326 ><A href="index.jsp" 
           ><IMG height=40 src="img/buttons/home1.gif" width=94 border=0 ></A><A onmouseover="openMenu('naac',this,-20,0);" 
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
<tr><td valign=left width="26%" class=ma colspan=2>
<table cellSpacing=0 cellPadding=0 width="100%" border=0>
<tr><td>&nbsp;</td></tr>
<tr><td vAlign=center align=middle rowSpan=2>
     <FONT face="Verdana, Arial, Helvetica, sans-serif" color="#E3BD12" size=3>

    <B>College !!!</B></td></tr>

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
                             <a class=links href="applyaccr.jsp">Apply For Accreditation</FONT></TD></TR>


   <TR> <TD vAlign=center align=middle colSpan=2>
   <IMG height=1 src="D2_Blueline.gif" width="98%"></TD></TR>


    <TR>
                            <TD vAlign=center height=22 >&nbsp;&nbsp;<IMG height=5
                              src="D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a class=links href="accrcoll.jsp">Accredited Colleges</FONT></TD></TR>

   
<TR><TD vAlign=center align=middle colSpan=2>
<IMG height=1 src="D2_Blueline.gif" width="98%"></TD></TR>

</font></table>
</td>
<TD vAlign=top bgcolor=white>

  <Table align=center border=0 width=620>
    <Tbody>
    
<TR >

<td height=300 bgcolor=white>




<CENTER><FONT Face=Verdana, Arial, Helvetica, sans-serif;
 color=green size=5><pre>
 <i><b><h2>Congratulations!!!</h2></b> </i></font>
<FONT Face=Verdana, Arial, Helvetica, sans-serif;
 color="#0077c0" size=3>
                  Your details are stored in our Database.
        Accreditation Assessment Date will be intimated shortly to given mail id.</td></tr>
  
</table></td>

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
    <LI><A href="studreg.html">About JKC</A></LI>
    <LI><A href="">Student Login</A></LI>
        <LI><A href="">Achievements</A></LI></UL>

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


