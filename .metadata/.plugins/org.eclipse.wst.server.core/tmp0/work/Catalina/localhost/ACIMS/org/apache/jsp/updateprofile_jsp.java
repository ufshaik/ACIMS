/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.26
 * Generated at: 2016-04-12 06:49:58 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import com.Dbconnection.Dbconnection;

public final class updateprofile_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


Connection con=null;
Statement stmt1,stmt2,stmt3,stmt4,stmt5,stmt6,stmt7,col;
 ResultSet rs=null,rs1=null,rs2=null,rs3=null,rs5=null,rs6=null,rs10=null;

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

String uid=(String)session.getAttribute("uid1");
   if(uid!=null)
  {}
else
{
      response.sendRedirect("index.jsp");
  }

      out.write('\r');
      out.write('\n');
      out.write('	');
session.setAttribute("uid1",uid);
      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<title></title>\r\n");
      out.write("<link rel=stylesheet href=st.css type=text/css>\r\n");
      out.write("<LINK \r\n");
      out.write("media=screen,projection,print \r\n");
      out.write("href=\"dropdown/main.css\" type=text/css \r\n");
      out.write("rel=stylesheet>\r\n");
      out.write("<LINK href=\"letter/style.css\" type=text/css \r\n");
      out.write("rel=stylesheet>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<SCRIPT language=JavaScript>\r\n");
      out.write("function chk()\r\n");
      out.write("{\r\n");
      out.write("\tdocument.tedata.faculties.value = \"\";\r\n");
      out.write("\tfor(i=0; i <= 8; i++)\r\n");
      out.write("\t{\r\n");
      out.write("\t\tif ( document.tedata.faculty[i].checked )\r\n");
      out.write("\t\t{\r\n");
      out.write("\t\t\tdocument.tedata.faculties.value = document.tedata.faculties.value + document.tedata.faculty[i].value + \", \";\r\n");
      out.write("\t\t}\r\n");
      out.write("\t}\r\n");
      out.write("\tdocument.tedata.faculties.value = document.tedata.faculties.value.substr(0,document.tedata.faculties.value.length - 2);\r\n");
      out.write("\treturn true;\r\n");
      out.write("}\r\n");
      out.write("</script></head>\r\n");
      out.write("\r\n");
try
 {
   
	con=Dbconnection.getConnection();
	
  col=con.createStatement();
  String cc="select COLL_CODE from colleges where LOGINID='"+uid+"'";
  //out.println(s);
  rs10=col.executeQuery(cc);
  rs10.next();
  String colcode=rs10.getString(1);
  //out.println(colcode);
session.setAttribute("ccode",colcode);
stmt1=con.createStatement();
  String s="select * from colleges where COLL_CODE='"+colcode+"'";
  //out.println(s);
  rs=stmt1.executeQuery(s);
  rs.next();
  stmt2=con.createStatement();
  String s1="select * from ccdetails where COLL_CODE='"+colcode+"'";
  rs1=stmt2.executeQuery(s1);
  rs1.next();
 stmt3=con.createStatement();
  String s2="select * from colldetails where COLL_CODE='"+colcode+"'";
  rs2=stmt3.executeQuery(s2);
  rs2.next();
 String email=rs1.getString(8);
  String collegecode=rs.getString(2);
 stmt4=con.createStatement();
  String s3="select DATE_EST from colleges where COLL_CODE='"+colcode+"'";
  rs3=stmt4.executeQuery(s3);
  rs3.next();
  
  
  String val=request.getParameter("v");
  
      out.write("\r\n");
      out.write("<BODY >\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<table  valign=\"top\" cellpadding=0 cellspacing=0 width=\"773\"  align=center border=1 bordercolor=\"#2A8DCC\" >\r\n");
      out.write(" <tr><td valign=top class=to width=\"820\" bgcolor=\"0F4F8D\">\r\n");
      out.write("<table width=\"800\" cellpadding=0 cellspacing=0 height=\"144\" >\r\n");
      out.write(" <tr><td width=\"800\" height=\"144\"><IMG id=IMG1 height=144 src=\"img/sri1.gif\" width=\"100%\" ></td></tr>\r\n");
      out.write("<tr><td width=\"800\" height=\"10\"><IMG height=40 src=\"img/m021.gif\" width=326/></td></tr></table></tr>\r\n");
      out.write("\r\n");
      out.write("<tr><td width=\"800\"><table width=\"800\" border=\"1\"  bordercolor=\"#0077c0\">\r\n");
      out.write("<tr><td valign=left width=\"200\" class=ma colspan=2>\r\n");
      out.write("\r\n");
      out.write("<table cellSpacing=0 cellPadding=0 width=\"100%\" border=0>\r\n");
      out.write("<tr><td vAlign=center align=middle colSpan=2>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<tr><td height=15></td></tr>\r\n");
      out.write("<TR><TD vAlign=center align=middle ><IMG height=1 src=\"img/D2_Blueline.gif\" width=\"98%\"></TD></TR>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<TR>\r\n");
      out.write("                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5\r\n");
      out.write("                              src=\"img/D4_redbullet.gif\" \r\n");
      out.write("                             width=5>&nbsp; \r\n");
      out.write("                            <FONT height=10\r\n");
      out.write("                              face=\"Verdana, Arial, Helvetica, sans-serif\" \r\n");
      out.write("                              color=#ffffff size=2>\r\n");
      out.write("                             <A class=links href=\"updateprofile.jsp?v=0\">Update profile</A></FONT></TD></TR>\r\n");
      out.write("\r\n");
      out.write("<TR> <TD vAlign=center align=middle colSpan=2>\r\n");
      out.write("<IMG height=1 src=\"img/D2_Blueline.gif\" width=\"98%\"></TD></TR>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<TR>\r\n");
      out.write("                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5\r\n");
      out.write("                              src=\"img/D4_redbullet.gif\" \r\n");
      out.write("                             width=5>&nbsp; \r\n");
      out.write("                            <FONT \r\n");
      out.write("                              face=\"Verdana, Arial, Helvetica, sans-serif\" \r\n");
      out.write("                              color=#ffffff size=2>\r\n");
      out.write("                             <a class=links href=\"changepassword.jsp?v=0\">Changepassword</FONT></TD></TR>\r\n");
      out.write("\r\n");
      out.write("<TR>\r\n");
      out.write("                            <TD vAlign=center align=middle colSpan=2><IMG \r\n");
      out.write("                              height=1\r\n");
      out.write("                              src=\"img/D2_Blueline.gif\" \r\n");
      out.write("                              width=\"98%\"></TD></TR>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<TR>\r\n");
      out.write("                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5\r\n");
      out.write("                              src=\"img/D4_redbullet.gif\" \r\n");
      out.write("                             width=5>&nbsp; \r\n");
      out.write("                            <FONT \r\n");
      out.write("                              face=\"Verdana, Arial, Helvetica, sans-serif\" \r\n");
      out.write("                              color=#ffffff size=2>\r\n");
      out.write("                             <a class=links href=\"addstu.jsp?v=0\">Student Details</FONT></TD></TR>\r\n");
      out.write("\r\n");
      out.write("<TR>\r\n");
      out.write("                            <TD vAlign=center align=middle colSpan=2><IMG \r\n");
      out.write("                              height=1\r\n");
      out.write("                              src=\"img/D2_Blueline.gif\" \r\n");
      out.write("                              width=\"98%\"></TD></TR>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<TR>\r\n");
      out.write("                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5\r\n");
      out.write("                              src=\"img/D4_redbullet.gif\" \r\n");
      out.write("                             width=5>&nbsp; \r\n");
      out.write("                            <FONT \r\n");
      out.write("                              face=\"Verdana, Arial, Helvetica, sans-serif\" \r\n");
      out.write("                              color=#ffffff size=2>\r\n");
      out.write("                             <a class=links href=\"deleteid.jsp?v=0\">Delete Details</FONT></TD></TR>\r\n");
      out.write("\r\n");
      out.write("<TR> <TD vAlign=center align=middle colSpan=2>\r\n");
      out.write("<IMG height=1 src=\"img/D2_Blueline.gif\" width=\"98%\"></TD></TR>\r\n");
      out.write("\r\n");
      out.write("<TR>\r\n");
      out.write("                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5\r\n");
      out.write("                              src=\"img/D4_redbullet.gif\" \r\n");
      out.write("                             width=5>&nbsp; \r\n");
      out.write("                            <FONT \r\n");
      out.write("                              face=\"Verdana, Arial, Helvetica, sans-serif\" \r\n");
      out.write("                              color=#ffffff size=2>\r\n");
      out.write("                             <a class=links href=\"addmarks.jsp?v=0\">Marks Details</FONT></TD></TR>\r\n");
      out.write("\r\n");
      out.write("<TR><TD vAlign=center align=middle colSpan=2>\r\n");
      out.write("<IMG height=1 src=\"img/D2_Blueline.gif\" width=\"98%\"></TD></TR>\r\n");
      out.write("<TR>\r\n");
      out.write("                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5\r\n");
      out.write("                              src=\"img/D4_redbullet.gif\" \r\n");
      out.write("                             width=5>&nbsp; \r\n");
      out.write("                            <FONT \r\n");
      out.write("                              face=\"Verdana, Arial, Helvetica, sans-serif\" \r\n");
      out.write("                              color=#ffffff size=2>\r\n");
      out.write("                             <a class=links href=\"addatt.jsp?v=0\">Attendance Details</FONT></TD></TR>\r\n");
      out.write("<TR> <TD vAlign=center align=middle colSpan=2>\r\n");
      out.write("<IMG height=1 src=\"img/D2_Blueline.gif\" width=\"98%\"></TD></TR>\r\n");
      out.write("\r\n");
      out.write("<TR>\r\n");
      out.write("                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5\r\n");
      out.write("                              src=\"img/D4_redbullet.gif\" \r\n");
      out.write("                             width=5>&nbsp; \r\n");
      out.write("                            <FONT \r\n");
      out.write("                              face=\"Verdana, Arial, Helvetica, sans-serif\" \r\n");
      out.write("                              color=#ffffff size=2>\r\n");
      out.write("                             <a class=links href=\"staffdetails.jsp?v=0\">Enter Staff Details</FONT></TD></TR>\r\n");
      out.write("<TR> <TD vAlign=center align=middle colSpan=2>\r\n");
      out.write("<IMG height=1 src=\"img/D2_Blueline.gif\" width=\"98%\"></TD></TR>\r\n");
      out.write("\r\n");
      out.write("<TR>\r\n");
      out.write("                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5\r\n");
      out.write("                              src=\"img/D4_redbullet.gif\" \r\n");
      out.write("                             width=5>&nbsp; \r\n");
      out.write("                            <FONT \r\n");
      out.write("                              face=\"Verdana, Arial, Helvetica, sans-serif\" \r\n");
      out.write("                              color=#ffffff size=2>\r\n");
      out.write("                             <a class=links href=\"scholarship.jsp?v=0\">Scholarship Details</FONT></TD></TR>\r\n");
      out.write("<TR> <TD vAlign=center align=middle colSpan=2>\r\n");
      out.write("<IMG height=1 src=\"img/D2_Blueline.gif\" width=\"98%\"></TD></TR>\r\n");
      out.write("\r\n");
      out.write("<TR>\r\n");
      out.write("                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5\r\n");
      out.write("                              src=\"img/D4_redbullet.gif\" \r\n");
      out.write("                             width=5>&nbsp; \r\n");
      out.write("                            <FONT \r\n");
      out.write("                              face=\"Verdana, Arial, Helvetica, sans-serif\" \r\n");
      out.write("                              color=#ffffff size=2>\r\n");
      out.write("                             <a class=links href=\"payroll.jsp?v=0\">Payroll System</FONT></TD></TR>\r\n");
      out.write("<TR> <TD vAlign=center align=middle colSpan=2>\r\n");
      out.write("<IMG height=1 src=\"img/D2_Blueline.gif\" width=\"98%\"></TD></TR>\r\n");
      out.write("\r\n");
      out.write("<TR>\r\n");
      out.write("                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5\r\n");
      out.write("                              src=\"img/D4_redbullet.gif\" \r\n");
      out.write("                             width=5>&nbsp; \r\n");
      out.write("                            <FONT \r\n");
      out.write("                              face=\"Verdana, Arial, Helvetica, sans-serif\" \r\n");
      out.write("                              color=#ffffff size=2>\r\n");
      out.write("                             <a class=links href=\"logout.jsp?v=0\">Logout</FONT></TD></TR>\r\n");
      out.write("\r\n");
      out.write("<TR><TD vAlign=center align=middle colSpan=2>\r\n");
      out.write("<IMG height=1 src=\"img/D2_Blueline.gif\" width=\"98%\"></TD></TR>\r\n");
      out.write("\r\n");
      out.write("</font></table>\r\n");
      out.write("\r\n");
      out.write("</td>\r\n");
      out.write("\r\n");
      out.write("<TD vAlign=top bgcolor=white>\r\n");
      out.write("\r\n");
      out.write("  <Table align=center border=0>\r\n");
      out.write("    <Tbody>\r\n");
      out.write("    \r\n");
      out.write("<TR >\r\n");
      out.write("<td>\r\n");
      out.write("<TABLE width=\"620\" border=0>\r\n");
      out.write("  <TBODY>\r\n");
      out.write("  <TR><TD align=center>");
if(val.equals("1"))
	 { 
      out.write("\r\n");
      out.write("<FONT \r\n");
      out.write("                              face=\"Verdana, Arial, Helvetica, sans-serif\" \r\n");
      out.write("                              color=green size=2><h4><b>Updated Successfully</h4></b></font></center>\r\n");
}
      out.write(" </td></tr>\r\n");
      out.write("  <TR vAlign=top >\r\n");
      out.write("    <TD bgcolor=\"efefef\" align=center><FONT Face=Verdana, Arial, Helvetica, sans-serif;\r\n");
      out.write(" color=maroon size=4>Institution \r\n");
      out.write("      Profile</FONT> </TD>\r\n");
      out.write("    </TR></TBODY></TABLE>\r\n");
      out.write("<BR>\r\n");
      out.write("<FORM name=tedata  action=\"updateprof.jsp\"\r\n");
      out.write("method=post><INPUT type=hidden value=add name=mode></TD></TR> \r\n");
      out.write("<TABLE width=\"620\">\r\n");
      out.write("  <TBODY>\r\n");
      out.write("  <TR vAlign=top>\r\n");
      out.write("    <TD >1.</TD>\r\n");
      out.write("    <TD >Name of Institution</TD>\r\n");
      out.write("    <TD>");
      out.print(rs.getString(1));
      out.write("</TD></TR>\r\n");
      out.write("<TR vAlign=top>\r\n");
      out.write("    <TD >2.</TD>\r\n");
      out.write("    <TD >CODE of Institution</TD>\r\n");
      out.write("    <TD>");
      out.print(colcode);
      out.write("</TD></TR>\r\n");
      out.write("\r\n");
      out.write("  <TR vAlign=top>\r\n");
      out.write("    <TD >3.</TD>\r\n");
      out.write("    <TD >Contact Details</TD>\r\n");
      out.write("    <TD>\r\n");
      out.write("      <TABLE>\r\n");
      out.write("        <TBODY>\r\n");
      out.write("        <TR vAlign=top>\r\n");
      out.write("          <TD>Address:</TD>\r\n");
      out.write("          <TD>");
      out.print(rs1.getString(2));
      out.write("</TD></TR>\r\n");
      out.write("        <TR>\r\n");
      out.write("          <TD>City:</TD>\r\n");
      out.write("          <TD>");
      out.print(rs1.getString(3));
      out.write("</TD></TR>\r\n");
      out.write("        <TR>\r\n");
      out.write("          <TD>Pin:</TD>\r\n");
      out.write("          <TD>");
      out.print(rs1.getString(4));
      out.write("</TD></TR>\r\n");
      out.write("        <TR>\r\n");
      out.write("          <TD>State/UT:</TD>\r\n");
      out.write("          <TD>");
      out.print(rs1.getString(5));
      out.write("</TD></TR>\r\n");
      out.write("        <TR>\r\n");
      out.write("          <TD>Tel:</TD>\r\n");
      out.write("          <TD><INPUT maxLength=50 size=50 name=tel value=");
      out.print(rs1.getString(6));
      out.write("></TD></TR>\r\n");
      out.write("        <TR>\r\n");
      out.write("          <TD>Fax:</TD>\r\n");
      out.write("          <TD><INPUT maxLength=50 size=50 name=fax value=");
      out.print(rs1.getString(7));
      out.write("></TD></TR>\r\n");
      out.write("        <TR>\r\n");
      out.write("          <TD>Email:</TD>\r\n");
      out.write("          <TD><INPUT maxLength=100 size=50 name=email value=");
      out.print(email);
      out.write("></TD></TR>\r\n");
      out.write("        <TR>\r\n");
      out.write("          <TD>Website:</TD>\r\n");
      out.write("          <TD><INPUT maxLength=100 size=50 \r\n");
      out.write("  name=website value=");
      out.print(rs1.getString(9));
      out.write("></TD></TR></TBODY></TABLE></TD></TR>\r\n");
      out.write("  <TR vAlign=top>\r\n");
      out.write("    <TD >4.</TD>\r\n");
      out.write("    <TD >Date of Establishment</TD>\r\n");
      out.write("    <TD>");
      out.print(rs3.getString(1));
      out.write("</TD></TR>\r\n");
      out.write("  <TR vAlign=top>\r\n");
      out.write("    <TD >5.</TD>\r\n");
      out.write("    <TD >University to which Affiliated<BR>(In case of college)</TD>\r\n");
      out.write("    <TD>");
      out.print(rs.getString(4));
      out.write(" </TD></TR>\r\n");
      out.write("  <TR vAlign=top>\r\n");
      out.write("    <TD >6.</TD>\r\n");
      out.write("    <TD >Name of the Head</TD>\r\n");
      out.write("    <TD> <INPUT maxLength=100 name=pname value=");
      out.print(rs.getString(5));
      out.write("> \r\n");
      out.write("      &nbsp;Designation:<SELECT name=pdesig>\r\n");
      out.write("\t  ");
String des=rs.getString(6);
      out.write("\r\n");
      out.write("\t  <option  selected>");
      out.print(des);
      out.write("</option>\r\n");
      out.write("\t  <OPTION value=Principal \r\n");
      out.write("        >Principal</OPTION> <OPTION value=ViceChancellor>Vice Chancellor</OPTION> \r\n");
      out.write("        <OPTION value=Director>Director</OPTION> <OPTION \r\n");
      out.write("        value=Dean>Dean</OPTION> <OPTION value=Other>Other</OPTION></SELECT> \r\n");
      out.write("</TD></TR>\r\n");
      out.write("   <TR vAlign=top>\r\n");
      out.write("    <TD >7.</TD>\r\n");
      out.write("    ");
String n=rs.getString(9);
      out.write("<TD >Is this College has JKC</TD>\r\n");
      out.write("        <TD><select name=\"jkc\">\r\n");
      out.write("\t\t<option value=");
      out.print(n);
      out.write('>');
      out.print(n);
      out.write("</option>\r\n");
      out.write("\t\t<option value=\"yes\">yes</option>\r\n");
      out.write("\t\t<option value=\"no\">no</option>\r\n");
      out.write("\t\t</select>\r\n");
      out.write("\t\t </TD></TR>\r\n");
      out.write("  <TR vAlign=top>\r\n");
      out.write("    <TD >8.</TD>\r\n");
      out.write("    <TD >Faculties</TD>\r\n");
      out.write("        <TD>");
      out.print(rs2.getString(2));
      out.write(" </TD></TR>\r\n");
      out.write("  <TR vAlign=top>\r\n");
      out.write("    <TD >9.</TD>\r\n");
      out.write("    <TD >Total Number of (Numbers only)</TD>\r\n");
      out.write("    <TD>\r\n");
      out.write("      <TABLE>\r\n");
      out.write("        <TBODY>\r\n");
      out.write("        <TR>\r\n");
      out.write("          <TD>Teaching Staff:</TD>\r\n");
      out.write("          <TD><INPUT maxLength=5 size=5 name=teachstaff value=");
      out.print(rs2.getString(3));
      out.write("></TD></TR>\r\n");
      out.write("        <TR>\r\n");
      out.write("          <TD>Administrative &amp; Supportive Staff:</TD>\r\n");
      out.write("          <TD><INPUT maxLength=5 size=5 name=admstaff value=");
      out.print(rs2.getString(4));
      out.write("></TD></TR>\r\n");
      out.write("        <TR>\r\n");
      out.write("          <TD>Technical &amp; Professional Staff:</TD>\r\n");
      out.write("          <TD><INPUT maxLength=5 size=5 name=techstaff value=");
      out.print(rs2.getString(5));
      out.write("></TD></TR>\r\n");
      out.write("        <TR>\r\n");
      out.write("          <TD>Students:</TD>\r\n");
      out.write("          <TD><INPUT maxLength=5 size=5 \r\n");
      out.write("  name=students value=");
      out.print(rs2.getString(6));
      out.write("></TD></TR></TBODY></TABLE></TD></TR>\r\n");
      out.write("  <TR vAlign=top>\r\n");
      out.write("    <TD >10.</TD>\r\n");
      out.write("    <TD >Programmes offered<BR>[Eg.: B.A., M.A., B.Sc. if any new added]</TD>\r\n");
      out.write("    <TD><TEXTAREA name=progoffered rows=3 cols=50 >");
      out.print(rs2.getString(7));
      out.write("</TEXTAREA> \r\n");
      out.write("</TD></TR></TBODY></TABLE><br><center><INPUT type=submit value=SUBMIT name=save> </center>\r\n");
      out.write("</FORM></CENTER>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</table>\r\n");
      out.write("</td></tr>\r\n");
      out.write("</table></td></tr>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<tr><td height=\"1\" width=\"820\"><table width=\"800\" cellpadding=0 cellspacing=0>\r\n");
      out.write(" <tr><td class=fo >\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<table cellpadding=0 cellspacing=0 width=\"800\" >\r\n");
      out.write("  <tr><td width=\"48\"><IMG height=36 src=\"img/m33.gif\" width=42 align=left ></td>\r\n");
      out.write("    <td class=fo width=\"800\">All Rights Reserved. </td>\r\n");
      out.write("    <td align=right width=\"220\" class=fo><IMG height=36 src=\"img/m35.gif\" width=214 ></td></tr>\r\n");
      out.write(" </table></td></tr>\r\n");
      out.write("</table></td></tr>\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("</BODY>\r\n");
      out.write("</HTML>\r\n");
}catch(Exception e)
{ out.println(e);}
finally
{
con.close();
}
      out.write('\r');
      out.write('\n');
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
