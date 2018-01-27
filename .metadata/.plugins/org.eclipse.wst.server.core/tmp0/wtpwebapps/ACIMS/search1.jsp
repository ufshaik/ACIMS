<%@ page import="java.sql.*"%>
<%!
Connection con=null;
Statement stmt1,stmt3;
 ResultSet rs=null,rs2=null;
  String val; boolean flag=false;   
%>
<%
try
 {
  val=request.getParameter("Search");
  if((val.equals("JNTU"))||(val.equals("jntu")))
	  val="Jawaharla Nehru Technological University";
  //out.println(val);
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/acims","root","");
  stmt1=con.createStatement();
  String s="select  Coll_Name,coll_code,Status,AFFILIATED from colleges where  status!='onprocess' and status!='requesting' and (coll_name like '%"+val+"%' or affiliated like '%"+val+"%' or coll_code like '%"+val+"%' or affiliated like '%"+val+"%' or status like '"+val+"' )  order by coll_name";
 // out.println(s);
  rs=stmt1.executeQuery(s);
//  rs.next();

 
  
  %>

<html>
<head>
<title></title>
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

<tr><td height=400 valign=top>

<% 
    
   if(rs.next()==true)
      flag=true; 
   else
     flag=false; 
   if(flag==true)
 {
    %>


 <Table align=center border=0 width=98% >
    <Tbody>
    
<TR bgColor=#a9c6e2>
                            <TD width="6%">&nbsp; </TD>
                            <TD width="66%">
                              <DIV align=center><FONT size=1><B><FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#000000>Name of the 
                              Colleges/</FONT></B></FONT><FONT size=1><B><FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#000000>Location</FONT></B></FONT></DIV></TD>
							  <TD width="50%">
                              <DIV align=center><FONT size=1><B><FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#000000>Affiliated</FONT></B></FONT></DIV></TD>
                            <TD width="15%">
                              <DIV align=center><FONT size=1><B><FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#000000>Accredited 
                              Status</FONT></B></FONT></DIV></TD>
                            <TD width="13%">
                              <DIV align=center><FONT size=1><B><FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color=#000000>Peer Team 
                              Report</FONT></B></FONT></DIV></TD></TR>
<%int i=1;
while(flag)
	{  
      String code=rs.getString(2);
	  String s2="select city,website from CCDETAILS where COLL_CODE='"+code+"'";
    stmt3=con.createStatement();
   rs2=stmt3.executeQuery(s2);
	rs2.next();   
	  String website=rs2.getString(2);
  
	   %>
<Tr>
<TD bgcolor="EFEFEF" align=center><FONT face="Verdana, Arial, Helvetica, sans-serif" color=#000000 size=2>
    <%=i%> </font> 
	 <TD bgcolor="EFEFEF" width="50%"><FONT face="Verdana, Arial, Helvetica, sans-serif" color=#000000 size=2>
     <%=rs.getString(1)%>,
	 <%=rs2.getString(1)%>,<a href="http://<%=website%>" target="_blank"><%=website%></a></font> 
	 <TD bgcolor="EFEFEF" align=left width="50%"><FONT face="Verdana, Arial, Helvetica, sans-serif" color=#000000 size=2>
     <%=rs.getString(4)%></font> 
	 <TD bgcolor="EFEFEF" align=center><FONT face="Verdana, Arial, Helvetica, sans-serif" color=#000000 size=2>
     <%=rs.getString(3)%></font>
	 <TD bgcolor="EFEFEF" align=center><FONT face="Verdana, Arial, Helvetica, sans-serif" color=#000000 size=2>
     <A href="reportinfo.jsp?cc=<%=code%>">Report </font>

   <%i=i+1;flag=rs.next();
   }
   %></td></tr></table><%}
else
{
    %><Table align=center border=0 width=98% >
	<tr><td height=300>
	<b><center><FONT face="Verdana, Arial, Helvetica, sans-serif" color=red size=2>No record available.<br><br>Please make sure of text entered</center></b></font>
	</td></tr></table>
	
	<%
}%>

</tbody></table>




<table width="780" cellpadding=0 cellspacing=0>
 <tr><td class=fo >
<table cellpadding=0 cellspacing=0 width="821" >
  <tr><td width="48"><IMG height=36 src="img/m33.gif" width=42 align=left ></td>
    <td class=fo width="737">All Rights Reserved.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
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
<%}
catch(Exception e)
{}
%>
