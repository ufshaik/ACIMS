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
<td bgcolor="0077c0" width="90" align=center><a class=link1 href="company papers.jsp">Satyam</a></td>
<td bgcolor="0077c0" width="80" align=center><a class=link1  href="wipro.jsp">Wipro</a></td>
<td bgcolor="0077c0" width="99" align=center><a class=link1  href="infosys.jsp">Infosys</a></td>
<td bgcolor="0077c0" width="78" align=center><a class=link1  href="ibm.jsp">IBM</a></td>
<td bgcolor="0077c0" width="150" align=center><a class=link1  href="tech.jsp">Tech Mahendra</a></td>
<td bgcolor="0077c0" width="99" align=center><a class=link1  href="cts.jsp">Cognizant</a></td></tr></table>
<br>
<table align=center width="90%">
<tr><td><center><h4><u><font color="0077c0">Sample Test Paper for Cts</font></u><h4></center></tr></td>



<tr><td>Synonyms <br><br></tr></td>
<tr><td>1. Merry= Gay,Happy<br><br></tr></td>
<tr><td>2. Alienate= Estrange <br><br></tr></td>
<tr><td>3. Solicit= To request <br><br></tr></td>
<tr><td>4.Heap= To pile <br><br></tr></td>
<tr><td>5.Cargo= Freight <br><br></tr></td>
<tr><td>6.Momentary= Transient <br><br></tr></td>
<tr><td>7. Volume=Quantity <br><br></tr></td>
<tr><td>8.Veer=Diverge <br><br></tr></td>
<tr><td>9.Dispe=Dissipate <br><br></tr></td>
<tr><td>10.Admonish=Cautious <br><br></tr></td>
<tr><td>Antonym <br><br>
<tr><td>21) Description: litigate<br><br>
<tr><td>Choice: spare, sue, legalize, move upon<br><br></tr></td>
<tr><td>22) Description: precipitate<br><br>
Choice: quicken, lethargic, hurried, rapt<br><br></tr></td>
<tr><td>23) Description: alienate<br><br>
Choice: enemy, disaffect, push, befriend<br><br></tr></td>
<tr><td>24) Description: solicit<br><br>
Choice: implore, explain, grant, view<br><br></tr></td>
<tr><td>25) Description: hamper<br><br>
Choice: impede, facilitate, hinder, block<br><br></tr></td>
<tr><td>26) Description: confiscate<br><br>
Choice: give, possess, seize, command<br><br></tr></td>
<tr><td> 27) Description: covet<br><br>
Choice: loved, important, beautiful, hate<br><br></tr></td>
<tr><td> 28) Description: dogmatic<br><br>
Choice: flexible, resilient, stubborn, suspicious<br><br></tr></td>
 <tr><td>29) Description: clutch<br><br>
Choice: hold, grab, release, spread<br><br></tr></td>
 <tr><td>30) Description: motley<br><br>
Choice: bulky, speckled, homogeneous, different<br><br></tr></td>


<tr><td>1)In a well of 20feet depth, a frog jumps 5feet up in the morning and comes<br><br>
4feet down in the <br><br>
evening, on which day the frog gets out of the well.<br><br></tr></td>
<tr><td>2)Next number in the series:<br><br>
77,49,36,18,?</tr></td>
<tr><td>3)A & B are playing a game .There ar<br><br>e 8 oranges in a row on the table.one
Player can take 1-4
oranges in a pick (a maximum of 4),one who p<br><br>icks the last orange wins the
game.'A' plays first
How </tr></td>
<tr><td>4)9/10 or 10/11 which is greater.<br><br></tr></td>

<tr><td>5) (x-y/3)-(y-x/3)=?<br><br></tr></td>

<tr><td>6)x:y=3 and x+y=80 what is t<br><br>he value of y?many oranges should he pick first time inorder to win the game. </tr></td>

<tr><td>7)Average of 5 number is -10 sum of <br><br>3 numbers is 16,what is the average of
other two numbers?
<br><br></tr></td>
<tr><td>8)16 litre can, 7 litre can,3 litre can,the customer has to be given 11<br><br>
litres<br><br>
of milk using<br><br>
all the three cans only explain?<br><br></tr></td>

<tr><td>9)A car has run 10000 miles using 5 tyres interchangably,To have a equal<br><br>
wornout by all tyres<br><br>
how many miles each tyre should have run.<br><br>
</tr></td>
<tr><td>10)Three men goes to a hotel to stay ,the clerk says $30 per room/day so all<br><br>
the three plansv<br><br>
to stay in one room so each pays $10.After some time the clerk realises that<br><br>
he made a mistake<br><br>
of collecting $30 but the room cost only $25,there fore he decides to return<br><br>
$5 to them<br><br>
so he calls the room boy and gives him $5 asking him to return. The room boy<br><br>
keeps $2 with him<br><br>
and he returns only $3($1 for each).<br><br>
Now Totally all have paid $9 each($27)+room boy $2 which is equal to<br><br>
$27.where<br><br>
did $1 go,who<br><br>
has made the mistake?<br><br></tr></td>

<tr><td>All the questions are of multiple choice type. You have to answer the<br><br>
questions based on the preceding paragraph. All the questions have<br><br>
the same answer choice. The choices are as given below:<br><br>
(a) True.<br><br>
(b) False.<br><br>
(c) Cannot Say.<br><br></tr></td>

<tr><td>Consider the following paragraph:
Researchers in Mumbai have found that certain types
of gallstones can be dissolved by injecting them with a gasoline<br><br>
additive in the form of ether. The ether is injected through a tube<br><br>
directly into the gall bladder. The one-day treatment works only on<br><br>
cholesterol-based stones, not those composed largely of calcium.<br><br>
However, as the cholesterol stones are by far the most common type,<br><br>
for millions of gallstone sufferers the treatment should offer a<br><br>
welcome alternative to surgery, the commonest option in most<br><br>
hospitals.<br><br>

# "It takes more than one day for ether to dissolve a calcium-based<br><br>
gallstone".<br><br>

# "Gallstones can only be dissolved by injections".<br><br>

# "Gallstones can quickly be cured with surgery".<br><br>

# "Ether is largely used for dissolving gallstones".<br><br>

# "Calcium stones can be cured in one day".<br><br>

# "Hundreds of people contains calcium stones".<br><br></tr></td>








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
