/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.26
 * Generated at: 2016-03-17 09:05:12 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class addmarks_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

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


try
{
   String vv=request.getParameter("v");
   String uid=(String)session.getAttribute("uid1");
   if(uid!=null)
  {}
else
{
      response.sendRedirect("index.jsp");
  }
   
   
      out.write('\r');
      out.write('\n');
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
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<BODY bgcolor=\"#A9B1B9\" >\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<table  valign=\"top\" cellpadding=0 cellspacing=0 width=\"800\"  align=center  bordercolor=\"#2A8DCC\" >\r\n");
      out.write(" <tr><td valign=top class=to width=\"800\" bgcolor=\"0F4F8D\">\r\n");
      out.write("<table width=\"800\" cellpadding=0 cellspacing=0 height=\"144\" >\r\n");
      out.write(" <tr><td width=\"800\" height=\"144\"><IMG id=IMG1 height=144 src=\"img/sri1.gif\" width=\"800\" ></td></tr>\r\n");
      out.write("<tr><td width=\"800\" height=\"10\"><IMG height=40 src=\"img/m021.gif\" width=326> </td></tr></table></tr>\r\n");
      out.write("\r\n");
      out.write("<tr><td width=\"800\"><table width=\"800\" border=\"1\"  bordercolor=\"#2A8DCC\" bgcolor=white>\r\n");
      out.write("<tr><td valign=left width=\"200\" class=ma colspan=2><h5></h5>\r\n");
      out.write("\r\n");
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
      out.write("<td width=\"600\">\r\n");
      out.write("\r\n");
      out.write("<table width=100% height=18 align=top>\r\n");
      out.write("<tr><td height=15></td></tr>\r\n");
      out.write("<tr>\r\n");
      out.write("<td bgcolor=\"0077c0\" width=\"50%\" align=center><a style=\"color: white\" class=link1 href=\"addmarks.jsp?v=0\">Enter marks</a></td>\r\n");
      out.write("<td bgcolor=\"0077c0\" width=\"50%\" align=center><a style=\"color: white\" class=link1  href=\"viewmarks.jsp?v=0\">View marks</a></td>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<tr><td height=50></td></tr></table>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<table  width=\"600\" >\r\n");
      out.write("<tr><td height=10></td></tr>\r\n");
      out.write("<tr><td align=center>");
if(vv.equals("1")){
      out.write("\r\n");
      out.write("<font color=red size=3px>Branch name is invalid</font>");
}
      out.write('\r');
      out.write('\n');
if(vv.equals("2")){
      out.write("\r\n");
      out.write("<font color=red size=3px>course is invalid</font>");
}
      out.write("</td></tr>\r\n");
      out.write("<tr><td height=\"10\"></td></tr><tr><td height=\"30\"><center><h3><font color=\"#336699\">Update Marks</font></h3>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<form action=\"updatemarkslist.jsp?v=0\" method=\"post\">\r\n");
      out.write("<table>\r\n");
      out.write("<tr><td height=\"10\"></td></tr>\r\n");
      out.write("<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Branch:</td><td><select value=branch name=\"branch\">\r\n");
      out.write(" <option value=eee>EEE</option>\r\n");
      out.write(" <option value=cse>CSE</option>\r\n");
      out.write(" <option value=mech>MECH</option>\r\n");
      out.write(" <option value=ece>ECE</option>\r\n");
      out.write(" <option value=eie>EIE</option>\r\n");
      out.write(" <option value=csit>CSIT</option>\r\n");
      out.write(" <option value=civil>CIVIL</option>\r\n");
      out.write(" <option value=biotech>BIOTECH</option>\r\n");
      out.write(" <option value=ice>ICE</option>\r\n");
      out.write(" <option value=metallurgy>METALLURGY</option>\r\n");
      out.write("</select></td></tr>\r\n");
      out.write("<tr><td height=20></td></tr>\r\n");
      out.write("<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;course:</td><td><select value=\"course\" name=\"year\">\r\n");
      out.write("  <option value=1>1st year</option>\r\n");
      out.write(" <option value=2-1>2-1</option>\r\n");
      out.write(" <option value=2-2>2-2</option>\r\n");
      out.write(" <option value=3-1>3-1</option>\r\n");
      out.write(" <option value=3-2>3-2</option>\r\n");
      out.write(" <option value=4-1>4-1</option>\r\n");
      out.write(" <option value=4-2>4-2</option>\r\n");
      out.write(" </select></td></tr>\r\n");
      out.write("\r\n");
      out.write("<tr></tr><tr></tr>\r\n");
      out.write("<tr><td height=\"10\"></td></tr>\r\n");
      out.write("<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type=SUBMIT size=5 name=s1 value=\"submit\"></td>\r\n");
      out.write("<td height=\"27\" align=center><input type=reset name=r1 value=\"Reset\"></td></tr><tr><td height=\"24\"></td>\r\n");
      out.write("<tr><td height=\"200\"></td></tr>\r\n");
      out.write("</table></form></center></td></tr>\r\n");
      out.write("</table>\r\n");
      out.write("</td></tr>\r\n");
      out.write("</table></td></tr>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<tr><td width=\"800\"><table width=\"800\" cellpadding=0 cellspacing=0>\r\n");
      out.write(" <tr><td class=fo >\r\n");
      out.write("\r\n");
      out.write("<table cellpadding=0 cellspacing=0 width=\"800\" >\r\n");
      out.write("  <tr><td width=\"48\"><IMG height=36 src=\"img/m33.gif\" width=42 align=left ></td>\r\n");
      out.write("    <td class=fo width=\"600\">All Rights Reserved.</td>\r\n");
      out.write("    <td align=right width=\"200\" class=fo><IMG height=36 src=\"img/m35.gif\" width=200 ></td></tr>\r\n");
      out.write(" </table></td></tr>\r\n");
      out.write("</table>\r\n");
      out.write("</td></tr>\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("</BODY>\r\n");
      out.write("</HTML>\r\n");
}catch(Exception e)
{}
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
