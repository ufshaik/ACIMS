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
String dob=request.getParameter("day")+"/"+request.getParameter("mon")+"/"+request.getParameter("year");
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/acims","root","");
String ta=uid+"t";
aci=con.prepareStatement("update "+ta+" set FIRSTNAME=?,LASTNAME=?,DEGREE=?,CONTACTNO=?, ADDRESS=?,EMAIL_ID=?,PROFF=?,TOTALSAL=?,CLASSSAL=?,DOB=?,GENDER=?,SUBJECT=? where REG_ID=?");
      


aci.setString(1,request.getParameter("fn"));
aci.setString(2,request.getParameter("ln"));
aci.setString(3,request.getParameter("degree"));
aci.setString(4,request.getParameter("contactno"));
aci.setString(5,request.getParameter("address"));
aci.setString(6,request.getParameter("emailid"));
aci.setString(7,request.getParameter("prof"));
aci.setString(8,request.getParameter("sal"));
aci.setString(9,request.getParameter("classsal"));
aci.setString(10,dob);
aci.setString(11,request.getParameter("gender"));
aci.setString(12,request.getParameter("subject"));
aci.setString(13,request.getParameter("id"));
int i=aci.executeUpdate();

if(i==1)
	{
       response.sendRedirect("updatestaff1.jsp?t5="+xy+"&&v=1");
	   
    }
%>	<%session.setAttribute("uid1",uid);%>
<%}

catch(Exception e)
{
out.println(e);}
finally
{con.close();
}
%>


