<%@ page import="java.sql.*"%>
<%@page import="com.Dbconnection.Dbconnection"%>
<%! Connection con=null;
    PreparedStatement aci;
    
%>
<%
try
{
String xy=(String)session.getAttribute("uid1");
   if(xy!=null)
  {}
else
{
      response.sendRedirect("index.jsp");
  }
String ta=xy+"s";
String doj=request.getParameter("day1")+"/"+request.getParameter("mon1")+"/"+request.getParameter("year1");
out.println(doj+" "+ta);
String dob=request.getParameter("day")+"/"+request.getParameter("mon")+"/"+request.getParameter("year");

con=Dbconnection.getConnection();

aci=con.prepareStatement("insert into "+ta+" values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
aci.setString(1,request.getParameter("id"));
aci.setString(2,request.getParameter("fn"));
aci.setString(3,request.getParameter("ln"));
aci.setString(4,request.getParameter("fathername"));
aci.setString(5,request.getParameter("fatheroccupation"));
aci.setString(6,request.getParameter("category"));
aci.setString(7,request.getParameter("branch"));
aci.setString(8,request.getParameter("district"));
aci.setString(9,request.getParameter("contactno"));
aci.setString(10,request.getParameter("emailid"));
aci.setString(11,request.getParameter("accountno"));
aci.setString(12,request.getParameter("regfee"));
aci.setString(13,request.getParameter("ssc"));
aci.setString(14,request.getParameter("inter"));
aci.setString(15,doj);
aci.setString(16,request.getParameter("gender"));
aci.setString(17,dob);
aci.setString(18,"0");
aci.setString(19,"0");
aci.setString(20,request.getParameter("course"));
aci.setString(21,request.getParameter("address"));
int i=aci.executeUpdate();
if(i==1)
{
response.sendRedirect("addstu.jsp?uid="+xy+"&&v=1");
}
else
	{
	response.sendRedirect("addstu.jsp?uid="+xy+"&&v=2");
    }
con.close();
}
catch(Exception e)
{
 
 }
%>
