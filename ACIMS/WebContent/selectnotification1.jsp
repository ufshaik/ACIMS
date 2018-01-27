<%@ page import="java.sql.*"%>
<%@page import="com.Dbconnection.Dbconnection"%>
<%! Connection con=null;
    PreparedStatement aci,aci1;
	Statement stmt1;
    ResultSet rs,rs1;
%>	
<%try
{
	int l=0;
	String f1=request.getParameter("f");
	 con=Dbconnection.getConnection();
aci=con.prepareStatement("select count(*) from notifications");
rs=aci.executeQuery();
rs.next();
int i=rs.getInt(1);
out.println(i);
if(i==0)
	{
	   response.sendRedirect("selectnotification.jsp?v=1");
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
		    
			String id2=request.getParameter("id"+j);
			l=1;
			Statement st=con.createStatement();
            st.executeUpdate("update notifications set status='1' where noteid='"+id2+"'");
           
		}
		j++;
		i--;

	}
	response.sendRedirect("selectnotification.jsp?v=2");
	}
else
	{
    j=1;
    while(k>0)
	{
	   out.println("hi");
       String id1=request.getParameter("ch"+j);
	   
	    if(id1!=null)
		{
		
			String id2=request.getParameter("id"+j);
            l=1;
			Statement st1=con.createStatement();
            st1.executeUpdate("delete from notifications where noteid='"+id2+"'");
           
		}
		j++;
		k--;
	}
     

	 aci1=con.prepareStatement("select noteid from notifications");
      rs1=aci1.executeQuery();
	  int n=1;
	  out.println("hi1");
	  while(rs1.next())
		{
		    int sn=rs1.getInt(1);
			out.println(sn);
			if(sn!=n)
			{
                  stmt1=con.createStatement();
				 stmt1.executeUpdate("update notifications set noteid="+n+" where noteid="+sn);
			}
			n++;
		}
		

      response.sendRedirect("selectnotification.jsp?v=3");
	}
 %>
<%}
catch(Exception e)
{out.println(e);}
finally
{
	con.close();
}%>

