<%@ page import="java.sql.*"%>
<%@page import="com.Dbconnection.Dbconnection"%>
<%! Connection con=null;
    PreparedStatement pst;
    ResultSet rs;
%>
<%
try
{ 
	String uid=(String)session.getAttribute("uid1");
	int i=Integer.parseInt(request.getParameter("num"));
	String cat=request.getParameter("s2");
	String cat1=request.getParameter("s1");
	String ta=uid+"s";
	   if(uid!=null)
  {}
else
{
      response.sendRedirect("index.jsp");
  }

	   con=Dbconnection.getConnection();
	   
if(cat1.equals("b"))
	{
        
		     if(cat.equals("s"))
	         {
              pst=con.prepareStatement("select reg_id,firstname,lastname,marks,branch from "+ta+" where  category='s.c' order by branch,marks desc,inter desc,ssc desc");
			  }
              else if(cat.equals("b"))
	          {
	              pst=con.prepareStatement("select reg_id,firstname,lastname,marks,branch from "+ta+" where  category='b.c' order by branch,marks desc,inter desc,ssc desc");
			   }
	           else
	           {
		            pst=con.prepareStatement("select reg_id,firstname,lastname,marks,branch from "+ta+" order by branch,marks desc,inter desc,ssc desc");
					
	           }
       rs=pst.executeQuery();
      
	  %>
	  <%session.setAttribute("uid1",uid);%>
<html>
<head>
<title></title>
<link rel=stylesheet href=st.css type=text/css>
<LINK 
media=screen,projection,print 
href="dropdown/main.css" type=text/css 
rel=stylesheet>


<BODY bgcolor="#A9B1B9">




<table  valign="top" cellpadding=0 cellspacing=0 width="800"  align=center  bordercolor="#2A8DCC" >
 <tr><td valign=top class=to width="800" bgcolor="0F4F8D">
<table width="800" cellpadding=0 cellspacing=0 height="144" >
 <tr><td width="800" height="144"><IMG id=IMG1 height=144 src="img/sri1.gif" width="100%" ></td></tr>
<tr><td width="800" height="10"><IMG height=40 src="img/m021.gif" width=326> </td></tr></table></tr>

<tr><td>
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
<td width="600" height=400 valign=top>

<table  width="500" align=center>

<tr><td>


<tr><td bgcolor="A9C6E2" height=20 align=center>Registration id</td><td bgcolor="A9C6E2" height=20 align=center>Name of the student</td><td bgcolor="A9C6E2" height=20 align=center>percentage of marks</td><td bgcolor="A9C6E2" height=20 align=center>branch</td></tr>


<%int j=0,c=0;
   String x=" ";
    while(rs.next())
	{
       String br=rs.getString(5);
	   if(i==j&&i>=1)
        {
		   if(x.equals(br))
			{
                    				  j=i;
			}
			else
			{
				
				%><tr><td height=20></td></tr>
				<%
				j=1;x=br;
	         %><tr><td bgcolor="#EFEFEF" height=20 align=center><%=rs.getString(1)%></td><td bgcolor="#EFEFEF" height=20 align=center><%=rs.getString(3)%>&nbsp;<%=rs.getString(2)%></td><td bgcolor="#EFEFEF" height=20 align=center><%=rs.getString(4)%></td><td bgcolor="#EFEFEF" height=20 align=center><%=br%></td></tr><%
  
			}
		}
		else
		{
           if(j==0)
			{%><tr><td height=20></td></tr>
			<%}
			 x=br;
%><tr><td bgcolor="#EFEFEF" height=20 align=center><%=rs.getString(1)%></td><td bgcolor="#EFEFEF" height=20 align=center><%=rs.getString(3)%>&nbsp;<%=rs.getString(2)%></td><td bgcolor="#EFEFEF" height=20 align=center><%=rs.getString(4)%></td><td bgcolor="#EFEFEF" height=20 align=center><%=br%></td></tr>
<%j++;
}
}%>
         





</td></tr>
</table>
</table>




<tr><td><table width="800" cellpadding=0 cellspacing=0>
 <tr><td class=fo >


<table cellpadding=0 cellspacing=0 width="800" >
  <tr><td width="48"><IMG height=36 src="img/m33.gif" width=42 align=left ></td>
    <td class=fo width="800">All Rights Reserved.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
    <td align=right width="220" class=fo><IMG height=36 src="img/m35.gif" width=214 ></td></tr>
 </table></td></tr>
</table>
</td></tr>
</table>

</BODY>
</HTML>

<%}

	
	
	else
	{

       if(cat.equals("s"))
	   {
          pst=con.prepareStatement("select reg_id,firstname,lastname,marks,branch from "+ta+" where category='s.c' order by marks desc,inter desc,ssc desc");
        }
       else if(cat.equals("b"))
	   {
	      pst=con.prepareStatement("select reg_id,firstname,lastname,marks,branch from "+ta+" where category='b.c' order by marks desc,inter desc,ssc desc");
	    }
	    else
	    {
		pst=con.prepareStatement("select reg_id,firstname,lastname,marks,branch from "+ta+" order by marks desc,inter desc,ssc desc");
	    }
	
        rs=pst.executeQuery();

   %>
	<%session.setAttribute("uid1",uid);%>



<html>
<head>
<title></title>
<link rel=stylesheet href=st.css type=text/css>
<LINK 
media=screen,projection,print 
href="dropdown/main.css" type=text/css 
rel=stylesheet>


<BODY bgcolor="#A9B1B9">




<table  valign="top" cellpadding=0 cellspacing=0 width="800"  align=center  bordercolor="#2A8DCC" >
 <tr><td valign=top class=to width="800" >
<table width="800" cellpadding=0 cellspacing=0 height="144" >
 <tr><td width="800" height="144"><IMG id=IMG1 height=144 src="img/sri1.gif" width="100%" ></td></tr>
<tr><td width="800" height="10"><IMG height=40 src="img/m021.gif" width=326> </td></tr></table></tr>

<tr><td><table width="800" border="1"  bordercolor="#2A8DCC" bgcolor=white>
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

<td valign=top  width=600 height=400><br><br><br><br>
<table align=center width=500>
<tr><td bgcolor="A9C6E2" height=20 align=center>Registration id</td><td bgcolor="A9C6E2" height=20 align=center>Name of the student</td><td bgcolor="A9C6E2" height=20 align=center>percentage of marks</td><td bgcolor="A9C6E2" height=20 align=center>branch</td></tr>


<%int j=0;
    
	while(rs.next())
	{
	   if(i==j)
        {
		   break;
		}
%><tr><td bgcolor="#EFEFEF" height=20 align=center><%=rs.getString(1)%></td><td bgcolor="#EFEFEF" height=20 align=center><%=rs.getString(3)%>&nbsp;<%=rs.getString(2)%></td><td bgcolor="#EFEFEF" height=20 align=center><%=rs.getString(4)%></td><td bgcolor="#EFEFEF" height=20 align=center><%=rs.getString(5)%></td></tr><tr><td height="5"></td></tr><%j++;}%>
 </table>      





</td></tr>
</table></td></tr>



<tr><td><table width="800" cellpadding=0 cellspacing=0>
 <tr><td class=fo >


<table cellpadding=0 cellspacing=0 width="800" >
  <tr><td width="48"><IMG height=36 src="img/m33.gif" width=42 align=left ></td>
    <td class=fo width="800">All Rights Reserved.</td>
    <td align=right width="220" class=fo><IMG height=36 src="img/m35.gif" width=214 ></td></tr>
 </table></td></tr>
</table>
</td></tr>
</table>

</BODY>
</HTML>
<%
	}}
catch(Exception e)
{
	out.println(e);
}
finally
{
    con.close();
}
%>
