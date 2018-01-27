<%@ page import="java.sql.*"%>
<%@page import="com.Dbconnection.Dbconnection"%>
<%! Connection con=null;
    PreparedStatement aci;
	Statement log,log1,log2,pst1;
	
    ResultSet rs,rs1,rs2,ry,rs3;
%>	
<%try
{
	int l=0;
	String f1=request.getParameter("f");
	con=Dbconnection.getConnection();
	
aci=con.prepareStatement("select count(*) from jkcdata where status='0'");
rs=aci.executeQuery();
rs.next();
int i=rs.getInt(1);
if(i==0)
	{
	   response.sendRedirect("sturequest.jsp?v=1");
	}
int k=i;
int j=1;




 if(f1.equals("submit"))
	{
while(i>0)
	{
	   
       String id1=request.getParameter("ch"+j);
	   if(id1!=null)
		{
		    out.println("id"+j);
			String id2=request.getParameter("id"+j);
			l=1;
			Statement st=con.createStatement();
            st.executeUpdate("update jkcdata set status='1' where roll='"+id2+"'");
           
		}
		j++;
		i--;

	}
	response.sendRedirect("sturequest.jsp?v=2");
	}
else
	{
j=1;
while(k>0)
	{
	   
       String id1=request.getParameter("ch"+j);
	   out.println(id1);
	    if(id1!=null)
		{
		    out.println("id"+j);
			String id2=request.getParameter("id"+j);
            l=1;
			Statement st1=con.createStatement();
            st1.executeUpdate("delete from jkcdata where roll='"+id2+"'");
           
		}
		j++;
		k--;
	}
      response.sendRedirect("sturequest.jsp?v=3");
	}
 %>
<%}
catch(Exception e)
{out.println(e);}
finally
{
	con.close();
}%>

