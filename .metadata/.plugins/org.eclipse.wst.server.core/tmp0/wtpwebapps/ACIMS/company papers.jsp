<%@ page import="java.sql.*"%>
<%@page import="com.Dbconnection.Dbconnection"%>
<%try
{
  String uid=request.getParameter("uid1");
session.setAttribute("uid1",uid);
%>

<html>
<head>
<Script Language="JavaScript">
function xyz()
{
  window.open("timer.jsp?v=0","exampaper","width=1024,height=768,toolbar=false,status=false,menubar=false,directories=false,resizable=false");
}

</Script><title></title>
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
<BODY >
<input type=text value=<%=uid%> size="20" >
<table  valign="top" cellpadding=0 cellspacing=0 width="800"  align=center  bordercolor="#2A8DCC" >
 <tr><td valign=top class=to width="800" bgcolor="0F4F8D">
<table width="800" cellpadding=0 cellspacing=0 height="144" >
 <tr><td width="800" height="144"><IMG id=IMG1 height=144 src="img/sri1.gif" width="100%" ></td></tr>
<tr><td width="800" height="10"><IMG height=40 src="img/m021.gif" width=326 ></td></tr></table></tr>

  <table width="800" border="1"  bordercolor="#2A8DCC">
<tr><td valign=left width="200" class=ma colspan=2>


<table cellSpacing=0 cellPadding=0 width="100%" border=0>
<tr><td vAlign=center align=middle colSpan=2>



<tr><td height=15></td></tr>
<TR><TD vAlign=center align=middle ><IMG height=1 src="img/D2_Blueline.gif" width="98%"></TD></TR>


<TR>
                            <TD vAlign=center height=22><IMG height=5
                              src="img/D4_redbullet.gif" 
                             width=5> 
                            <FONT height=10
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <A class=links href="changepassword.jsp?v=0">Change Password</A></FONT></TD></TR>

<TR> <TD vAlign=center align=middle colSpan=2>
<IMG height=1 src="img/D2_Blueline.gif" width="98%"></TD></TR>


<TR>
                            <TD vAlign=center height=22><IMG height=5
                              src="img/D4_redbullet.gif" 
                             width=5> 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a class=links href="recruitment.jsp?v=0">Recruitment Procedures</FONT></TD></TR>

<TR>
                            <TD vAlign=center align=middle colSpan=2><IMG 
                              height=1
                              src="img/D2_Blueline.gif" 
                              width="98%"></TD></TR>


<TR>
                            <TD vAlign=center height=22><IMG height=5
                              src="img/D4_redbullet.gif" 
                             width=5> 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a class=links href="companypapers.jsp?v=0">Previous Papers</FONT></TD></TR>

<TR>
                            <TD vAlign=center align=middle colSpan=2><IMG 
                              height=1
                              src="img/D2_Blueline.gif" 
                              width="98%"></TD></TR>



<TR>
                            <TD vAlign=center height=22><IMG height=5
                              src="img/D4_redbullet.gif" 
                             width=5> 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a class=links href="schedule.jsp?v=0">Exam Schedule</FONT></TD></TR>

<TR><TD vAlign=center align=middle colSpan=2>
<IMG height=1 src="img/D2_Blueline.gif" width="98%"></TD></TR>
<TR>
                            <TD vAlign=center height=22><IMG height=5
                              src="img/D4_redbullet.gif" 
                             width=5> 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a class=links href="recruitment.jsp?uid1=<%=uid%>" onclick="xyz()" >Exam Paper</FONT></TD></TR>
							 
<TR> <TD vAlign=center align=middle colSpan=2>
<IMG height=1 src="img/D2_Blueline.gif" width="98%"></TD></TR>

<TR>
                            <TD vAlign=center height=22><IMG height=5
                              src="img/D4_redbullet.gif" 
                             width=5> 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a class=links href="results.jsp?v=0">Result</FONT></TD></TR>
<TR> <TD vAlign=center align=middle colSpan=2>
<IMG height=1 src="img/D2_Blueline.gif" width="98%"></TD></TR>

<TR>
                            <TD vAlign=center height=22><IMG height=5
                              src="img/D4_redbullet.gif" 
                             width=5> 
                            <FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#ffffff size=2>
                             <a class=links href="logout.jsp?v=0">Logout</FONT></TD></TR>
<TR> <TD vAlign=center align=middle colSpan=2>
<IMG height=1 src="img/D2_Blueline.gif" width="98%"></TD></TR>




</font></table></td>
<td width="600">

<table width=100% height=18 class=links>
<tr><td height=15></td></tr>
<tr>
<td bgcolor="0077c0" width="90" align=center><a style="color: white" class=link1 href="company papers.jsp">Satyam</a></td>
<td bgcolor="0077c0" width="80" align=center><a style="color: white" class=link1  href="wipro.jsp">Wipro</a></td>
<td bgcolor="0077c0" width="99" align=center><a style="color: white" class=link1  href="infosys.jsp">Infosys</a></td>
<td bgcolor="0077c0" width="78" align=center><a style="color: white" class=link1  href="ibm.jsp">IBM</a></td>
<td bgcolor="0077c0" width="150" align=center><a style="color: white" class=link1  href="tech.jsp">Tech Mahendra</a></td>
<td bgcolor="0077c0" width="99" align=center><a style="color: white" class=link1  href="cts.jsp">Cognizant</a></td></tr></table>



<br>
<table align=center width="90%">
<tr><td><center><h4><u><font color="0077c0">Sample Test Paper for Satyam</font></u><h4></center></tr></td>
<tr><td>1.Father’s age 3years back is twice the son’s age. the sum of father’s and son’s age after 10 years   from now is 66.what is father’s age? <br><br></tr></td>
<tr><td>2.	1 3 3 6 5 9 7 12__ __ __ <br><br></tr></td>
<tr><td>3.	3 8 27 112 __ ___ <br><br></tr></td>
<tr><td>4.	 There r 6 people named madhavi, pramod, pravven, asha, gopal, nisha.they r seated around the table.<br><br>

 &nbsp;&nbsp;&nbsp;1. madhavi and pramod always are left to a women.<br><br>

&nbsp;&nbsp;&nbsp;2. asha and gopal are always opposite to a man.<br><br>

&nbsp;&nbsp;&nbsp;3. some conditions are given and we have to find the order in which they sit. <br><br></tr></td>
<tr><td>5.	If a man had traveled 3km/hr faster he would have reached 40 min earlier, if he would have traveled 2 km/hr slower he would have reached 40 min late. what is distance he had traveled. <br><br></tr></td>
<tr><td>6.	John works for 60 days for the day he is present he is paid 7.00/- and for the day he is absent he is paid 3.00/- per day. if he is paid 170/-.how many days he is present. <br><br></tr></td>
<tr><td>7.	There r 4 links in a gold chain .1 has 5links,other has 4 links and the other 3 links. goldsmith takes 50.00paise to open the link and 1.00/- to attach the link. what is least cost to bake whole bracelet. <br><br>
<tr><td>8.	 A cyclist moves half the speed of Tonga driver and Tonga driver moves half the speed of man walking .If man walks at 3kms per hour what is the time that cyclist covers 27kms. </tr></td>
<tr><td>9.	There r 600 pages .there is 1 error on avg per page. what is the probability that there are n errors per page. <br><br></tr></td>
<tr><td>10.	A square is of side 1 km.A man travels first 2 sides with the 30 mph and third side with 60 kmph.what is the speed that man has to travel the fourth side if the avg speed is 60kmph <br><br></tr></td>
<tr><td>11.	A Student got 78 marks in avg of 4 subjects. the avg of 5 subjects is 80.what are the marks he got in 5th subject. <br><br></tr></td>
<tr><td>12.	How many kg of salt at 42 paisa per kg must a man mix with 25kg of salt at 24 paisa per kg so that he may, on selling the mixture at 40 paisa per kg gain 25% on the outlay? 
<br>A)15 kg B)20 kg C)25 kg D)28 kg E)none of these <br><br></tr></td>
<tr><td>13.	Find the least number which when divided by 20,25,30,36 and 48 leaves the remainders 15,20,25,31,43 respectively.
<br>A)3685 B)3585 C)3595 D)3535 E)None of these <br><br></tr></td>
<tr><td>14.	A sheet of metal in the form of a sector of a circle of angle 90 degrees and radius 16cm is folded to form an open conical cup. The capacity of the cup is
<br>A)64 sqrt(15)cm3 B)64 sqrt(5/3)TTcm3 C) 64 sqrt(5)TT D) 64/3sqrt(15)cm3 E)None of these <br><br></tr></td>
<tr><td>15.	A man distributes 0.375 of his money to his wife and 0.4 to his son. He has still Rs.3,375 left with him. How much did his wife get?
<br>A)4565 B)5625 C)4265 D)5265 E)None of these <br><br></tr></td>
<tr><td>16.	Three faces of a fair die are Yellow, two faces red and one blue.The die is tossed three times. The probability that the colours, yellow,red and blue appear in the first,second and third tosses respectively is 
<br>A)1/36 B)1/18 C)1/32 D)1/37 E)None of these <br><br></tr></td>
<tr><td>17.	At the foot of a mountain the elevation of its summit is 45 degrees. After ascending one KM towards the mountain upon an incline of 30 degrees, the elevation changes to 60 degrees. Find the Height of the mountain?<br> 
A)1.333Km B)1.366Km C)1.233Km D)1.266Km E)None of these <br><br></tr></td>
<tr><td>18.	The average of a couple was 23Yrs when they were married 5Yrs ago.The avg age of the couple and a child, who was born during the interval, is 20Yrs now. How old is the child now ?
<br>A)2 Yrs B)4 Yrs C)3 Yrs D)1 Yrs E)None of these <br><br></tr></td>
<tr><td>19.	Two liters of a mixture of alcohol and water contain 10% water. This is added to 4 litres of another mixture containing 8% water and half a litre of water is then added to the whole. Find the percentage of water in the resulting mixture.
<br>A)17 3/11% B)15 3/13% C)14 12/13% D)15 9/13% E)None of these <br><br></tr></td>
<tr><td>20.	Eight chairs are numbered 1 to 8. Two women and Three men wish to occupy one chair each. First the women choose the chairs marked 1 to 4, and then the men occupy the remaining chairs. Find the possible number of arrangement. 
<br>A)6C3 * 4C2 B)4C2 * 4P3 C)4P2 * 4P3 D)4P2 * 6P3 E)None of these </tr></td>
<br><br>

</table>















</td></tr>
</table>



<tr><td height="1"><table width="800" cellpadding=0 cellspacing=0>
 <tr><td class=fo >


<table cellpadding=0 cellspacing=0 width="800" >
  <tr><td width="48"><IMG height=36 src="m33.gif" width=42 align=left ></td>
    <td class=fo width="800">All Rights Reserved. </td>
    <td align=right width="220" class=fo><IMG height=36 src="m35.gif" width=214 ></td></tr>
 </table></td></tr>
</table>
</table></td></tr>
</table>

</center>
</BODY>
</HTML>
<%}
catch(Exception e)
{}
%>
