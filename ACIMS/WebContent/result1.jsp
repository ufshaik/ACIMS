<%@ page import="java.sql.*"%>
<%! Connection con=null;
    PreparedStatement aci,ac,aci1,aci2,stmt2,aci3;
    ResultSet rs,rs1,rs2,rs3,rs4;
	String str,str1;
	int count,wrong,uns;
	double y;
%>
<%
try
{

 String uid=(String)session.getAttribute("uid1");
 String uns=(String)session.getAttribute("uns1");


String vv=request.getParameter("v");
  
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/acims","root","");
  
stmt2=con.prepareStatement("select to_char(sysdate,'hh:mi') from dual");
    rs2=stmt2.executeQuery();
    rs2.next();
String time1=rs2.getString(1);
	 int i2=Integer.parseInt(time1.substring(0,2));
	 int j2=Integer.parseInt(time1.substring(3,5));

aci2=con.prepareStatement("select roll from jkcresult");
rs4=aci2.executeQuery();
int o=0;
while(rs4.next())
	{
if(uid.equals(rs4.getString(1)))
	{
	 o=1;
	 break;
	}
   }
   if(o!=1)
	{
	   response.sendRedirect("timer.jsp?v=1");
	}
	aci=con.prepareStatement("select noq,key,activation,duration from exampaper");
rs=aci.executeQuery();
rs.next();
	int j=Integer.parseInt(rs.getString(1));
	int x=j;
aci1=con.prepareStatement("select YOURRESULT,CORRECT,WRONG,RESULT from jkcresult where ROLL='"+uid+"'");
rs1=aci1.executeQuery();
 rs1.next();
              
	   String r=rs1.getString(1);
      int re1=rs1.getInt(2);
	  int re2=rs1.getInt(3);
	  float re3=rs1.getFloat(4);
      int re4=j-((re1)+(re2));
	  if(re4<=0)
		  re4=0;
aci3=con.prepareStatement("select key,noq from exampaper");
rs3=aci3.executeQuery();
  rs3.next();
              
	   String r1=rs3.getString(1);
         int k3=rs3.getInt(2);
	

	int i=1,k=0;
String res=rs.getString(2);
String time=rs.getString(3);
	

	 int i1=Integer.parseInt(time.substring(0,2));
	 int j1=Integer.parseInt(time.substring(3,5));

	 int time3=Integer.parseInt(rs.getString(4));
	 int k1=j1;
	 k1=k1+time3;
	 if(k1>=60)
	{
		k1=k1-60;
		if(i1==12)
		{
			i1=1;
		}
		else
		{
        i1=i1+1;
		}
	}

%><%session.setAttribute("uid1",uid);%>
<html>
<meta http-equiv="refresh" content="60"><body>
<%if(vv.equals("1"))
	{
		response.sendRedirect("timer.jsp?v=1");
	}%>
<%
if(i1<=i2 && k1>=j2){%>
<%
	
	if(vv.equals("2"))
	{%>
		Exam is already submited
	<%}%>
   <h4>Wait until exam is completed</h4>
<center><%out.println("    Correct Answers: "+re1);%><br>
<%out.println("    Wrong Answers: "+re2);%><br>
<%out.println("    unanswered: "+re4);%><br>
<%out.println("Result: "+re3);%></center>
   <%}
else
	{%>
	<table border=1>
            <tr><td>Q NO</td><td>correct ans</td><td>your ans</td></tr>
	  <%int k2=0;
         while(k2<k3){%>
             
            
            <tr><td><%=k2+1%></td><td><%=r1.charAt(k2)%></td><td><%=r.charAt(k2)%></td></tr>
       <%k2++;}%>    
          </table>


<center><%out.println("    Correct Answers: "+re1);%><br>
<%out.println("    Wrong Answers: "+re2);%><br>
<%out.println("    unanswered: "+re4);%><br>
<%out.println("Result: "+re3);%></center>

<%}%>

</body></html>


<%
}
catch(Exception e)
{
	out.println(e);
 }
%>
