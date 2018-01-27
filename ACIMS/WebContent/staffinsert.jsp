<%@ page import="java.sql.*"%>
<%@page import="com.Dbconnection.Dbconnection"%>
<%! Connection con=null;
    PreparedStatement aci,pst2;
	ResultSet rz=null;
	String y;
%>
<%
try
{
	String uid=(String)session.getAttribute("uid1");
	String ta=uid+"t";
	   if(uid!=null)
  {}
else
{
      response.sendRedirect("index.jsp");
  }
	String pin=request.getParameter("id");
	
	
	String dob=request.getParameter("day")+"/"+request.getParameter("mon")+"/"+request.getParameter("year");
	

	con=Dbconnection.getConnection();
	
pst2=con.prepareStatement("select reg_id from "+ta+"");
rz=pst2.executeQuery();
while(rz.next())
	{
	    y=rz.getString(1);
		out.println(y);
	    if(pin.equals(y))
		{
			response.sendRedirect("staffdetails.jsp?v=2");
			break;
        }
	}
aci=con.prepareStatement("insert into "+ta+" values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
aci.setString(1,request.getParameter("fn"));
aci.setString(2,request.getParameter("ln"));
aci.setString(3,request.getParameter("id"));
aci.setString(4,request.getParameter("degree"));
aci.setString(5,request.getParameter("contactno"));
aci.setString(6,request.getParameter("emailid"));
aci.setString(7,request.getParameter("address"));
aci.setString(8,request.getParameter("prof"));
aci.setString(9,request.getParameter("sal"));
aci.setString(10,request.getParameter("classsal"));
aci.setString(11,dob);
aci.setString(12,request.getParameter("gender"));
aci.setString(13,request.getParameter("subject"));
aci.setString(14,"0");
aci.setString(15,"0");
aci.setString(16,"0");
aci.setString(17,"0");



int i=aci.executeUpdate();
if(i==1)
{
response.sendRedirect("staffdetails.jsp?v=1");
}
con.close();
}
catch(Exception e)
{
	out.println(e);
}
%>
