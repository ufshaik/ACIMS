
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

function checkemail()
{
var str=document.tedata.email.value;

var filter=/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i
if (!(filter.test(str)))
 {
  alert("Please input a valid email address!")
  document.tedata.email.focus();
 } 
  
}




</SCRIPT>
</HEAD>

<BODY bgProperties=fixed bgcolor="#A9B1B9" onload=tedata.inname.focus()>
<form name=tedata onsubmit="return valform(tedata)" method="post" action="onlineletter.jsp">


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

<tr><td>

<table width="820" border="1"  bordercolor="#2A8DCC">
<tr><td valign=left width="22%" class=ma colspan=2>
<table cellSpacing=0 cellPadding=0 width="100%" border=0>
<tr><td>&nbsp;</td></tr>
<tr><td vAlign=center align=middle rowSpan=2>
     <FONT face="Verdana, Arial, Helvetica, sans-serif" color="#E3BD12" size=3>

    <B>College !!!</B></td></tr>

    <tr><td>&nbsp;</td></tr>
    

     <TR> <TD vAlign=center align=middle colSpan=2>
    <IMG height=1 src="D2_Blueline.gif" width="98%"></TD></TR>


   <TR>
                            <TD vAlign=center height=22 >&nbsp;&nbsp;<IMG height=5
                              src="D4_redbullet.gif" 
                             width=5>&nbsp; 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a class=links href="applyaccr.jsp?v=0">Apply For Accreditation</FONT></TD></TR>


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

  <Table align=center border=0>
    <Tbody>
    
<TR >

<td>




<CENTER><FONT Face=Verdana, Arial, Helvetica, sans-serif;
 color="#0077c0" siz5=5><h3><b><u>Letter of Intention</FONT></h3>



<TABLE width="620" border=0>
  <TBODY>
  <TR vAlign=top >
    <TD bgcolor="efefef"><FONT Face=Verdana, Arial, Helvetica, sans-serif;
 color=maroon size=4>Institution 
      Profile</FONT> </TD>
    <TD  align=center bgcolor="efefef"><A href="index.jsp"><FONT Face=Verdana, Arial, Helvetica, sans-serif;
 
      color=maroon size=4>ACIMS HOME</FONT></A></TD></TR></TBODY></TABLE>
<BR>
<FORM name=tedata onsubmit="return valform(tedata)" action="onlineletter.jsp"
method=post><INPUT type=hidden value=add name=mode></TD></TR> 
<TABLE width="620">
  <TBODY>
  <TR vAlign=top>
    <TD >1.</TD>
    <TD >Name of Institution</TD>
    <TD><INPUT maxLength=255 size=50 name=inname></TD></TR>
<TR vAlign=top>
    <TD >2.</TD>
    <TD >CODE of Institution</TD>
    <TD><INPUT maxLength=6 size=6 name=code></TD></TR>

  <TR vAlign=top>
    <TD >3.</TD>
    <TD >Contact Details</TD>
    <TD>
      <TABLE>
        <TBODY>
        <TR vAlign=top>
          <TD>Address:</TD>
          <TD><TEXTAREA name=address rows=4 cols=40 maxlength="250"></TEXTAREA></TD></TR>
        <TR>
          <TD>City:</TD>
          <TD><INPUT maxLength=50 name=city></TD></TR>
        <TR>
          <TD>Pin:</TD>
          <TD><INPUT maxLength=6 size=6 name=pin></TD></TR>
        <TR>
          <TD>State/UT:</TD>
          <TD><SELECT name=state> <OPTION value="A &amp; N Island" 
              selected>A &amp; N Island</OPTION><OPTION 
              value="Andhra Pradesh">Andhra Pradesh</OPTION><OPTION 
              value="Arunachal Pradesh">Arunachal Pradesh</OPTION><OPTION 
              value=Assam>Assam</OPTION><OPTION 
              value=Bihar>Bihar</OPTION><OPTION 
              value=Chandigarh>Chandigarh</OPTION><OPTION 
              value=Chhatisgarh>Chhatisgarh</OPTION><OPTION 
              value="Daman &amp; Diu">Daman &amp; Diu</OPTION><OPTION 
              value=Delhi>Delhi</OPTION><OPTION value=Goa>Goa</OPTION><OPTION 
              value=Gujarat>Gujarat</OPTION><OPTION 
              value=Haryana>Haryana</OPTION><OPTION 
              value="Himachal Pradesh">Himachal Pradesh</OPTION><OPTION 
              value=Jharkhand>Jharkhand</OPTION><OPTION 
              value=Karnataka>Karnataka</OPTION><OPTION 
              value=Kerala>Kerala</OPTION><OPTION value="Madhya Pradesh">Madhya 
              Pradesh</OPTION><OPTION 
              value=Maharashtra>Maharashtra</OPTION><OPTION 
              value=Manipur>Manipur</OPTION><OPTION 
              value=Meghalaya>Meghalaya</OPTION><OPTION 
              value=Mizoram>Mizoram</OPTION><OPTION 
              value=Nagaland>Nagaland</OPTION><OPTION 
              value=Orissa>Orissa</OPTION><OPTION 
              value=Pondicherry>Pondicherry</OPTION><OPTION 
              value=Punjab>Punjab</OPTION><OPTION 
              value=Rajasthan>Rajasthan</OPTION><OPTION 
              value=Sikkim>Sikkim</OPTION><OPTION 
              value=Tamilnadu>Tamilnadu</OPTION><OPTION 
              value=Tripura>Tripura</OPTION><OPTION value="Uttar Pradesh">Uttar 
              Pradesh</OPTION><OPTION 
              value=Uttaranchal>Uttaranchal</OPTION><OPTION 
              value="West Bengal">West Bengal</OPTION></SELECT> </TD></TR>
        <TR>
          <TD>Tel:</TD>
          <TD><INPUT maxLength=50 size=50 name=tel></TD></TR>
        <TR>
          <TD>Fax:</TD>
          <TD><INPUT maxLength=50 size=50 name=fax></TD></TR>
        <TR>
          <TD>Email:</TD>
          <TD><INPUT maxLength=100 size=50 name=email onblur="checkemail()"></TD></TR>
        <TR>
          <TD>Website:</TD>
          <TD><INPUT maxLength=100 size=50 
  name=website></TD></TR></TBODY></TABLE></TD></TR>
  <TR vAlign=top>
    <TD >4.</TD>
    <TD >Date of Establishment</TD>
    <TD>(YYYY/MM/DD)<INPUT maxLength=10 size=10 name=esttdt></TD></TR>
  <TR vAlign=top>
    <TD >5.</TD>
    <TD >University to which Affiliated<BR>(In case of college)</TD>
    <TD><SELECT name=affil> <OPTION value=(NA) selected>(NA)</OPTION><OPTION 
        value="Acharya N.G. Ranga Agricultural University">Acharya N.G. Ranga 
        Agricultural University</OPTION><OPTION 
        value="Acharya Nagarjuna University (Fmr Nagarjuna University)">Acharya 
        Nagarjuna University (Fmr Nagarjuna University)</OPTION><OPTION 
        value=AICTE>AICTE</OPTION><OPTION value="Algappa University">Algappa 
        University</OPTION><OPTION value="Aligarh Muslim University">Aligarh 
        Muslim University</OPTION><OPTION value="Amravati University">Amravati 
        University</OPTION><OPTION 
        value="Andhra Pradesh University of Health Sciences">Andhra Pradesh 
        University of Health Sciences</OPTION><OPTION 
        value="Andhra University">Andhra University</OPTION><OPTION 
        value="Anna University">Anna University</OPTION><OPTION 
        value="Annamalai University">Annamalai University</OPTION><OPTION 
        value="Arunachal University">Arunachal University</OPTION><OPTION 
        value="Assam Agricultural University">Assam Agricultural 
        University</OPTION><OPTION value="Assam University">Assam 
        University</OPTION><OPTION 
        value="Awadhesh Pratap Singh University">Awadhesh Pratap Singh 
        University</OPTION><OPTION 
        value="Baba Farid University of Health Sciences">Baba Farid University 
        of Health Sciences</OPTION><OPTION 
        value="Babasaheb Bhimrao Ambedkar University">Babasaheb Bhimrao Ambedkar 
        University</OPTION><OPTION value="Banaras Hindu University">Banaras 
        Hindu University</OPTION><OPTION value="Bangalore University">Bangalore 
        University</OPTION><OPTION 
        value="Barkatullah Vishwavidyalaya">Barkatullah 
        Vishwavidyalaya</OPTION><OPTION value="Berhampur University">Berhampur 
        University</OPTION><OPTION value="Bharthiar University">Bharthiar 
        University</OPTION><OPTION value="Bharthidasan University">Bharthidasan 
        University</OPTION><OPTION value="Bhavnagar University">Bhavnagar 
        University</OPTION><OPTION 
        value="Bhupendra Narayan Mandal University">Bhupendra Narayan Mandal 
        University</OPTION><OPTION 
        value="Bidhan Chandra Krishi Vishwavidyalaya">Bidhan Chandra Krishi 
        Vishwavidyalaya</OPTION><OPTION 
        value="Biju Patnaik University of Technology">Biju Patnaik University of 
        Technology</OPTION><OPTION value="Birsa Agricultural University">Birsa 
        Agricultural University</OPTION><OPTION 
        value="Bundelkhand University">Bundelkhand University</OPTION><OPTION 
        value="Central Agricultural University">Central Agricultural 
        University</OPTION><OPTION 
        value="Ch. Charan Singh Haryana Agricultural University">Ch. Charan 
        Singh Haryana Agricultural University</OPTION><OPTION 
        value="Ch. Charan Singh University">Ch. Charan Singh 
        University</OPTION><OPTION 
        value="Chandra Shekhar Azad University of Agriculture &amp; Technology">Chandra 
        Shekhar Azad University of Agriculture &amp; Technology</OPTION><OPTION 
        value="Chaudhary Devi Lal University">Chaudhary Devi Lal 
        University</OPTION><OPTION 
        value="Chaudhary Sarwan Kumar Himachal Pradesh Krishi Vishwavidyalaya">Chaudhary 
        Sarwan Kumar Himachal Pradesh Krishi Vishwavidyalaya</OPTION><OPTION 
        value="Chhatrapati Shahu Ji Maharaj Medical University">Chhatrapati 
        Shahu Ji Maharaj Medical University</OPTION><OPTION 
        value="Chhatrapati Shahu Ji Maharaj University">Chhatrapati Shahu Ji 
        Maharaj University</OPTION><OPTION 
        value="Cochin University of Science &amp; Technology">Cochin University 
        of Science &amp; Technology</OPTION><OPTION 
        value="Deendayal Upadhyaya Gorakhpur University">Deendayal Upadhyaya 
        Gorakhpur University</OPTION><OPTION 
        value="Dev Sanskriti Vishwavidyalaya">Dev Sanskriti 
        Vishwavidyalaya</OPTION><OPTION value="Devi Ahilya Vishwavidyalaya">Devi 
        Ahilya Vishwavidyalaya</OPTION><OPTION 
        value="Dibrugarh University">Dibrugarh University</OPTION><OPTION 
        value="Dr. B.R. Ambedkar Open University">Dr. B.R. Ambedkar Open 
        University</OPTION><OPTION 
        value="Dr. Babasaheb Ambedkar Marathwada University">Dr. Babasaheb 
        Ambedkar Marathwada University</OPTION><OPTION 
        value="Dr. Babasaheb Ambedkar Open University">Dr. Babasaheb Ambedkar 
        Open University</OPTION><OPTION 
        value="Dr. Babasaheb Ambedkar Technological University">Dr. Babasaheb 
        Ambedkar Technological University</OPTION><OPTION 
        value="Dr. Bhim Rao Ambedkar University">Dr. Bhim Rao Ambedkar 
        University</OPTION><OPTION value="Dr. D.Y. Patil Vidyapeeth">Dr. D.Y. 
        Patil Vidyapeeth</OPTION><OPTION 
        value="Dr. Harisingh Gour Vishwavidyalaya">Dr. Harisingh Gour 
        Vishwavidyalaya</OPTION><OPTION 
        value="Dr. Panjabrao Deshmukh Krishi Vidyapeeth">Dr. Panjabrao Deshmukh 
        Krishi Vidyapeeth</OPTION><OPTION 
        value="Dr. Ram Manohar Lohia Avadh University">Dr. Ram Manohar Lohia 
        Avadh University</OPTION><OPTION 
        value="Dr. Y.S. Parmar University of Horticulture &amp; Forestry">Dr. 
        Y.S. Parmar University of Horticulture &amp; Forestry</OPTION><OPTION 
        value="Dravidian University">Dravidian University</OPTION><OPTION 
        value="Fakir Mohan University">Fakir Mohan University</OPTION><OPTION 
        value="Gauhati University">Gauhati University</OPTION><OPTION 
        value="Goa University">Goa University</OPTION><OPTION 
        value="Govind Ballabh Pant University of Agricluture &amp; Technology">Govind 
        Ballabh Pant University of Agricluture &amp; Technology</OPTION><OPTION 
        value="Gujarat Agricultural Uiversity">Gujarat Agricultural 
        Uiversity</OPTION><OPTION value="Gujarat Ayurved University">Gujarat 
        Ayurved University</OPTION><OPTION value="Gujarat University">Gujarat 
        University</OPTION><OPTION value="Gulbarga University">Gulbarga 
        University</OPTION><OPTION value="Guru Ghasidas University">Guru 
        Ghasidas University</OPTION><OPTION 
        value="Guru Govind Singh Indraprastha Vishwavidyalaya">Guru Govind Singh 
        Indraprastha Vishwavidyalaya</OPTION><OPTION 
        value="Guru Jambeshwar University">Guru Jambeshwar 
        University</OPTION><OPTION value="Guru Nanak Dev University">Guru Nanak 
        Dev University</OPTION><OPTION 
        value="Hemwati Nandan Bahuguna Garhwal University">Hemwati Nandan 
        Bahuguna Garhwal University</OPTION><OPTION 
        value="Hidayatullah National Law University">Hidayatullah National Law 
        University</OPTION><OPTION value="Himachal Pradesh University">Himachal 
        Pradesh University</OPTION><OPTION 
        value="Indira Gandhi Krishi Vishwavidyalaya">Indira Gandhi Krishi 
        Vishwavidyalaya</OPTION><OPTION 
        value="Indira Gandhi National Open University">Indira Gandhi National 
        Open University</OPTION><OPTION 
        value="Indira Kala Sangeet Vishwavidyalya">Indira Kala Sangeet 
        Vishwavidyalya</OPTION><OPTION value="Jadavpur University">Jadavpur 
        University</OPTION><OPTION 
        value="Jagadguru Rambhadracharya Handicapped University">Jagadguru 
        Rambhadracharya Handicapped University</OPTION><OPTION 
        value="Jai Narain Vyas University">Jai Narain Vyas 
        University</OPTION><OPTION value="Jai Prakash Vishwavidyalaya">Jai 
        Prakash Vishwavidyalaya</OPTION><OPTION 
        value="Jamia Millia Islamia">Jamia Millia Islamia</OPTION><OPTION 
        value="Jawaharla Nehru Technological University">Jawaharla Nehru 
        Technological University</OPTION><OPTION 
        value="Jawaharlal Nehru Krishi Vishwavidyalaya">Jawaharlal Nehru Krishi 
        Vishwavidyalaya</OPTION><OPTION 
        value="Jawaharlal Nehru University">Jawaharlal Nehru 
        University</OPTION><OPTION 
        value="Jaypee University of Information Technology">Jaypee University of 
        Information Technology</OPTION><OPTION value="Jiwaji University">Jiwaji 
        University</OPTION><OPTION value="Kachchh University">Kachchh 
        University</OPTION><OPTION value="Kakatiya University">Kakatiya 
        University</OPTION><OPTION 
        value="Kameshwar Singh Darbhanga Sanskrit University">Kameshwar Singh 
        Darbhanga Sanskrit University</OPTION><OPTION 
        value="Kannada University">Kannada University</OPTION><OPTION 
        value="Kannur University">Kannur University</OPTION><OPTION 
        value="Karnataka State Open University">Karnataka State Open 
        University</OPTION><OPTION value="Karnataka University">Karnataka 
        University</OPTION><OPTION 
        value="Kavikulguru Kalidas Sanskrit Vishwavidyalaya">Kavikulguru Kalidas 
        Sanskrit Vishwavidyalaya</OPTION><OPTION 
        value="Kerala Agricultural Univesity">Kerala Agricultural 
        Univesity</OPTION><OPTION value="Konkan Krishi Vidyapeeth">Konkan Krishi 
        Vidyapeeth</OPTION><OPTION value="Kota Open Univesity">Kota Open 
        Univesity</OPTION><OPTION value="Kumaun University">Kumaun 
        University</OPTION><OPTION value="Kurukshetra University">Kurukshetra 
        University</OPTION><OPTION value="Kuvempu University">Kuvempu 
        University</OPTION><OPTION 
        value="Lalit Narayan Mithila University">Lalit Narayan Mithila 
        University</OPTION><OPTION value="M S University of Baroda">M S 
        University of Baroda</OPTION><OPTION 
        value="M.J.P. Rohilkhand University">M.J.P. Rohilkhand 
        University</OPTION><OPTION 
        value="Madhya Pradesh Bhoj (Open) University">Madhya Pradesh Bhoj (Open) 
        University</OPTION><OPTION value="Madurai Kamaraj University">Madurai 
        Kamaraj University</OPTION><OPTION value="Magadh University">Magadh 
        University</OPTION><OPTION 
        value="Maharana Pratap University of Agrilcuture &amp; Technology">Maharana 
        Pratap University of Agrilcuture &amp; Technology</OPTION><OPTION 
        value="Maharashtra Animal &amp; Fishery Sciences University">Maharashtra 
        Animal &amp; Fishery Sciences University</OPTION><OPTION 
        value="Maharashtra University of Health Sciences">Maharashtra University 
        of Health Sciences</OPTION><OPTION 
        value="Maharishi Mahesh Yogi Vedic Vishwavidyalaya">Maharishi Mahesh 
        Yogi Vedic Vishwavidyalaya</OPTION><OPTION 
        value="Maharshi Dayanand Saraswati University">Maharshi Dayanand 
        Saraswati University</OPTION><OPTION 
        value="Maharshi Dayanand University">Maharshi Dayanand 
        University</OPTION><OPTION 
        value="Mahatma Gandhi Antarrashtriya Hindi Vishwavidyalaya">Mahatma 
        Gandhi Antarrashtriya Hindi Vishwavidyalaya</OPTION><OPTION 
        value="Mahatma Gandhi Chitrakoot Gramoday Vishwavidyalaya">Mahatma 
        Gandhi Chitrakoot Gramoday Vishwavidyalaya</OPTION><OPTION 
        value="Mahatma Gandhi Kashi Vidyapeeth">Mahatma Gandhi Kashi 
        Vidyapeeth</OPTION><OPTION value="Mahatma Gandhi University">Mahatma 
        Gandhi University</OPTION><OPTION 
        value="Mahatma Phule Krishi Vidyapeeth">Mahatma Phule Krishi 
        Vidyapeeth</OPTION><OPTION 
        value="Makhanlal Chaturvedi Rashtriya Patrakarita Vishwavidyalaya">Makhanlal 
        Chaturvedi Rashtriya Patrakarita Vishwavidyalaya</OPTION><OPTION 
        value="Mangalore University">Mangalore University</OPTION><OPTION 
        value="Manipur University">Manipur University</OPTION><OPTION 
        value="Manonmaniam Sundaranar University">Manonmaniam Sundaranar 
        University</OPTION><OPTION 
        value="Marathwada Krishi Vidyapeeth">Marathwada Krishi 
        Vidyapeeth</OPTION><OPTION 
        value="Maulana Azad National Urdu Univesity">Maulana Azad National Urdu 
        Univesity</OPTION><OPTION value="Mizoram University">Mizoram 
        University</OPTION><OPTION value="Mohanlal Sukhadia University">Mohanlal 
        Sukhadia University</OPTION><OPTION value="Mother Teresa Women" 
        University? s>Mother Teresa Women's University</OPTION><OPTION 
        value="Nagaland University">Nagaland University</OPTION><OPTION 
        value="Nagpur University">Nagpur University</OPTION><OPTION 
        value="Nalanda Open University">Nalanda Open University</OPTION><OPTION 
        value="Narendra Deva University of Agriclture &amp; Technology">Narendra 
        Deva University of Agriclture &amp; Technology</OPTION><OPTION 
        value="Narsee Monjee Institute of Management Studies">Narsee Monjee 
        Institute of Management Studies</OPTION><OPTION 
        value="National Academy of Legal Studies and Research University">National 
        Academy of Legal Studies and Research University</OPTION><OPTION 
        value="National Law Institute University">National Law Institute 
        University</OPTION><OPTION 
        value="National Law School of India University">National Law School of 
        India University</OPTION><OPTION 
        value="National Law University">National Law University</OPTION><OPTION 
        value="Netaji Subhas Open University">Netaji Subhas Open 
        University</OPTION><OPTION 
        value="Nirma University of Science &amp; Technology">Nirma University of 
        Science &amp; Technology</OPTION><OPTION 
        value="North Eastern Hill University">North Eastern Hill 
        University</OPTION><OPTION value="North Gujarat University">North 
        Gujarat University</OPTION><OPTION 
        value="North Maharashtra University">North Maharashtra 
        University</OPTION><OPTION value="North Orissa University">North Orissa 
        University</OPTION><OPTION 
        value="Orissa University of Agriculture and Technology">Orissa 
        University of Agriculture and Technology</OPTION><OPTION 
        value="Osmania University">Osmania University</OPTION><OPTION 
        value=Other>Other</OPTION><OPTION 
        value="Pandit Ravishankar Shukla University">Pandit Ravishankar Shukla 
        University</OPTION><OPTION value="Panjab University">Panjab 
        University</OPTION><OPTION value="Patna University">Patna 
        University</OPTION><OPTION value="Periyar University">Periyar 
        University</OPTION><OPTION value="Pondicherry University">Pondicherry 
        University</OPTION><OPTION 
        value="Potti Sreeramulu Telgu University">Potti Sreeramulu Telgu 
        University</OPTION><OPTION value="Punjab Agricultural University">Punjab 
        Agricultural University</OPTION><OPTION 
        value="Punjab Technical University">Punjab Technical 
        University</OPTION><OPTION value="Punjabi University">Punjabi 
        University</OPTION><OPTION value="Rabindra Bharati University">Rabindra 
        Bharati University</OPTION><OPTION 
        value="Rajasthan Agricultural University">Rajasthan Agricultural 
        University</OPTION><OPTION 
        value="Rajasthan Ayurveda University">Rajasthan Ayurveda 
        University</OPTION><OPTION 
        value="Rajasthan Sanskrit University">Rajasthan Sanskrit 
        University</OPTION><OPTION 
        value="Rajendra Agricultural University">Rajendra Agricultural 
        University</OPTION><OPTION 
        value="Rajiv Gandhi Proudyogiki Vishwavidyalaya">Rajiv Gandhi 
        Proudyogiki Vishwavidyalaya</OPTION><OPTION 
        value="Rajiv Gandhi University of Health Sciences">Rajiv Gandhi 
        University of Health Sciences</OPTION><OPTION 
        value="Ranchi University">Ranchi University</OPTION><OPTION 
        value="Rani Durgavati Vishwavidyalaya">Rani Durgavati 
        Vishwavidyalaya</OPTION><OPTION 
        value="Rashtriya Sanskrit Vidyapeetha">Rashtriya Sanskrit 
        Vidyapeetha</OPTION><OPTION value="Sambalpur University">Sambalpur 
        University</OPTION><OPTION 
        value="Sampurnanand Sanskrit Vishwavidyalaya">Sampurnanand Sanskrit 
        Vishwavidyalaya</OPTION><OPTION value="Sardar Patel University">Sardar 
        Patel University</OPTION><OPTION 
        value="Sardar Vallabh Bhai Patel University of Agriculture &amp; Technology">Sardar 
        Vallabh Bhai Patel University of Agriculture &amp; 
        Technology</OPTION><OPTION value="Saurashtra University">Saurashtra 
        University</OPTION><OPTION 
        value="Sher-e-Kashmir University of Agricultural Sciences And Technology">Sher-e-Kashmir 
        University of Agricultural Sciences And Technology</OPTION><OPTION 
        value="Shivaji University">Shivaji University</OPTION><OPTION 
        value="Shri Jagannath Sanskrit Vishvavidyalaya">Shri Jagannath Sanskrit 
        Vishvavidyalaya</OPTION><OPTION 
        value="Shri Mata Vaishno Devi University">Shri Mata Vaishno Devi 
        University</OPTION><OPTION value="Siddu Kanhu University">Siddu Kanhu 
        University</OPTION><OPTION 
        value="Sikkim-Manipal University of Health Medical &amp; Technological Sciences">Sikkim-Manipal 
        University of Health Medical &amp; Technological 
        Sciences</OPTION><OPTION value="SNDT Women" University? ?s>SNDT Women''s 
        University</OPTION><OPTION value="South Gujarat University">South 
        Gujarat University</OPTION><OPTION 
        value="Sree Sankaracharya University of Sanskrit ">Sree Sankaracharya 
        University of Sanskrit</OPTION><OPTION 
        value="Sri Krishnadevaraya University">Sri Krishnadevaraya 
        University</OPTION><OPTION 
        value="Sri Padmavathi Mahila Visvavidyalayam">Sri Padmavathi Mahila 
        Visvavidyalayam</OPTION><OPTION value="Sri Venkateswara University">Sri 
        Venkateswara University</OPTION><OPTION 
        value="Swami Ramanand Teerth Marathwada University">Swami Ramanand 
        Teerth Marathwada University</OPTION><OPTION 
        value="Tamil Nadu Agricultural University">Tamil Nadu Agricultural 
        University</OPTION><OPTION 
        value="Tamil Nadu Dr. M G R Medical University">Tamil Nadu Dr. M G R 
        Medical University</OPTION><OPTION value="Tamil University">Tamil 
        University</OPTION><OPTION 
        value="Tamilnadu Dr. Ambedkar Law University">Tamilnadu Dr. Ambedkar Law 
        University</OPTION><OPTION 
        value="Tamilnadu Veterinary And Animal Sciences University">Tamilnadu 
        Veterinary And Animal Sciences University</OPTION><OPTION 
        value="Tezpur University">Tezpur University</OPTION><OPTION 
        value="The University of Burdwan">The University of 
        Burdwan</OPTION><OPTION value="Thiruvalluvar University">Thiruvalluvar 
        University</OPTION><OPTION 
        value="Tilka Manjhi Bhagalpur University">Tilka Manjhi Bhagalpur 
        University</OPTION><OPTION value="Tripura University">Tripura 
        University</OPTION><OPTION value="Tumkur University">Tumkur 
        University</OPTION><OPTION 
        value="U.P.Rajrarshi Tandon Open University">U.P.Rajrarshi Tandon Open 
        University</OPTION><OPTION 
        value="University of Agricultural Sciences">University of Agricultural 
        Sciences</OPTION><OPTION value="University of Allahabad">University of 
        Allahabad</OPTION><OPTION value="University of Bikaner">University of 
        Bikaner</OPTION><OPTION value="University of Calcutta">University of 
        Calcutta</OPTION><OPTION value="University of Calicut">University of 
        Calicut</OPTION><OPTION value="University of Delhi">University of 
        Delhi</OPTION><OPTION value="University of Hyderabad">University of 
        Hyderabad</OPTION><OPTION value="University of Jammu">University of 
        Jammu</OPTION><OPTION value="University of Kalyani">University of 
        Kalyani</OPTION><OPTION value="University of Kashmir">University of 
        Kashmir</OPTION><OPTION value="University of Kerala">University of 
        Kerala</OPTION><OPTION value="University of Kota">University of 
        Kota</OPTION><OPTION value="University of Lucknow">University of 
        Lucknow</OPTION><OPTION value="University of Madras">University of 
        Madras</OPTION><OPTION value="University of Mumbai">University of 
        Mumbai</OPTION><OPTION value="University of Mysore">University of 
        Mysore</OPTION><OPTION value="University of North Bengal">University of 
        North Bengal</OPTION><OPTION 
        value="University of Petroleum and Energy Studies">University of 
        Petroleum and Energy Studies</OPTION><OPTION 
        value="University of Pune">University of Pune</OPTION><OPTION 
        value="University of Rajasthan">University of Rajasthan</OPTION><OPTION 
        value="Utkal University">Utkal University</OPTION><OPTION 
        value="Utkal University of Culture">Utkal University of 
        Culture</OPTION><OPTION value="Uttar Banga Krishi Vishwavidyalaya">Uttar 
        Banga Krishi Vishwavidyalaya</OPTION><OPTION 
        value="Uttar Pradesh Technical University">Uttar Pradesh Technical 
        University</OPTION><OPTION value="V B S Purvanchal University">V B S 
        Purvanchal University</OPTION><OPTION 
        value="Veer Kunwar Singh University">Veer Kunwar Singh 
        University</OPTION><OPTION value="Vidyasagar University">Vidyasagar 
        University</OPTION><OPTION value="Vikram University">Vikram 
        University</OPTION><OPTION value="Vinoba Bhave University">Vinoba Bhave 
        University</OPTION><OPTION value="Visva Bharti">Visva 
        Bharti</OPTION><OPTION 
        value="Visveswaraiah Technological University">Visveswaraiah 
        Technological University</OPTION><OPTION 
        value="West Bengal University of Animal &amp; Fishery Sciences">West 
        Bengal University of Animal &amp; Fishery Sciences</OPTION><OPTION 
        value="West Bengal University of Technology">West Bengal University of 
        Technology</OPTION><OPTION value="Women University">Women 
        University</OPTION><OPTION 
        value="Yashwantrao Chavan Maharashtra Open University">Yashwantrao 
        Chavan Maharashtra Open University</OPTION></SELECT> <BR> </TD></TR>
  <TR vAlign=top>
    <TD >6.</TD>
    <TD >Name of the Head</TD>
    <TD><SELECT name=ptitle> <OPTION value=Mr. selected>Mr.</OPTION> <OPTION 
        value=Mrs.>Mrs.</OPTION> <OPTION value=Shri>Shri</OPTION> <OPTION 
        value=Ms.>Ms.</OPTION> <OPTION value=Prof.>Prof.</OPTION> <OPTION 
        value=Dr.>Dr.</OPTION> <OPTION value=Hon.>Hon.</OPTION> <OPTION 
        value=Cmdr.>Cmdr.</OPTION></SELECT> <INPUT maxLength=100 name=pname> 
      &nbsp;Designation:<SELECT name=pdesig> <OPTION value=Principal 
        selected>Principal</OPTION> <OPTION value=VC>Vice Chancellor</OPTION> 
        <OPTION value=Director>Director</OPTION> <OPTION 
        value=Dean>Dean</OPTION> <OPTION value=Other>Other</OPTION></SELECT> 
</TD></TR>
  
  <TR vAlign=top>
    <TD >7.</TD>
    <TD >Faculties</TD>
    <TD>
      <TABLE>
        <TBODY>
        <TR>
          <TD><INPUT onclick=chk() type=checkbox value=Arts 
          name=faculty>Arts</TD>
          <TD><INPUT onclick=chk() type=checkbox value=Commerce 
            name=faculty>Commerce</TD>
          <TD><INPUT onclick=chk() type=checkbox value=Science 
            name=faculty>Science</TD></TR>
        <TR>
          <TD><INPUT onclick=chk() type=checkbox value="Teacher Education" 
            name=faculty>Teacher Education</TD>
          <TD><INPUT onclick=chk() type=checkbox value="Physical Education" 
            name=faculty>Physical Education.</TD>
          <TD><INPUT onclick=chk() type=checkbox value=Medical 
            name=faculty>Medical Sc.</TD></TR>
        <TR>
          <TD><INPUT onclick=chk() type=checkbox value=Engineering 
            name=faculty>Engineering and Tech.</TD>
          <TD><INPUT onclick=chk() type=checkbox value=Management 
            name=faculty>Management</TD>
          <TD><INPUT onclick=chk() type=checkbox value=Distance 
            name=faculty>Distance Edu.</TD></TR></TBODY></TABLE></TD></TR>
  <TR vAlign=top>
    <TD>&nbsp;</TD>
    <TD>Any other please add at the end:</TD>
    <TD><INPUT maxLength=255 size=50 name=faculties> </TD></TR>
  <TR vAlign=top>
    <TD >8.</TD>
    <TD >Total Number of (Numbers only)</TD>
    <TD>
      <TABLE>
        <TBODY>
        <TR>
          <TD>Teaching Staff:</TD>
          <TD><INPUT maxLength=5 size=5 name=teachstaff></TD></TR>
        <TR>
          <TD>Administrative &amp; Supportive Staff:</TD>
          <TD><INPUT maxLength=5 size=5 name=admstaff></TD></TR>
        <TR>
          <TD>Technical &amp; Professional Staff:</TD>
          <TD><INPUT maxLength=5 size=5 name=techstaff></TD></TR>
        <TR>
          <TD>Students:</TD>
          <TD><INPUT maxLength=5 size=5 
  name=students></TD></TR></TBODY></TABLE></TD></TR>
  <TR vAlign=top>
    <TD >9.</TD>
    <TD >Programmes offered<BR>[Eg.: B.A., M.A., B.Sc.]</TD>
    <TD><TEXTAREA name=progoffered rows=3 cols=50></TEXTAREA> 
</TD></TR></TBODY></TABLE><br><center><INPUT type=submit value=SUBMIT name=save> </center>
</FORM></CENTER>


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
		<LI><A href="notify.jsp">Notifications</A></LI>
     <LI><A href="cceviewstu.jsp">Selected Students</A></LI>
	 <LI><A href="ccecomp.jsp ">Companies </A></LI></UL>
  </LI></UL>
<SCRIPT src="dropdown/265.htm" 
type=text/javascript></SCRIPT></td></tr></table></center>

</Body>
</Html>


