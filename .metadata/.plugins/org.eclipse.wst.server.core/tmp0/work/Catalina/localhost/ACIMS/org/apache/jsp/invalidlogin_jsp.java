/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.26
 * Generated at: 2016-03-17 08:52:25 UTC
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

public final class invalidlogin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

Connection con=null;
   Statement st;
   ResultSet rs;

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
st=con.createStatement();
rs=st.executeQuery("select * from notifications");

      out.write("\r\n");
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
      out.write("\r\n");
      out.write("<SCRIPT src=\"dropdown/images_rotate.js\" \r\n");
      out.write("type=text/javascript></SCRIPT>\r\n");
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
      out.write("\r\n");
      out.write("<script type=\"text/javascript\" language=\"JavaScript\" src=\"rotate/slideshow.js\"></script>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\" language=\"JavaScript\">\r\n");
      out.write("\tfunction checkemail()\r\n");
      out.write("{\r\n");
      out.write("var str=document.frm.email1.value;\r\n");
      out.write("\r\n");
      out.write("var filter=/^([\\w-]+(?:\\.[\\w-]+)*)@((?:[\\w-]+\\.)*\\w[\\w-]{0,66})\\.([a-z]{2,6}(?:\\.[a-z]{2})?)$/i\r\n");
      out.write("if (!(filter.test(str)))\r\n");
      out.write(" {\r\n");
      out.write("  alert(\"Please input a valid email address!\")\r\n");
      out.write("  document.frm.email1.focus();\r\n");
      out.write(" } \r\n");
      out.write("  \r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<BODY >\r\n");
      out.write("<table cellpadding=0 cellspacing=0 width=\"780\" border=1  align=center  bordercolor=\"#2A8DCC\" >\r\n");
      out.write("  <tr><td valign=top class=to width=\"780\">\r\n");
      out.write("       <table width=\"820\" cellpadding=0 cellspacing=0 height=\"174\">\r\n");
      out.write("            <tr>\r\n");
      out.write("             <td width=\"822\" height=\"144\"><IMG id=IMG1 height=144 src=\"img/sri.gif\" width=\"100%\" ></td></tr>\r\n");
      out.write("             <tr><td width=\"822\" height=\"10\"><IMG height=40 src=\"img/m021.jpg\" width=326 ><A href=\"index.jsp\"><IMG \r\n");
      out.write("                onmouseover=\"this.src='img/buttons/home.gif'\" onmouseout=\"this.src='img/buttons/home1.gif'\" \r\n");
      out.write("               alt=Home \r\n");
      out.write("               src=\"img/buttons/home1.gif\" width=\"93\" height=\"40\"></A><A onmouseover=\"openMenu('naac',this,-20,0);\" \r\n");
      out.write("              onmouseout=\"closeMenu('naac',this);\" \r\n");
      out.write("               ><IMG \r\n");
      out.write("                onmouseover=\"this.src='img/buttons/naac.gif'\" onmouseout=\"this.src='img/buttons/naac1.gif'\" \r\n");
      out.write("               alt=NAAC \r\n");
      out.write("               src=\"img/buttons/naac1.gif\" width=\"93\" height=\"40\"></A><A onmouseover=\"openMenu('colleges',this,72,0);\" \r\n");
      out.write("                onmouseout=\"closeMenu('colleges',this);\" \r\n");
      out.write("               ><IMG \r\n");
      out.write("                onmouseover=\"this.src='img/buttons/college.gif'\" onmouseout=\"this.src='img/buttons/college1.gif'\" \r\n");
      out.write("               alt=college \r\n");
      out.write("              src=\"img/buttons/college1.gif\" width=\"93\" height=\"40\"></A><A onmouseover=\"openMenu('jkc',this,168,0);\" \r\n");
      out.write("                onmouseout=\"closeMenu('jkc',this);\" \r\n");
      out.write("            ><IMG \r\n");
      out.write("            onmouseover=\"this.src='img/buttons/jkc.gif'\" onmouseout=\"this.src='img/buttons/jkc1.gif'\" \r\n");
      out.write("            alt=jkc \r\n");
      out.write("          src=\"img/buttons/jkc1.gif\" width=\"93\" height=\"40\"></A><A\r\n");
      out.write("\r\n");
      out.write("             onmouseover=\"openMenu('abtus',this,260,0);\" \r\n");
      out.write("            onmouseout=\"closeMenu('abtus',this);\" \r\n");
      out.write("           ><IMG \r\n");
      out.write("           onmouseover=\"this.src='img/buttons/abtus.gif'\" onmouseout=\"this.src='img/buttons/abtus1.gif'\" \r\n");
      out.write("           alt=AboutUs \r\n");
      out.write("         src=\"img/buttons/abtus1.gif\" width=\"93\" height=\"40\"></A></td></tr>\r\n");
      out.write("   \r\n");
      out.write("   \r\n");
      out.write("       </table>\r\n");
      out.write("   </td></tr>\r\n");
      out.write("  <tr><td colspan=2 width=100% bgcolor=\"0077c0\">\r\n");
      out.write(" <FONT  face=\"Verdana, Arial, Helvetica, sans-serif\" color=\"#FFE0A2\" size=3>\r\n");
      out.write(" <h5><marquee behavior=\"alternate\" scrollamount=4 onmouseover=this.stop() onmouseout=this.start()> Welcome to Accredited College Information Management Systems</marquee></td></tr></h5>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<tr><td  bgcolor=white>\r\n");
      out.write("   \r\n");
      out.write("\r\n");
      out.write(" <table valign=top width=\"819\"><tr valign=top> \r\n");
      out.write("    <td valign=top width=\"571\">\r\n");
      out.write("       <table  cellpadding=0 cellspacing=0 >\r\n");
      out.write("         <tr><td rowspan=2 valign=top width=\"205\"><IMG height=181 src=\"img/m12.jpg\" width=205 ></td>\r\n");
      out.write("         <td valign=top bgcolor=#dbdbdb width=\"318\"><IMG height=19 src=\"img/m13.gif\" width=318 ><h1>VISION :</h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;To \r\n");
      out.write("                  make quality the defining element of&nbsp;&nbsp; higher education in India through a combination of self and external quality evaluation, promotion and sustenance initiatives.</td>\r\n");
      out.write("         <td rowspan=2 valign=top width=\"43\"><IMG height=181 src=\"img/m14.gif\" width=43 ></td>\r\n");
      out.write("\r\n");
      out.write("         <tr><td valign=bottom bgcolor=#dbdbdb width=\"318\"><IMG height=32 src=\"img/m23.gif\" width=318 ></td></tr>\r\n");
      out.write("         </table> \r\n");
      out.write("            \r\n");
      out.write("         <table width=\"575\">\r\n");
      out.write("        \r\n");
      out.write("        <tr><td width=\"308\" ><font color=#000000> To make quality the defining element of higher education in India through a combination of self and external quality evaluation, promotion and sustenance initiatives.</font></td>\r\n");
      out.write("<td  width=\"264\"  >\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("//new fadeshow(IMAGES_ARRAY_NAME, slideshow_width, slideshow_height, borderwidth, delay, pause (0=no, 1=yes), optionalRandomOrder)\r\n");
      out.write("new fadeshow(fadeimages, 305, 200, 0, 2200, 0, \"R\")\r\n");
      out.write("              </script></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        </table>\r\n");
      out.write("     \r\n");
      out.write("       <p>&nbsp;</p>\r\n");
      out.write("     \r\n");
      out.write("       <table >\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<tr>\r\n");
      out.write("<td colspan=2 align=center><FONT \r\n");
      out.write("                              face=\"Verdana, Arial, Helvetica, sans-serif\" \r\n");
      out.write("                              color=#006699 size=3><b><u>Enter Ur FeedBack</b></font></td></tr>\r\n");
      out.write("<tr ><td height=5></td></tr>\r\n");
      out.write("<tr><td valign=top>\r\n");
      out.write("<form name=frm method=post action=\"addfeedback.jsp\">\r\n");
      out.write("\r\n");
      out.write("<table valign=top>\r\n");
      out.write("\r\n");
      out.write("<tr  ><td >\r\n");
      out.write("Name:</td><td><INPUT size=\"20\" name=\"name1\" maxlength=\"10\"></td></tr>\r\n");
      out.write("<tr ><td height=5></td></tr>\r\n");
      out.write("<tr ><td >\r\n");
      out.write("Email:</td><td><INPUT size=\"25\" name=\"email1\" maxlength=\"50\" onblur=\"checkemail()\"></td></tr>\r\n");
      out.write("</td></table>\r\n");
      out.write("<td><table>\r\n");
      out.write("<tr><td>\r\n");
      out.write("FeedBack:</td><td><textarea name=\"feedback\" rows=5 cols=28 maxlength=\"150\"></textarea></td></tr>\r\n");
      out.write("<td align=right><Input type=\"submit\" value=\"Submit\"></td>\r\n");
      out.write("</form></table></td>\r\n");
      out.write("\r\n");
      out.write("</td></tr></table>\r\n");
      out.write("\r\n");
      out.write("</td>\r\n");
      out.write("<td width=\"238\">\r\n");
      out.write(" <table valign=top width=\"241\" height=\"1\" >\r\n");
      out.write("<tr><td><br></td></tr>\r\n");
      out.write("<tr>\r\n");
      out.write("<form method=\"post\" action=\"login.jsp\">\r\n");
      out.write("<tr ><td width=\"101\" height=\"19\" align=center>\r\n");
      out.write("Login ID: </td><td width=\"130\" height=\"19\" ><INPUT type=\"text\" size=\"20\" name=\"loginid\"></input></td></tr>\r\n");
      out.write("<tr ><td width=\"101\" height=\"19\" align=center>Password:</td><td width=\"130\" height=\"19\" ><INPUT type=\"password\" size=\"20\" name=\"password\"></td></tr>\r\n");
      out.write("<tr><td width=\"231\" height=\"19\" colspan=2><FONT \r\n");
      out.write("                              face=\"Verdana, Arial, Helvetica, sans-serif\" \r\n");
      out.write("                              color=red size=2>UserName & Password \r\n");
      out.write("  donot match </font></td></tr>\r\n");
      out.write("\r\n");
      out.write("<tr><td  width=\"101\" ></td>\r\n");
      out.write("  <td width=\"130\" align=center><input type=\"submit\"  value=\"  Sign-In  \"></td></tr>\r\n");
      out.write("</form>\r\n");
      out.write("<tr><td height=\"15\" width=\"123\"></td></tr>\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<br><br><br><br>\r\n");
      out.write("<table >\r\n");
      out.write("\r\n");
      out.write("<tr><td bgcolor=\"0077c0\" align=\"center\">\r\n");
      out.write("\r\n");
      out.write("<FONT  face=\"Verdana, Arial, Helvetica, sans-serif\" color=\"#FFE0A2\" size=3><B>NOTIFICATIONS</td></tr>\r\n");
      out.write("<tr><td height=30></td></tr>\r\n");
      out.write("\r\n");
      out.write("<tr><td width=\"198\" height=\"194\" align=\"left\" valign=\"top\"><marquee LOOP=\"infinite\" behavior=\"scroll\" \r\n");
      out.write("                                    direction=\"up\"  \r\n");
      out.write("                                    height=\"133px\"\r\n");
      out.write("                                    width=\"200px\"\r\n");
      out.write("                                    scrollamount=2\r\n");
      out.write("                                    scrolldelay=65\r\n");
      out.write("                                    style=\"text-align: center ; padding: 4px; \"\r\n");
      out.write("                                    truespeed onmouseover=this.stop() onmouseout=this.start()>\r\n");

int i=1;
while(rs.next())
{
      out.write("\r\n");
      out.write(" <table>    \r\n");
      out.write("<tr><td height=\"20\" width=\"200\">\r\n");
      out.write("\t<font face=\"Verdana\" color=\"#800000\" size=2><ul><li> ");
      out.print(rs.getString(4));
      out.write("</font></ul></li>\r\n");
      out.write("</td></tr>\r\n");
      out.write("\r\n");
      out.write(" </table>         \r\n");
i++;if(i>5)
         {break;}}
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</marquee>\t\r\n");
      out.write("\r\n");
      out.write("\t </font></td></tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("<td valign=\"top\" height=\"100%\">\r\n");
      out.write("\t<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" height=\"100%\">\r\n");
      out.write("\t\t<tr><td height=\"20\"></td></tr>\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<form action=\"search.jsp\" >\r\n");
      out.write("\t\t\t<td width=\"170\" height=\"86\" background=\"bgserch.gif\" style=\"padding-top:45px;padding-left:15px;\">\r\n");
      out.write("\t\t\t<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td><input type=\"text\" style=\"width:130;height:20\" name=\"Search\"></td>\r\n");
      out.write("\t\t\t\t\t<td><input type=\"image\" src=\"go.gif\" border=\"0\" hspace=\"7\"></td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t\t</td></form></tr>\r\n");
      out.write("\t \r\n");
      out.write("\t \r\n");
      out.write("\t \r\n");
      out.write("\t \r\n");
      out.write("\t \r\n");
      out.write("\t \r\n");
      out.write("\t </td></tr></table>\r\n");
      out.write("\t </table>\r\n");
      out.write("\t </table>\r\n");
      out.write("<table width=\"784\" cellpadding=0 cellspacing=0 >\r\n");
      out.write(" <tr><td class=fo >\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<table cellpadding=0 cellspacing=0 width=\"826\" >\r\n");
      out.write("  <tr><td width=\"48\"><IMG height=36 src=\"img/m33.gif\" width=42 align=left ></td>\r\n");
      out.write("    <td class=fo width=\"737\">All Rights Reserved. </td>\r\n");
      out.write("    <td align=right width=\"220\" class=fo><IMG height=36 src=\"img/m35.gif\" width=214 ></td></tr>\r\n");
      out.write(" </table></td></tr>\r\n");
      out.write("</table>\r\n");
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
      out.write("\t\t<LI><A href=\"jkcreglistmain.jsp\">JKC Selected Students</A></LI>\r\n");
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
      out.write("</BODY>\r\n");
      out.write("</HTML>\r\n");
      out.write("          \r\n");
}
catch(Exception e)
	{
	out.println(e);
	}
finally
{
	con.close();
}	
	
      out.write("   \r\n");
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
