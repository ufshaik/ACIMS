<%@ page import="java.sql.*"%>
<%! Connection con=null;
    PreparedStatement aci,aci1,stmt2,stmt3;
    ResultSet rs,rs1,rs2,rs3;
	
%>
<%
try
{
	
	int z=3;
	String vv=request.getParameter("v");
    String vv1=request.getParameter("v1");
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
		     response.sendRedirect("result1.jsp?v=2");
		}
    }

aci=con.prepareStatement("select noq,duration from exampaper");
rs=aci.executeQuery();
rs.next();

	int w=Integer.parseInt(rs.getString(1));



stmt2=con.prepareStatement("select to_char(sysdate,'hh:mi:ss') from dual");
    rs2=stmt2.executeQuery();
    rs2.next();
	stmt3=con.prepareStatement("select activation,duration from exampaper");
    rs3=stmt3.executeQuery();
    rs3.next();

	String time=rs2.getString(1);
	

	 int i=Integer.parseInt(time.substring(0,2));
	 int j=Integer.parseInt(time.substring(3,5));
	 int sec=Integer.parseInt(time.substring(6,8));
	 int sec1=60-sec;
   String time1=rs3.getString(1);
  
     int x=Integer.parseInt(time1.substring(0,2));
	 int y=Integer.parseInt(time1.substring(3,5)); 
	
	 
	String dur=rs3.getString(2);
	int dur1=Integer.parseInt(dur);
    int l=x;    
	int k=y+Integer.parseInt(dur);
	if(k>=60)
	{
		k=k-60;
		if(l==12)
		{
			l=1;
		}
		else
		{
        l=l+1;
		}
	}
		





int m=0;


      if(i==x ||i==l)
	  {
	     if(i==x)
		 {
  			if(y<=j)
			 {
				 m=1;
				
				z=dur1-(j-y);
				if(z<=-1)
				 {
					m=2;
				 }
			 }
			  else
	        {%>
	 <center>Exam is activated At <%=time1%><br>Current time:<%=time%></center>
     <%}

		 }
		 else
			 {
				 if(k>=j)
				 {
					  m=1;
					 z=k-j;
					
				 }
				  else
	              {
	               m=2;
                   }

			 }
	  }
	  else
	 {%>
	 <center>Exam is activated At <%=time1%><br>Current time:<%=time%></center>
     <%}

            






	
%><%session.setAttribute("uid1",uid);%>
<%if(m==1){%><html><head>
<script language="JavaScript">

var i=<%=z%>;
if(i<0)
{
   i=60+i;
}
i=i-1;
var j=<%=sec1%>,x;
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
	
	Exam had been already submitted
	<%}
else{%>
<form>
<input type="text" id="txt" size="10">
</form>

<form name=exam action="result.jsp" method=post><table><%int i1=1;while(i1<=w){
	String  nm="ans"+i1;%><tr><td><%=i1%>)</td><td> A<input type=radio name=<%=nm%> value=A>B<input type=radio name=<%=nm%> value=B>C<input type=radio name=<%=nm%> value=C>D<input type=radio name=<%=nm%> value=D></td></tr><%i1++;}%>
	
	
	</table>
	<input type=submit value=submit  ></form><%}%></body></html>

<%}
if(m==2)
	{
	 
	 response.sendRedirect("result1.jsp?v=1");}

}
catch(Exception e)
{
	out.println(e);
 }
%>
