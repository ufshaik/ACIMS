/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.26
 * Generated at: 2016-04-26 01:56:51 UTC
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

public final class search_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


Connection con=null,conn=null;
Statement stmt1,stmt3,st;
 ResultSet rs=null,rs2=null,rs1=null;
  String val; boolean flag=false;   

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

try
 {
	con=Dbconnection.getConnection();
  //st=con.createStatement();
  
  //rs1= st.executeQuery("SELECT * FROM colleges");
  //ResultSetMetaData rsMetaData = rs1.getMetaData();
  //String col=rsMetaData.getColumnName(9);
  //out.println(rsMetaData.getColumnName(9));
  stmt1=con.createStatement();
  
  val=request.getParameter("Search");

  if((val.equals("JNTU"))||(val.equals("jntu")))
	  val="Jawaharla Nehru Technological University";
  if((val.equals("OU"))||(val.equals("ou")))
	  val="Osmania University";
  if((val.equals("JKC Colleges"))||(val.equals("jkc colleges"))||(val.equals("jkc")))
	  val="yes";
  //out.println(val);
	 
  
  String s="select  Coll_Name,coll_code,Status,AFFILIATED,jkc from colleges where  status!='onprocess' and status!='requesting' and (coll_name like '%"+val+"%' or affiliated like '%"+val+"%' or coll_code like '%"+val+"%' or affiliated like '%"+val+"%' or status like '"+val+"' or jkc='"+val+"' )  order by coll_name";
 // out.println(s);
  rs=stmt1.executeQuery(s);
  

//  rs.next();

 
  
  
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
      out.write(" onmouseover=\"openMenu('abtus',this,260,0);\" \r\n");
      out.write("            onmouseout=\"closeMenu('abtus',this);\" \r\n");
      out.write("           ><IMG \r\n");
      out.write("           onmouseover=\"this.src='img/buttons/abtus.gif'\" onmouseout=\"this.src='img/buttons/abtus1.gif'\" \r\n");
      out.write("           alt=AboutUs \r\n");
      out.write("         src=\"img/buttons/abtus1.gif\" width=\"93\" height=\"40\"></A></td></tr>\r\n");
      out.write("   \r\n");
      out.write(" </table>\r\n");
      out.write("\r\n");
      out.write("<tr><td height=400 valign=top>\r\n");
      out.write("\r\n");
 
    
   if(rs.next()==true)
      flag=true; 
   else
     flag=false; 
   if(flag==true)
 {
    
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(" <Table align=center border=0 width=98% >\r\n");
      out.write("    <Tbody>\r\n");
      out.write("    \r\n");
      out.write("<TR bgColor=#a9c6e2>\r\n");
      out.write("                            <TD width=\"6%\">&nbsp; </TD>\r\n");
      out.write("                            <TD width=\"66%\">\r\n");
      out.write("                              <DIV align=center><FONT size=1><B><FONT \r\n");
      out.write("                              face=\"Verdana, Arial, Helvetica, sans-serif\" \r\n");
      out.write("                              color=#000000>Name of the \r\n");
      out.write("                              Colleges/</FONT></B></FONT><FONT size=1><B><FONT \r\n");
      out.write("                              face=\"Verdana, Arial, Helvetica, sans-serif\" \r\n");
      out.write("                              color=#000000>Location</FONT></B></FONT></DIV></TD>\r\n");
      out.write("\t\t\t\t\t\t\t  <TD width=\"50%\">\r\n");
      out.write("                              <DIV align=center><FONT size=1><B><FONT \r\n");
      out.write("                              face=\"Verdana, Arial, Helvetica, sans-serif\" \r\n");
      out.write("                              color=#000000>Affiliated</FONT></B></FONT></DIV></TD>\r\n");
      out.write("                            <TD width=\"15%\">\r\n");
      out.write("                              <DIV align=center><FONT size=1><B><FONT \r\n");
      out.write("                              face=\"Verdana, Arial, Helvetica, sans-serif\" \r\n");
      out.write("                              color=#000000>Accredited \r\n");
      out.write("                              Status</FONT></B></FONT></DIV></TD>\r\n");
      out.write("                            </TR>\r\n");
int i=1;
while(flag)
	{  
      String code=rs.getString(2);
	  String s2="select city,website from CCDETAILS where COLL_CODE='"+code+"'";
    stmt3=con.createStatement();
   rs2=stmt3.executeQuery(s2);
	rs2.next();   
	  String website=rs2.getString(2);
  
	   
      out.write("\r\n");
      out.write("<Tr>\r\n");
      out.write("<TD bgcolor=\"EFEFEF\" align=center><FONT face=\"Verdana, Arial, Helvetica, sans-serif\" color=#000000 size=2>\r\n");
      out.write("    ");
      out.print(i);
      out.write(" </font> \r\n");
      out.write("\t <TD bgcolor=\"EFEFEF\" width=\"50%\"><FONT face=\"Verdana, Arial, Helvetica, sans-serif\" color=#000000 size=2>\r\n");
      out.write("     ");
      out.print(rs.getString(1));
      out.write(",\r\n");
      out.write("\t ");
      out.print(rs2.getString(1));
      out.write(",<a href=\"http://");
      out.print(website);
      out.write("\" target=\"_blank\">");
      out.print(website);
      out.write("</a></font> \r\n");
      out.write("\t <TD bgcolor=\"EFEFEF\" align=left width=\"50%\"><FONT face=\"Verdana, Arial, Helvetica, sans-serif\" color=#000000 size=2>\r\n");
      out.write("     ");
      out.print(rs.getString(4));
      out.write("</font> \r\n");
      out.write("\t <TD bgcolor=\"EFEFEF\" align=center><FONT face=\"Verdana, Arial, Helvetica, sans-serif\" color=#000000 size=2>\r\n");
      out.write("     ");
      out.print(rs.getString(3));
      out.write("</font>\r\n");
      out.write("\t \r\n");
      out.write("   ");
i=i+1;flag=rs.next();
   }
   
      out.write("</td></tr></table>");
}
else
{
    
      out.write("<Table align=center border=0 width=98% >\r\n");
      out.write("\t<tr><td height=300>\r\n");
      out.write("\t<b><center><FONT face=\"Verdana, Arial, Helvetica, sans-serif\" color=red size=2>Your search returned no results.<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; No articles from were found in the index.<br><br></center></font>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<FONT face=\"Verdana, Arial, Helvetica, sans-serif\" color=green size=2>\r\n");
      out.write("Suggestions:<br>\r\n");
      out.write("\r\n");
      out.write("<ul><li> Make sure all words are spelled correctly. </li>\r\n");
      out.write(" <li>Try different keywords. </li>\r\n");
      out.write("</ul>\r\n");
      out.write("</b></font>\r\n");
      out.write("\t</td></tr></table>\r\n");
      out.write("\t\r\n");
      out.write("\t");

}
      out.write("\r\n");
      out.write("\r\n");
      out.write("</tbody></table>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
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
      out.write("        <LI><A href=\"notify.jsp\">Notifications</A></LI>\r\n");
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
}
catch(Exception e)
{
out.println(e);
}
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
