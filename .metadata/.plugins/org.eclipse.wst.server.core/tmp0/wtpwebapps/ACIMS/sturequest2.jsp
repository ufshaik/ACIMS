<%@ page import="java.sql.*"%>
<%@page import="com.Dbconnection.Dbconnection"%>
<%! Connection con=null;
    PreparedStatement aci,jre;
	Statement log,log1,log2,pst1,log21,log11;
	
    ResultSet rs,rs1,rs2,ry,rs3,jrs,rs11,rs31;
%>	
<%try
{
	
	String f1=request.getParameter("u");
	
	
	con=Dbconnection.getConnection();

    jre=con.prepareStatement("select count(*) from jkcdata where status=0");
        jrs=jre.executeQuery();
		jrs.next();
		


     log=con.createStatement();
	
	 String str="select code from jkcdata where roll='"+f1+"'";
	
	 rs2=log.executeQuery(str);
	 rs2.next();
	 
     String ta=rs2.getString(1);
	


     log21=con.createStatement();
	 String str21="select count(*) from colleges where coll_code='"+ta+"'";
	 rs31=log21.executeQuery(str21);
	 rs31.next();
	 int j=rs31.getInt(1);
	 if(j==0)
	 {
		 response.sendRedirect("sturequest.jsp?v=4");
	 }


     log2=con.createStatement();
	 String str2="select loginid from colleges where coll_code='"+ta+"'";
	 rs3=log2.executeQuery(str2);
	 rs3.next();
	
	 String ta1=rs3.getString(1)+"s";
   
	 
	 
	 
	  log11=con.createStatement();
	
	 String str11="select count(*) from "+ta1+" where REG_ID='"+f1+"'";
	  rs11=log11.executeQuery(str11);
	 rs11.next();
	 int i1=rs11.getInt(1);
	 if(i1==0)
	 {
		 response.sendRedirect("sturequest.jsp?v=4");
	 }
	 
	 
	 
	 
	 log1=con.createStatement();
	
	 String str1="select * from "+ta1+" where REG_ID='"+f1+"'";
	  rs=log1.executeQuery(str1);
	 rs.next();
	
	
	 	 String id1=rs.getString(1);
	  pst1=con.createStatement();
	  
	 String str3="select to_char(date_of_birth,'dd/mon/yyyy'),to_char(date_of_joining,'dd/mon/yyyy') from "+ta1+"  where REG_ID='"+f1+"'";

	 ry=pst1.executeQuery(str3);
	 ry.next();
	 

	 
	 //Session.setAtrribute("id1",f1);%>



<html>
<head>
<title></title>
<link rel=stylesheet href=st.css type=text/css>



</head>
<BODY>






<table  valign="top" cellpadding=0 cellspacing=0 width="800"  align=center  bordercolor="#2A8DCC" >
 <tr><td valign=top class=to width="800" bgcolor="0F4F8D">
<table width="800" cellpadding=0 cellspacing=0 height="144" >
 <tr><td width="800" height="144"><IMG id=IMG1 height=144 src="img/sri1.gif" width="100%" ></td></tr>
<tr><td width="800" height="10"><IMG height=40 src="img/m021.gif" width=326> </td></tr></table></tr>

<tr><td><table width="800" border="1" bordercolor="#0077c0" height="500" >
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
                             <a class=links href="logout.jsp?v=0">Logout</FONT></TD></TR>

<TR><TD vAlign=center align=middle colSpan=2>
<IMG height=1 src="img/D2_Blueline.gif" width="98%"></TD></TR>

</font></table>

</td>
<td width="600"  valign=top bgcolor=white>

<center>
<br><br><br>
<table border=0 width="400" align="center" height="578" bgcolor=white>
<caption><h4><strong><u><font color="#0077c0">STUDENT DETAILS FORM OF <%=f1%></font></u></strong></h4></caption>
<form action="sturequest3.jsp" method=post>
<tr><td bgcolor="A9C6E2" height=5 align=center width=40%>Name:</td><td bgcolor="#EFEFEF" height=5 align=center><%=rs.getString(3)%>&nbsp;<%=rs.getString(2)%></td></tr>
<tr><td bgcolor="A9C6E2" height=5 align=center>Regestraion-id:</td><td bgcolor="#EFEFEF" height=5 align=center><input type=hidden name="id" value=<%=id1%>><%=id1%></td></tr>

<tr><td bgcolor="A9C6E2" height=5 align=center>S.S.C(%):</td><td bgcolor="#EFEFEF" height=5 align=center><%=rs.getString(13)%></td></tr>
<tr><td bgcolor="A9C6E2" height=5 align=center>Inter(%):</td><td bgcolor="#EFEFEF" height=5 align=center><%=rs.getString(14)%></td></tr>
<tr><td bgcolor="A9C6E2" height=5 align=center>B-Tech(%):</td><td bgcolor="#EFEFEF" height=5 align=center><%=rs.getString(18)%></td></tr>


<tr><td bgcolor="A9C6E2" height=5 align=center>Father Name:</td><td bgcolor="#EFEFEF" height=5 align=center><%=rs.getString(4)%></td></tr>
<tr><td bgcolor="A9C6E2" height=5 align=center>Father Occupation:</td><td bgcolor="#EFEFEF" height=5 align=center><%=rs.getString(5)%></td></tr>

<tr><td bgcolor="A9C6E2" height=5 align=center>Date of joining:</td><td bgcolor="#EFEFEF" height=5 align=center><%=ry.getString(2)%></td></tr>
<tr><td bgcolor="A9C6E2" height=5 align=center>Gender</td><td bgcolor="#EFEFEF" height=5 align=center><%=rs.getString(16)%></td></tr> 
<tr><td bgcolor="A9C6E2" height=5 align=center>D.O.B:</td><td bgcolor="#EFEFEF" height=5 align=center><%=ry.getString(1)%></td></tr>
<tr><td bgcolor="A9C6E2" height=5 align=center>Branch:</td><td bgcolor="#EFEFEF" height=5 align=center><%=rs.getString(7)%></td></tr>
<tr><td bgcolor="A9C6E2" height=5 align=center>Category</td><td bgcolor="#EFEFEF" height=5 align=center><%=rs.getString(6)%></td></tr>
<tr><td bgcolor="A9C6E2" height=5 align=center>course</td><td bgcolor="#EFEFEF" height=5 align=center><%=rs.getString(20)%></td></tr>

<tr><td bgcolor="A9C6E2" height=5 align=center>District</td><td bgcolor="#EFEFEF" height=5 align=center><%=rs.getString(8)%></td></tr>

<tr><td bgcolor="A9C6E2" height=5 align=center>ADDRESS:</td><td bgcolor="#EFEFEF" height=5 align=center><%=rs.getString(21)%></td></tr>
<tr><td bgcolor="A9C6E2" height=5 align=center>Contact NO.:</td><td bgcolor="#EFEFEF" height=5 align=center><%=rs.getString(9)%></td></tr>
<tr><td bgcolor="A9C6E2" height=5 align=center>Email-id:</td><td bgcolor="#EFEFEF" height=5 align=center><%=rs.getString(10)%></td></tr>
<tr><td><input type="submit" value="Accept" name=f></td><td><input type="submit" value="delete" name=f>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class=link2 href="sturequest.jsp?v=0">&lt;&lt;&nbsp;back</a></td></tr>
<tr><td height=20></td></tr>
</form>
</table>
</center>

















</td></tr>
</table></td></tr>












<tr><td height="1"><table width="800" cellpadding=0 cellspacing=0>
 <tr><td class=fo >


<table cellpadding=0 cellspacing=0 width="800" >
  <tr><td width="48"><IMG height=36 src="img/m33.gif" width=42 align=left ></td>
    <td class=fo width="800">All Rights Reserved. </td>
    <td align=right width="220" class=fo><IMG height=36 src="img/m35.gif" width=214 ></td></tr>
 </table></td></tr>

</table></td></tr>
</table>


</BODY>
</HTML>






<%}
catch(Exception e)
{
	out.println(e);
}
finally
{con.close();
}%>
