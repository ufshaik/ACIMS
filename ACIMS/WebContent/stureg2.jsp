
<HTML>
 <HEAD>
  <TITLE> New Document </TITLE>
 
<script language="JavaScript">
function check()
{
	var x=document.getElementById("pwd").value;
    var y=document.getElementById("cpwd").value;
	
	if(x.length!=y.length)
    {
		alert("Both the password donot match");
		document.getElementById("pwd").focus();
		return false;
	}

	for(var i=0;i<y.length;i++)
	{
        if(x.charAt(i)!=y.charAt(i))
		{
		alert("Both the password donot match");
		document.getElementById("pwd").focus();
		break;
	     }
     }
}

	

function len()
	{
	var x1="";
	var j=document.getElementById("marks").value;
	
	if(j.length>'6')
		{
		   alert("the value should be in the form  _ _ _._ _");
		   document.getElementById("marks").focus();
		}
    else
	    {
		    for(var i=0;i<j.length;i++)
			{ 
				if((j.charAt(i)>='0'&&j.charAt(i)<='9')||(j.charAt(i)=='.'))
				 {}
				else
				 {
					 alert("characters are not allowed");
					 document.getElementById("marks").focus();
					 break;
				 }
				if(j.charAt(i)=='.')
			    {
					break;
				}
				else
				{
                x1=x1+j.charAt(i);
				}
			}
			
			if(x1>100)
			{
				alert(" The percentage of marks should not exceed 100");
		        document.getElementById("marks").focus();
			}
		}
	}

function validate_required(field,alerttxt)
{
with(field)
{
if (value==null||value=="")
  {alert(alerttxt);return false}
else {return true}
}
}


function validate_form(thisform)
{
with (thisform)
{




if (validate_required(id,"Registration number field must be filled out!")==false)
  {id.focus();return false}
if (validate_required(fn,"First name field must be filled out!")==false)
  {fn.focus();return false}
if (validate_required(sn,"Surname field must be filled out!")==false)
  {sn.focus();return false}
if (validate_required(cn,"College name field must be filled out!")==false)
  {cn.focus();return false}
if (validate_required(cc,"college code field must be filled out!")==false)
  {cc.focus();return false}
if (validate_required(marks,"marks field must be filled out!")==false)
  {marks.focus();return false}
if (validate_required(pwd,"password field must be filled out!")==false)
  {pwd.focus();return false}
if (validate_required(cpwd,"Confirm password field must be filled out!")==false)
  {cpwd.focus();return false}
if(check()==false)
	{pwd.focus();return false}

}}
  </script>
 </HEAD>

 <BODY>
<center><font color=green size=4px></b>Record updated</b></center></font>  
<form onsubmit="return validate_form(this)" action="stureg1.jsp" method=post>
<table align=center width="567"><caption><font color="#0077c0" size=5px>Student registration form</font></caption>
<tr><td height="20" width="88"></td></tr>
<tr><td width="88">First name</td><td width="174">
  <input type="text" name="fn" maxlength=20 size="20"></td><td width="111">Sur name</td>
  <td width="176"><input type="text" name="sn" maxlength=20 size="20"></td></tr><tr>
  <td height="5" width="88"></td></tr>
<tr><td width="88">Registration-id</td><td width="174">
  <input type="text" name="id" maxlength=10 size="20"></td></tr><tr>
  <td height="5" width="88"></td></tr>
<tr><td width="88">college name</td><td colspan=4 width="469"><input type="text" size=50 name=cn maxlength=50></td></tr><tr>
<td height="5" width="88"></td></tr>
<tr><td width="88">college code</td><td width="174">
  <input type="text" name="cc" maxlength=2 size="20"></td>
<td width="111">marks</td><td width="176">
  <input type="text" name="marks" onBlur="len()" size="20"></td></tr><tr>
  <td height="5" width="88"></td></tr>
<tr><td width="88">password</td><td width="174">
  <input type="password" name="pwd" maxlength=10 size="20"></td>
<td width="111">confirm password</td><td width="176">
  <input type="password" name="cpwd" maxlength=10 onBlur="check()" size="20"></td></tr>
<tr><td height="5" width="88"></td></tr><tr><td height="5" width="88"></td></tr>
<tr><td width="88"></td><td height="27" width="174" ><INPUT type="submit" name="Button" value=submit  ></td>
<td height="27" width="111"><input type=reset name=r1 value="Reset"></td></tr><tr>
  <td height="30" width="88" ></td></tr>

</table></form>
 </BODY>
</HTML>
