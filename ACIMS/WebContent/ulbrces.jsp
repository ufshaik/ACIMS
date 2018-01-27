<%@ page import="java.sql.*"%>
<%! Connection con=null;
    PreparedStatement aci;
    
%>
<%
try
{
String xy=(String)session.getAttribute("regid");
String uid=(String)session.getAttribute("uid1");
   if(uid!=null)
  {}
else
{
      response.sendRedirect("index.jsp");
  }
String doj=request.getParameter("day1")+"/"+request.getParameter("mon1")+"/"+request.getParameter("year1");

String dob=request.getParameter("day")+"/"+request.getParameter("mon")+"/"+request.getParameter("year");
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/acims","root","");
String ta=uid+"s";
aci=con.prepareStatement("update "+ta+" set   FIRSTNAME=?,LASTNAME=?,FATHERNAME=?,FAT_OCC=?,CATEGORY=?,BRANCH=?,DISTRICT=?,CONTACT_NO=?,EMAIL_ID=?,ACC_NO=?,REG_FEE=?,SSC=?,INTER=?,DATE_OF_JOINING=?,GENDER=?,DATE_OF_BIRTH=?,COURSE=?,ADDRESS=? where REG_ID=?");



aci.setString(1,request.getParameter("fn"));
aci.setString(2,request.getParameter("ln"));
aci.setString(3,request.getParameter("fathername"));
aci.setString(4,request.getParameter("fatheroccupation"));
aci.setString(5,request.getParameter("category"));
aci.setString(6,request.getParameter("branch"));
aci.setString(7,request.getParameter("district"));
aci.setString(8,request.getParameter("contactno"));
aci.setString(9,request.getParameter("emailid"));
aci.setString(10,request.getParameter("accountno"));
aci.setString(11,request.getParameter("regfee"));
aci.setString(12,request.getParameter("ssc"));
aci.setString(13,request.getParameter("inter"));
aci.setString(14,doj);
aci.setString(15,request.getParameter("gender"));
aci.setString(16,dob);
aci.setString(17,request.getParameter("course"));
aci.setString(18,request.getParameter("address"));
aci.setString(19,request.getParameter("rid"));
int i=aci.executeUpdate();

if(i==1)
	{
       response.sendRedirect("updatestu1.jsp?t5="+xy+"&&uid1="+uid+"&&v=1");	     
    }
}
catch(Exception e)
{
out.println(e);}
%>


