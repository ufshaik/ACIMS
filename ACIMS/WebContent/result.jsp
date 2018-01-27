<%@ page import="java.sql.*"%>
<%! Connection con=null;
    PreparedStatement aci,ac,aci1,stmt2;
    ResultSet rs,rs1,rs2;
	String str,str1;
	int count,wrong,uns;
	double y;
%>
<%
try
{

out.println("hi");
 String uid=(String)session.getAttribute("uid1");
  


Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/acims","root","");


stmt2=con.prepareStatement("select to_char(sysdate,'hh:mi') from dual");
    rs2=stmt2.executeQuery();
    rs2.next();
String time1=rs2.getString(1);
	 int i2=Integer.parseInt(time1.substring(0,2));
	 int j2=Integer.parseInt(time1.substring(3,5));


aci1=con.prepareStatement("select roll from jkcresult");
rs1=aci1.executeQuery();

while(rs1.next())
	{
	   String x1=rs1.getString(1);
	   if(uid.equals(x1))
		{
		    out.println("wait until exam is completed");
		}

    }
	
aci=con.prepareStatement("select noq,key,activation,duration from exampaper");
rs=aci.executeQuery();
rs.next();
	int j=Integer.parseInt(rs.getString(1));
	int x=j;
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





count=0;wrong=0;uns=0;str1="";

while(j>0)
	{
if(request.getParameter("ans"+i)==null)
		{
	str1+="U";
	uns=uns+1;;
	
	j--;
i++;
k++;

	continue;
		}


str=request.getParameter("ans"+i);
str1+=str;

if((res.charAt(k))==(str.charAt(0)))
		{
          count++;
		  
		}
else
		{
          wrong++;
		}


j--;
i++;
k++;
	}


%>
<%session.setAttribute("uid1",uid);%>
<html>

<body>

<center><br><br>
<%
	y=((float)(count*1)-((float)wrong*0.25));
out.println("    Correct Answers: "+count);%><br>
<%out.println("    Wrong Answers: "+wrong);%><br>
<%out.println("    Unanswered: "+uns);%><br>
<%out.println("Result: "+y);

Statement st=con.createStatement();

st.executeUpdate("insert into jkcresult values('"+uid+"',"+count+","+wrong+","+y+",'"+str1+"')");
response.sendRedirect("result1.jsp?v=0&&uns1="+uns);
 

%>


<br>

</center>
</body></html>

<%
}
catch(Exception e)
{
	//out.println(e);
 }
%>
