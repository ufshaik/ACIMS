/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.26
 * Generated at: 2016-04-12 06:34:26 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.Dbconnection.Dbconnection;
import java.sql.*;

public final class jkcupdateprofile_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 Connection con=null;
    PreparedStatement pst,jre;
    Statement stmt;
    ResultSet rs,jrs,rs1;
    String pin;

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

HttpSession s1=request.getSession(); 
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\r\n");
      out.write('\r');
      out.write('\n');

try
{

	int i=1;
	 String val=request.getParameter("v");

	 con=Dbconnection.getConnection();
jre=con.prepareStatement("select count(*) from jkcdata where status=0");
        jrs=jre.executeQuery();
		jrs.next();
		
stmt=con.createStatement();
rs1=stmt.executeQuery("select * from jkcadmin where LOGINID='"+s1.getAttribute("u_name")+"'");
rs1.next();
		
		



pst=con.prepareStatement("select * from notifications");




rs=pst.executeQuery();
while(rs.next())
	{
	i=i+1;
	}

      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<title></title>\r\n");
      out.write("<link rel=stylesheet href=st.css type=text/css>\r\n");
      out.write("<LINK \r\n");
      out.write("media=screen,projection,print \r\n");
      out.write("href=\"dropdown/main.css\" type=text/css \r\n");
      out.write("rel=stylesheet>\r\n");
      out.write("<!-- UDM 4 -->\r\n");
      out.write("<SCRIPT src=\"dropdown/udm_custom.js\" \r\n");
      out.write("type=text/javascript></SCRIPT>\r\n");
      out.write("\r\n");
      out.write("<SCRIPT src=\"dropdown/udm_control.js\" \r\n");
      out.write("type=text/javascript></SCRIPT>\r\n");
      out.write("\r\n");
      out.write("<SCRIPT src=\"dropdown/udm_style.js\" \r\n");
      out.write("type=text/javascript></SCRIPT>\r\n");
      out.write("\r\n");
      out.write("<SCRIPT src=\"dropdown/udm_slide.js\" \r\n");
      out.write("type=text/javascript></SCRIPT>\r\n");
      out.write("\r\n");
      out.write("<SCRIPT src=\"dropdown/dropdown.js\" \r\n");
      out.write("type=text/javascript></SCRIPT>\r\n");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("\tfunction validate_required(field,alerttxt)\r\n");
      out.write("{\r\n");
      out.write("with (field)\r\n");
      out.write("{\r\n");
      out.write("if (value==null||value==\"\")\r\n");
      out.write("  {alert(alerttxt);return false}\r\n");
      out.write("else {return true}\r\n");
      out.write("}\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("function validate_form(thisform)\r\n");
      out.write("{\r\n");
      out.write("with (thisform)\r\n");
      out.write("{\r\n");
      out.write("if (validate_required(id,\"Enter the Notification Id\")==false)\r\n");
      out.write("  {id.focus();return false}\r\n");
      out.write("\r\n");
      out.write("if (validate_required(date,\"Enter the Date of posting\")==false)\r\n");
      out.write("  {date.focus();return false}\r\n");
      out.write("\r\n");
      out.write(" if (validate_required(last,\"Enter the last date \")==false)\r\n");
      out.write("  {last.focus();return false}\r\n");
      out.write(" if (validate_required(notify,\"Enter the notification\")==false)\r\n");
      out.write("  {notify.focus();return false}\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("function numberfield(fld)\r\n");
      out.write("\t{\r\n");
      out.write("\twith(fld)\r\n");
      out.write("\t\t{\r\n");
      out.write("\t\t var s=value;\r\n");
      out.write("\t\t var n=s.length;\r\n");
      out.write("\t\t\tfor(i=0;i<n;i++)\r\n");
      out.write("\t\t\t{\r\n");
      out.write("\t\t\t\tvar c=s.charAt(i);\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\tif(!(c>='0' && c<='9'))\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\talert(\"Please enter the id number that was displayed before\");\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t}\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<BODY >\r\n");
      out.write("\r\n");
      out.write("<table  valign=\"top\" cellpadding=0 cellspacing=0 width=\"800\"  align=center  bordercolor=\"#2A8DCC\" >\r\n");
      out.write(" <tr><td valign=top class=to width=\"800\" bgcolor=\"0F4F8D\">\r\n");
      out.write("<table width=\"800\" cellpadding=0 cellspacing=0 height=\"144\" >\r\n");
      out.write(" <tr><td width=\"800\" height=\"144\"><IMG id=IMG1 height=144 src=\"img/sri1.gif\" width=\"100%\" ></td></tr>\r\n");
      out.write("<tr><td width=\"800\" height=\"10\"><IMG height=40 src=\"img/m021.gif\" width=326 ></td></tr></table></tr>\r\n");
      out.write("\r\n");
      out.write(" <tr><td><table width=\"800\" border=\"1\" bordercolor=\"#0077c0\" height=\"500\" >\r\n");
      out.write("<tr><td valign=left width=\"200\" class=ma><h5></h5>\r\n");
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
      out.write("                             <A class=links href=\"jkcupdateprofile.jsp?v=0\">Update profile</A></FONT></TD></TR>\r\n");
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
      out.write("                             <a class=links href=\"jkcadminchgpwd.jsp?v=0\">Changepassword</FONT></TD></TR>\r\n");
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
      out.write("                             <a class=links href=\"sturequest.jsp?v=0\">Student request <font color=\"orange\">       (");
      out.print(jrs.getInt(1));
      out.write(")</font></FONT></TD></TR>\r\n");
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
      out.write("                             <a class=links href=\"notifications.jsp?v=0\">Notifications</FONT></TD></TR>\r\n");
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
      out.write("                             <a class=links href=\"jkccomp.jsp?v=0\">Companies list</FONT></TD></TR>\r\n");
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
      out.write("                             <a class=links href=\"jkcstu.jsp?v=0\">Selected students</FONT></TD></TR>\r\n");
      out.write("<TR> <TD vAlign=center align=middle colSpan=2>\r\n");
      out.write("<IMG height=1 src=\"img/D2_Blueline.gif\" width=\"98%\"></TD></TR>\r\n");
      out.write("<TR>\r\n");
      out.write("                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5\r\n");
      out.write("                              src=\"img/D4_redbullet.gif\" \r\n");
      out.write("                             width=5>&nbsp; \r\n");
      out.write("                            <FONT \r\n");
      out.write("                              face=\"Verdana, Arial, Helvetica, sans-serif\" \r\n");
      out.write("                              color=#ffffff size=2>\r\n");
      out.write("                             <a class=links href=\"jkccolleges.jsp?v=0\">JKC Colleges</FONT></TD></TR>\r\n");
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
      out.write("                             <a class=links href=\"createexam.jsp?v=0\">Create Exam paper</FONT></TD></TR>\r\n");
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
      out.write("                             <a class=links href=\"jkcschedule.jsp?v=0\">Exam Schedule</FONT></TD></TR>\r\n");
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
      out.write("                             <a class=links href=\"jkcresults.jsp?v=0\">Results</FONT></TD></TR>\r\n");
      out.write("<TR> <TD vAlign=center align=middle colSpan=2>\r\n");
      out.write("<IMG height=1 src=\"img/D2_Blueline.gif\" width=\"98%\"></TD></TR>\r\n");
      out.write("<TR>\r\n");
      out.write("                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5\r\n");
      out.write("                              src=\"img/D4_redbullet.gif\" \r\n");
      out.write("                             width=5>&nbsp; \r\n");
      out.write("                            <FONT \r\n");
      out.write("                              face=\"Verdana, Arial, Helvetica, sans-serif\" \r\n");
      out.write("                              color=#ffffff size=2>\r\n");
      out.write("                             <a class=links href=\"jkcreglist.jsp?v=0\">JKC Selected Students</FONT></TD></TR>\r\n");
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
      out.write("<td width=\"600\" valign=top>\r\n");
      out.write("\r\n");
      out.write(" <Table align=center border=0>\r\n");
      out.write("    <Tbody>\r\n");
      out.write("    \r\n");
      out.write("<Tr>\r\n");
      out.write("<Td ><Br>\r\n");
      out.write("\t\r\n");
      out.write("\r\n");
      out.write(" <Tr>\r\n");
      out.write("\r\n");
      out.write("    <Form name=frm1 method=\"POST\" action=\"jkcadminupdateprofile.jsp\">\r\n");
      out.write("   <br>\r\n");
      out.write("\t");
if(val.equals("1"))
	 { 
      out.write("\r\n");
      out.write("<FONT \r\n");
      out.write("                              face=\"Verdana, Arial, Helvetica, sans-serif\" \r\n");
      out.write("                              color=green size=2><h4><b>Updated Successfully</h4></b></font></center>\r\n");
}
      out.write(" \r\n");
      out.write("    <Td BgColor=#efefef Align=\"Center\"><Font Size=2 Face=Verdana Color=#336699 ><B>&nbsp;Update Profile&nbsp;</B></Font>\r\n");
      out.write("<Tr>   <tr><tr><tr><tr><tr>\r\n");
      out.write("\r\n");
      out.write(" <Tr> \r\n");
      out.write("       \r\n");
      out.write("     <Td><Font Color=#DC143C  Face=verdana Size=2 >login ID:</Font></Td>\r\n");
      out.write("\t <td>\t <Input type=text  Size=10 name=logid value=");
      out.print(rs1.getString(1));
      out.write(" readonly>\r\n");
      out.write("\r\n");
      out.write("   <Tr> \r\n");
      out.write("       \r\n");
      out.write("     <Td><Font Color=#DC143C  Face=verdana Size=2 >First Name:</Font></Td>\r\n");
      out.write("\t <td>\t <Input type=text  Size=20 name=fname value=");
      out.print(rs1.getString(2));
      out.write(">\r\n");
      out.write("\t\r\n");
      out.write("       \r\n");
      out.write("     <Td><Font Color=#DC143C  Face=verdana Size=2 >Last Name:</Font></Td>\r\n");
      out.write("\t <td>\t <Input type=text  Size=20 name=lname value=");
      out.print(rs1.getString(3));
      out.write(">\r\n");
      out.write("\t <Tr> \r\n");
      out.write("       \r\n");
      out.write("     <Td><Font Color=#DC143C  Face=verdana Size=2 >Email ID:</Font></Td>\r\n");
      out.write("\t <td>\t <Input type=text  Size=20 name=em value=");
      out.print(rs1.getString(4));
      out.write(">\r\n");
      out.write("\t \r\n");
      out.write("       \r\n");
      out.write("     <Td><Font Color=#DC143C  Face=verdana Size=2 >Contact Number:</Font></Td>\r\n");
      out.write("\t <td>\t <Input type=text  Size=20 name=contact value=");
      out.print(rs1.getString(5));
      out.write("></td></tr>\r\n");
      out.write("     <tr><td height=10>  \r\n");
      out.write("     <tr><td colspan=2 align=\"center\"><input type=\"submit\" value=\"Change\" ></td><tr>\r\n");
      out.write("     \r\n");
      out.write("\t \r\n");
      out.write("\r\n");
      out.write("       \r\n");
      out.write(" \r\n");
      out.write("</Form>\r\n");
      out.write("</Tbody>\r\n");
      out.write("</Table></td></tr>\r\n");
      out.write("</table></td></tr>\r\n");
      out.write("</td></tr>\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<tr><td height=\"1\"><table width=\"800\" cellpadding=0 cellspacing=0>\r\n");
      out.write(" <tr><td class=fo >\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<table cellpadding=0 cellspacing=0 width=\"800\" >\r\n");
      out.write("  <tr><td width=\"48\"><IMG height=36 src=\"m33.gif\" width=42 align=left ></td>\r\n");
      out.write("    <td class=fo width=\"800\">All Rights Reserved. </td>\r\n");
      out.write("    <td align=right width=\"220\" class=fo><IMG height=36 src=\"m35.gif\" width=214 ></td></tr>\r\n");
      out.write(" </table></td></tr>\r\n");
      out.write("</table>\r\n");
      out.write("</td></tr>\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("</center>\r\n");
      out.write("</BODY>\r\n");
      out.write("</HTML>\r\n");

	  
        
  
}
catch(Exception e)
{
out.println(e);
}

finally
{
	con.close();
}

      out.write("\r\n");
      out.write("\r\n");
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
