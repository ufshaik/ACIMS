/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.26
 * Generated at: 2016-03-17 08:39:27 UTC
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

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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

Statement stmt,stmt1;
ResultSet rs=null,rs1=null;
String usr,passwd;

  usr=request.getParameter("loginid");
  passwd=request.getParameter("password");
  //out.println(usr+" "+passwd);
      out.write('\r');
      out.write('\n');
session.setAttribute("uid1",usr);
      out.write("\r\n");
      out.write("  ");

  try
  {
	  Connection con;
	  con=Dbconnection.getConnection();
	  
  stmt=con.createStatement();
  
  HttpSession httpSession=request.getSession();
  
  rs=stmt.executeQuery("select * from logins");
  
  while(rs.next())
  {
	   String un=rs.getString(1);
	   String pa=rs.getString(2);
        String va=rs.getString(3);
		//out.println(un+" "+pa+" "+va);
		
		 httpSession.setAttribute("u_name",rs.getString(1));
		 httpSession.setAttribute("p_word",rs.getString(2));
		 httpSession.setAttribute("type",rs.getString(3));
		 
	 if((usr.equals(un))&&(passwd.equals(pa))&&(va.equals("cce")))
     { 
      out.write("\r\n");
      out.write("      ");
      if (true) {
        _jspx_page_context.forward("admin.jsp?v=0");
        return;
      }
      out.write("\r\n");
      out.write("     ");
}
        if(usr.equals(un)&&passwd.equals(pa)&&(va.equals("college")))
		 {
      out.write("\r\n");
      out.write("      ");
      if (true) {
        _jspx_page_context.forward("home.jsp");
        return;
      }
      out.write("\r\n");
      out.write("       ");
}
        if(usr.equals(un)&&passwd.equals(pa)&&(va.equals("jkcadmin")))
		 {
      out.write("\r\n");
      out.write("      ");
      if (true) {
        _jspx_page_context.forward("jkcadminhome.jsp?v=0");
        return;
      }
      out.write("\r\n");
      out.write("       ");
}
   }

stmt1=con.createStatement();
 String s2="select ROLL,PWD,STATUS from jkcdata";
  out.println(s2);
  rs1=stmt1.executeQuery(s2);
 while(rs1.next())
  {
	   String un1=rs1.getString(1);
	   String pa1=rs1.getString(2);
        String va1=rs1.getString(3);  
    //out.println(un1+" "+pa1+" "+va1);
	if((usr.equals(un1))&&(passwd.equals(pa1))&&(va1.equals("1")))
     { 
      out.write("\r\n");
      out.write("      ");
      if (true) {
        _jspx_page_context.forward("home1.jsp?v=0");
        return;
      }
      out.write("\r\n");
      out.write("     ");
}
  }
    
      out.write("\r\n");
      out.write("   ");
      if (true) {
        _jspx_page_context.forward("invalidlogin.jsp");
        return;
      }
      out.write("\r\n");
      out.write("   ");

     out.println("Username or password you entered is invalid");
    }
    
  
    catch(Exception e)
    {
        out.println(e);
     }
     
      out.write("\r\n");
      out.write("\r\n");
      out.write("       \r\n");
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