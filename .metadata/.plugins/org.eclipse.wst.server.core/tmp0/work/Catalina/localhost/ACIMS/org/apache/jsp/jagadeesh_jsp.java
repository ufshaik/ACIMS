/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.26
 * Generated at: 2016-04-25 07:48:06 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class jagadeesh_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("</head>\r\n");
      out.write("<style>\r\n");
      out.write(".links\r\n");
      out.write("{\r\n");
      out.write("    FONT-WEIGHT: bold;\r\n");
      out.write("    FONT-SIZE:10px;\r\n");
      out.write("    COLOR: #ffffff;\r\n");
      out.write("    FONT-FAMILY: \"Verdana, Arial, Helvetica, sans-serif\";\r\n");
      out.write("    TEXT-DECORATION: none\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("<table cellpadding=0 cellspacing=0 width=\"780\" border=1  align=center  bordercolor=\"#2A8DCC\" >\r\n");
      out.write(" <tr><td valign=top class=to width=\"780\">\r\n");
      out.write("<table width=\"820\" cellpadding=0 cellspacing=0 height=\"144\">\r\n");
      out.write(" <tr><td width=\"822\" height=\"144\"><IMG id=IMG1 height=144 src=\"img/sri.gif\" width=\"100%\" ></td></tr>\r\n");
      out.write("<tr><td width=\"822\" height=\"10\"><IMG height=40 src=\"img/m021.jpg\" width=326 ><A href=\"index.jsp\" \r\n");
      out.write("           ><IMG \r\n");
      out.write("                onmouseover=\"this.src='img/buttons/home.gif'\" onmouseout=\"this.src='img/buttons/home1.gif'\" \r\n");
      out.write("               alt=Home \r\n");
      out.write("               src=\"img/buttons/home1.gif\" width=\"93\" height=\"40\"></A><A onmouseover=\"openMenu('naac',this,-20,0);\" \r\n");
      out.write("  onmouseout=\"closeMenu('naac',this);\" \r\n");
      out.write("  ><IMG \r\n");
      out.write("  onmouseover=\"this.src='img/buttons/naac.gif'\" onmouseout=\"this.src='img/buttons/naac1.gif'\" \r\n");
      out.write("  alt=NAAC \r\n");
      out.write("  src=\"img/buttons/naac1.gif\" width=\"93\" height=\"40\"></A><A onmouseover=\"openMenu('colleges',this,72,0);\" \r\n");
      out.write("  onmouseout=\"closeMenu('colleges',this);\" \r\n");
      out.write("  ><IMG \r\n");
      out.write("  onmouseover=\"this.src='img/buttons/college.gif'\" onmouseout=\"this.src='img/buttons/college1.gif'\" \r\n");
      out.write("  alt=college \r\n");
      out.write("  src=\"img/buttons/college1.gif\" width=\"93\" height=\"40\"></A><A onmouseover=\"openMenu('jkc',this,168,0);\" \r\n");
      out.write("  onmouseout=\"closeMenu('jkc',this);\" \r\n");
      out.write("  ><IMG \r\n");
      out.write("  onmouseover=\"this.src='img/buttons/jkc.gif'\" onmouseout=\"this.src='img/buttons/jkc1.gif'\" \r\n");
      out.write("  alt=jkc \r\n");
      out.write("  src=\"img/buttons/jkc1.gif\" width=\"93\" height=\"40\"></A><A \r\n");
      out.write("\r\n");
      out.write("onmouseover=\"openMenu('abtus',this,260,0);\" \r\n");
      out.write("            onmouseout=\"closeMenu('abtus',this);\" \r\n");
      out.write("           ><IMG \r\n");
      out.write("           onmouseover=\"this.src='img/buttons/abtus.gif'\" onmouseout=\"this.src='img/buttons/abtus1.gif'\" \r\n");
      out.write("           alt=AboutUs \r\n");
      out.write("         src=\"img/buttons/abtus1.gif\" width=\"93\" height=\"40\"></A></td></tr>\r\n");
      out.write("   \r\n");
      out.write("   \r\n");
      out.write(" </table>\r\n");
      out.write("\r\n");
      out.write("<tr><td>\r\n");
      out.write("\r\n");
      out.write("<table width=\"820\" border=\"1\"  bordercolor=\"#2A8DCC\">\r\n");
      out.write("<tr><td valign=left width=\"22%\" class=ma colspan=2>\r\n");
      out.write("<table cellSpacing=0 cellPadding=0 width=\"100%\" border=0>\r\n");
      out.write("<tr><td>&nbsp;</td></tr>\r\n");
      out.write("<tr><td vAlign=center align=middle rowSpan=2>\r\n");
      out.write("     <FONT face=\"Verdana, Arial, Helvetica, sans-serif\" color=\"#E3BD12\" size=3>\r\n");
      out.write("\r\n");
      out.write("    <B>About Us !!!</B></td></tr>\r\n");
      out.write("\r\n");
      out.write("    <tr><td>&nbsp;</td></tr>\r\n");
      out.write("    \r\n");
      out.write("\r\n");
      out.write("     <TR> <TD vAlign=center align=middle colSpan=2>\r\n");
      out.write("    <IMG height=1 src=\"D2_Blueline.gif\" width=\"98%\"></TD></TR>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("   <TR>\r\n");
      out.write("                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5\r\n");
      out.write("                              src=\"D4_redbullet.gif\" \r\n");
      out.write("                             width=5>&nbsp; \r\n");
      out.write("                            <FONT \r\n");
      out.write("                              face=\"Verdana, Arial, Helvetica, sans-serif\" \r\n");
      out.write("                              color=#ffffff size=2>\r\n");
      out.write("                             <a class=links href=\"sriram.jsp\">Sriram.U</FONT></TD></TR>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("   <TR> <TD vAlign=center align=middle colSpan=2>\r\n");
      out.write("   <IMG height=1 src=\"D2_Blueline.gif\" width=\"98%\"></TD></TR>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <TR>\r\n");
      out.write("                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5\r\n");
      out.write("                              src=\"D4_redbullet.gif\" \r\n");
      out.write("                             width=5>&nbsp; \r\n");
      out.write("                            <FONT \r\n");
      out.write("                              face=\"Verdana, Arial, Helvetica, sans-serif\" \r\n");
      out.write("                              color=#ffffff size=2>\r\n");
      out.write("                             <a class=links href=\"jagadeesh.jsp\">Jagadeesh Kumar.P</FONT></TD></TR>\r\n");
      out.write("\r\n");
      out.write("   \r\n");
      out.write("<TR><TD vAlign=center align=middle colSpan=2>\r\n");
      out.write("<IMG height=1 src=\"D2_Blueline.gif\" width=\"98%\"></TD></TR>\r\n");
      out.write("\r\n");
      out.write("<TR>\r\n");
      out.write("                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5\r\n");
      out.write("                              src=\"D4_redbullet.gif\" \r\n");
      out.write("                             width=5>&nbsp; \r\n");
      out.write("                            <FONT \r\n");
      out.write("                              face=\"Verdana, Arial, Helvetica, sans-serif\" \r\n");
      out.write("                              color=#ffffff size=2>\r\n");
      out.write("                             <a class=links href=\"naveen.jsp\">Naveen Kumar.B</FONT></TD></TR>\r\n");
      out.write("\r\n");
      out.write("   \r\n");
      out.write("<TR><TD vAlign=center align=middle colSpan=2>\r\n");
      out.write("<IMG height=1 src=\"D2_Blueline.gif\" width=\"98%\"></TD></TR>\r\n");
      out.write("\r\n");
      out.write("<TR>\r\n");
      out.write("                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5\r\n");
      out.write("                              src=\"D4_redbullet.gif\" \r\n");
      out.write("                             width=5>&nbsp; \r\n");
      out.write("                            <FONT \r\n");
      out.write("                              face=\"Verdana, Arial, Helvetica, sans-serif\" \r\n");
      out.write("                              color=#ffffff size=2>\r\n");
      out.write("                             <a class=links href=\"yamini.jsp\">Yamini.K</FONT></TD></TR>\r\n");
      out.write("\r\n");
      out.write("   \r\n");
      out.write("<TR><TD vAlign=center align=middle colSpan=2>\r\n");
      out.write("<IMG height=1 src=\"D2_Blueline.gif\" width=\"98%\"></TD></TR>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</font></table>\r\n");
      out.write("</td>\r\n");
      out.write("\r\n");
      out.write("<TD vAlign=top bgcolor=white height=350 >\r\n");
      out.write("\r\n");
      out.write(" <table  >\r\n");
      out.write("<tr><td height=10></td></tr>\r\n");
      out.write(" <tr><td align=center><P><B><FONT color=#145da6 size=4><U>Jagadeesh Kumar.P</FONT></B></P></td></tr>\r\n");
      out.write("<tr><td ><FONT face=\"Verdana, Arial, Helvetica, sans-serif\" \r\n");
      out.write("                        color=#000000 size=2>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<pre> <h5>      \r\n");
      out.write("<font color=orange face=verdana size=2px>    Telephone:</font>\r\n");
      out.write("\r\n");
      out.write("        Our helpdesk is open Monday - Saturday during regular \r\n");
      out.write("        College working hours.\r\n");
      out.write("\r\n");
      out.write("            Call:9885897800\r\n");
      out.write("\r\n");
      out.write("<font color=orange face=verdana size=2px>    Email:</font>\r\n");
      out.write("   \r\n");
      out.write("        Use our form or email us at: acims@gmail.com \r\n");
      out.write("\r\n");
      out.write("        Our policy is to respond to all feedbacks within 24 hours \r\n");
      out.write("        and typically within 4 hours. \r\n");
      out.write("\r\n");
      out.write("<font color=orange face=verdana size=2px>    Postal:</font>\r\n");
      out.write("        \r\n");
      out.write("        ACIMS Website Services\r\n");
      out.write("        GPO Box 2838\r\n");
      out.write("</h5>\r\n");
      out.write("</pre>\r\n");
      out.write(" \r\n");
      out.write("</td></tr>\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("  \r\n");
      out.write("\r\n");
      out.write("</Tbody>\r\n");
      out.write("</Table>\r\n");
      out.write("\r\n");
      out.write("<table width=\"780\" cellpadding=0 cellspacing=0>\r\n");
      out.write(" <tr><td class=fo >\r\n");
      out.write("<table cellpadding=0 cellspacing=0 width=\"821\" >\r\n");
      out.write("  <tr><td width=\"48\"><IMG height=36 src=\"img/m33.gif\" width=42 align=left ></td>\r\n");
      out.write("    <td class=fo width=\"737\">All Rights Reserved.</td>\r\n");
      out.write("    <td align=right width=\"220\" class=fo><IMG height=36 src=\"img/m35.gif\" width=214 ></td></tr>\r\n");
      out.write(" </table></td></tr>\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<UL class=udm id=udm>\r\n");
      out.write("  <LI id=naac>&nbsp;<A href=\"\"></A><UL>\r\n");
      out.write("\r\n");
      out.write("    <LI><A href=\"naacprof.html\">NAAC's Profile</A> </LI>\r\n");
      out.write("    <LI><A href=\"whyaccr.html\">Why Accreditation</A></LI>\r\n");
      out.write("    <LI><A href=\"accrproc.html\">Process of Accreditation</A></LI>\r\n");
      out.write("    <LI><A href=\"criteria.html\">Criteria for Assessment</A></LI>\r\n");
      out.write("    <LI><A href=\"grade.html\">Grading System</A> </LI>\r\n");
      out.write("    <LI><A href=\"applyproc.html\">How to Apply</A> </LI>\r\n");
      out.write("  </UL></LI>\r\n");
      out.write(" <LI id=colleges>&nbsp;<A href=\"\"></A><UL>\r\n");
      out.write("    <LI><A href=\"applyaccr.html\">Apply for Accreditation</A></LI>\r\n");
      out.write("    <LI><A href=\"accrcoll.jsp\">Accredited Colleges</A></LI></UL>\r\n");
      out.write("\r\n");
      out.write("  </LI> \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<LI id=jkc>&nbsp;<A href=\"\"></A><UL>\r\n");
      out.write("    <LI><A href=\"abtjkc.jsp\">About JKC</A></LI>\r\n");
      out.write("    <LI><A href=\"stureg.jsp?v=0\">Student Registration</A></LI>\r\n");
      out.write("      <LI><A href=\"jkccolleges.jsp\">JKC Colleges</A></LI> \r\n");
      out.write("\t\t<LI><A href=\"notify.jsp\">Notifications</A></LI>\r\n");
      out.write("     <LI><A href=\"cceviewstu.jsp\">Selected Students</A></LI>\r\n");
      out.write("\t <LI><A href=\"ccecomp.jsp \">Companies </A></LI></UL>\r\n");
      out.write("  </LI><LI id=abtus>&nbsp;<A href=\"\"></A><UL>\r\n");
      out.write("    <LI><A href=\"sriram.jsp\">Sriram.U</A></LI>\r\n");
      out.write("    <LI><A href=\"jagadeesh.jsp\">Jagadeesh Kumar.P</A></LI>\r\n");
      out.write("        <LI><A href=\"naveen.jsp\">Naveen Kumar.B</A></LI>\r\n");
      out.write("     <LI><A href=\"yamini.jsp\">Yamini.K</A></LI>\r\n");
      out.write("\t \r\n");
      out.write("  </LI></UL>\r\n");
      out.write("<SCRIPT src=\"dropdown/265.htm\" \r\n");
      out.write("type=text/javascript></SCRIPT></td></tr></table></center>\r\n");
      out.write("\r\n");
      out.write("</Body>\r\n");
      out.write("</Html>\r\n");
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
