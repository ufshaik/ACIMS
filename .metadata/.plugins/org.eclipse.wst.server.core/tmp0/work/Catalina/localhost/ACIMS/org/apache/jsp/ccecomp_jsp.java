/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.26
 * Generated at: 2016-03-17 08:37:18 UTC
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

public final class ccecomp_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

Connection con=null;
   PreparedStatement jre,aci;
    ResultSet jrs,rs,rs2;

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
      out.write('\r');
      out.write('\n');
try{
	con=Dbconnection.getConnection();

	jre=con.prepareStatement("select count(*) from jkcdata where status=0");
        jrs=jre.executeQuery();
		jrs.next();
		
		
		
		aci=con.prepareStatement("select company,year,count(*) from jkcdata group by company,year having year <> 0");
rs2=aci.executeQuery();


      out.write("\r\n");
      out.write("<HTML>\r\n");
      out.write(" <HEAD>\r\n");
      out.write("  <TITLE></TITLE>\r\n");
      out.write(" <link rel=stylesheet href=st.css type=text/css>\r\n");
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
      out.write(" </HEAD>\r\n");
      out.write("\r\n");
      out.write(" <body>\r\n");
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
      out.write("  src=\"img/buttons/jkc1.gif\" width=\"93\" height=\"40\"></A><A\r\n");
      out.write("\r\n");
      out.write("   onmouseover=\"openMenu('abtus',this,260,0);\" \r\n");
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
      out.write("    <B>JKC !!!</B></td></tr>\r\n");
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
      out.write("                             <a style=\"color: black\" class=links href=\"abtjkc.jsp\">About JKC</FONT></TD></TR>\r\n");
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
      out.write("                             <a style=\"color: black\" class=links href=\"stureg.jsp?v=0\">Student Registration</FONT></TD></TR>\r\n");
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
      out.write("                             <a style=\"color: black\" class=links href=\"jkccolleges.jsp\">JKC Colleges</FONT></TD></TR>\r\n");
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
      out.write("                             <a style=\"color: black\" class=links href=\"jkcreglistmain.jsp\">JKC  Students</FONT></TD></TR>\r\n");
      out.write("   \r\n");
      out.write("<TR><TD vAlign=center align=middle colSpan=2>\r\n");
      out.write("<IMG height=1 src=\"D2_Blueline.gif\" width=\"98%\"></TD></TR>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<TR>\r\n");
      out.write("                            <TD vAlign=center height=22>&nbsp;&nbsp;<IMG height=5\r\n");
      out.write("                              src=\"D4_redbullet.gif\" \r\n");
      out.write("                             width=5>&nbsp; \r\n");
      out.write("                            <FONT \r\n");
      out.write("                              face=\"Verdana, Arial, Helvetica, sans-serif\" \r\n");
      out.write("                              color=#ffffff size=2>\r\n");
      out.write("                             <a style=\"color: black\" class=links href=\"notify.jsp\">Notifications</FONT></TD></TR>\r\n");
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
      out.write("                             <a style=\"color: black\" class=links href=\"cceviewstu.jsp\">Selected Students</FONT></TD></TR>\r\n");
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
      out.write("                             <a style=\"color: black\" class=links href=\"ccecomp.jsp\">Companies</FONT></TD></TR>\r\n");
      out.write("\r\n");
      out.write("   \r\n");
      out.write("<TR><TD vAlign=center align=middle colSpan=2>\r\n");
      out.write("<IMG height=1 src=\"D2_Blueline.gif\" width=\"98%\"></TD></TR>\r\n");
      out.write("</font></table>\r\n");
      out.write("</td>\r\n");
      out.write("<td width=\"600\" height=400 valign=top>\r\n");
      out.write("<table width=\"600\"  valign=top>\r\n");
      out.write("<tr><td height=\"30\"><center><font color=\"#0077c0\"><h3>RESULT</h3></font>\r\n");
      out.write(" <form action=\"deleteresult.jsp\" method=\"post\">\r\n");
      out.write("<table border=0 bordercolor=white valign=top>\r\n");
      out.write("<tr><td bgcolor=\"A9C6E2\" height=20 align=center>Name of the company</td><td bgcolor=\"A9C6E2\" height=20 align=center width=20%>Year</td><td bgcolor=\"A9C6E2\" height=20 align=center>Number of students selected</td></tr><tr>\r\n");
  int i=1;

		  while(rs2.next())
			{
			  String s="ch"+i;
			  String ss="co"+i;
			  String sss="yr"+i;
			  String x=rs2.getString(1);
			  String y=rs2.getString(2);
			  
      out.write("\r\n");
      out.write("\t\t\t  <tr><td bgcolor=\"#EFEFEF\" height=20 align=center><input type=hidden name=");
      out.print(ss);
      out.write(" value=");
      out.print(x);
      out.write('>');
      out.print(x);
      out.write("</td><td bgcolor=\"#EFEFEF\" height=20 align=center><input type=hidden name=");
      out.print(sss);
      out.write(" value=");
      out.print(y);
      out.write('>');
      out.print(y);
      out.write("</td><td bgcolor=\"#EFEFEF\" height=20 align=center><input type=hidden name=");
      out.print(s);
      out.write("> <a href=\"getdetailscce.jsp?z=");
      out.print(x);
      out.write("&&w=");
      out.print(y);
      out.write('"');
      out.write('>');
      out.print(rs2.getString(3));
      out.write("</a></td>\r\n");
      out.write("</tr>\r\n");

       
		}
	
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</form>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<tr><td height=\"20\"></td></tr>\r\n");
      out.write("</table></form></center></td></tr>\r\n");
      out.write("</table>\r\n");
      out.write(" \r\n");
      out.write("</Tbody>\r\n");
      out.write("</Table>\r\n");
      out.write("\r\n");
      out.write("<table width=\"780\" cellpadding=0 cellspacing=0>\r\n");
      out.write(" <tr><td class=fo >\r\n");
      out.write("<table cellpadding=0 cellspacing=0 width=\"821\" >\r\n");
      out.write("  <tr><td width=\"48\"><IMG height=36 src=\"img/m33.gif\" width=42 align=left ></td>\r\n");
      out.write("    <td class=fo width=\"737\">All Rights Reserved. </td>\r\n");
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
      out.write("        <LI><A href=\"jkccolleges.jsp\">JKC Colleges</A></LI> \r\n");
      out.write("\t\t<LI><A href=\"jkcreglistmain.jsp\">JKC  Students</A></LI>\r\n");
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
}catch(Exception e){
	out.println(e);}
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
