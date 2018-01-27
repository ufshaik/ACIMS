<%
try{
	String vv=request.getParameter("v");
	String uid=(String)session.getAttribute("uid1");
if(vv.equals("1"))
{%>
   <jsp:forward page="exam3.jsp"/>
   <%
  //response.sendRedirect("exam3.jsp");
}
else{
%>
<frameset  rows="23,77" >
     <frame src="exam4.jsp" scrolling="no">
  <frameset cols="80,20">
			   <frame src="exam1.jsp">
			   <frame src="exam2.jsp?v=0&&v1=0">
             </frameset></frameset>
<%}%>
			 <%session.setAttribute("uid1",uid);%>
<%}
   catch(Exception e)
   {}
   %>
