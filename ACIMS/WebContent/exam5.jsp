<%@ page import="java.sql.*"%>
<%! Connection con=null;
    PreparedStatement aci,aci1;
    ResultSet rs,rs1;
	
%>
<%
try
{
	String ww=request.getParameter("w");
	String vv=request.getParameter("v");
	String z=request.getParameter("z");
String uid=(String)session.getAttribute("uid1");

Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/acims","root","");


aci1=con.prepareStatement("select roll from jkcresult");
rs1=aci1.executeQuery();
while(rs1.next())
	{
	   String x1=rs1.getString(1);
	
	   if(uid.equals(x1))
		{
		     response.sendRedirect("exam3.jsp?v=0");
		}
    }

aci=con.prepareStatement("select noq,duration from exampaper");
rs=aci.executeQuery();
rs.next();

	int j=Integer.parseInt(rs.getString(1));

	
%><%session.setAttribute("uid1",uid);%>
<html><head>
<script language="JavaScript">
var i=<%=z%>;
if(i<0)
{
   i=60+i;
}
i=i-1;
var j=60,x;
function timedCount()
{
x=i+':'+j;	
document.getElementById('txt').value=x;
j=j-1;
if(j==0)
	{
	i=i-1;
	j=60;
	}

if(i==-1)
	{
	  
	  var form = document.exam;
      form.submit();

	   
	
	}
else
	{
       t=setTimeout("timedCount()",1000);
	}
}

</script>
</head>


<body onLoad="timedCount()">
<%if(vv.equals("1"))
	{%>
	
	Exam had been already submitted1
	<%}
else{%>
<form>

</form>

<form name=exam action="result.jsp" method=post><table><input type="text" id="txt" size="10"><%int i=1;while(i<=j){
	String  nm="ans"+i;%><tr><td><%=i%>)</td><td> A<input type=radio name=<%=nm%> value=A>B<input type=radio name=<%=nm%> value=B>C<input type=radio name=<%=nm%> value=C>D<input type=radio name=<%=nm%> value=D></td></tr><%i++;}%>
	
	
	</table>
	<input type=submit value=submit  ></form><%}%></body></html>


<%}
catch(Exception e)
{
	out.println(e);
 }
%>
