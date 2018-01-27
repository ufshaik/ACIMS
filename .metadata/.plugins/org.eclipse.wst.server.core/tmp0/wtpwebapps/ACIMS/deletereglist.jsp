<%@ page import="java.sql.*"%>
<%@page import="com.Dbconnection.Dbconnection"%>
<%! Connection con=null;
    PreparedStatement aci,aci1;
	Statement stmt1;
    ResultSet rs,rs1;
%>	
<%

try
{
	int l=0;
	String f1=request.getParameter("f");
	con=Dbconnection.getConnection();
aci=con.prepareStatement("select count(*) from jkcdata");
rs=aci.executeQuery();
rs.next();
int i=rs.getInt(1);

if(i==0)
	{
	   response.sendRedirect("jkcreglist.jsp?v=1");
	}

int j=1;

while(i>0)
	{
	   
       String id1=request.getParameter("ch"+j);
	   
	   if(id1!=null)
		{
		    String id2=request.getParameter("chh"+j);
			out.println(id2);
            String s="delete from jkcdata where roll='"+id2+"'";
			out.println(s);
			Statement st=con.createStatement();
            st.executeUpdate("delete from jkcdata where roll='"+id2+"'");
           
		}
	
		i--;
		j++;

	}
	response.sendRedirect("jkcreglist.jsp?v=2");
	}



catch(Exception e)
{out.println(e);}
finally
{
	con.close();
}%>

