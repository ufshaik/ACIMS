<%try{
String vv=request.getParameter("v");
String uid=request.getParameter("uid1");
session.setAttribute("uid1",uid);
%>
<HTML>
 <HEAD>
  <TITLE> New Document </TITLE>
  
 </HEAD>

 <BODY>
 <center>
 <%if(vv.equals("1")){%>
        <h3>Presntly no exam is activated</h3><%}
else{%>
	    Exam time is completed.<%}%>
</center>
 </BODY>
</HTML><%}catch(Exception e){}%>

