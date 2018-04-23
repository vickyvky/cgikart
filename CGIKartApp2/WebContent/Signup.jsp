
<jsp:include page="header.jsp"></jsp:include>
<h2><font color="blue">Sign-</font><i>Up</i></h2>
<br>


<form method="post" name="signup" action="createCustomer" onsubmit="return(validate());">
<table>

<tr>
    <td>Enter a User-Name:</td><td><input type="text" name="username"/></td>
</tr>
<tr>
    <td>Enter a password:</td><td><input type="password" name="password"/></td>
</tr>

<tr>
    <td>Enter your Name:</td><td><input type="text" name="name"/></td>
</tr>


<tr>
    <td>Enter your Mobile No:</td><td><input type="text" name="mobile"/></td>
</tr>

<tr>
    <td>Enter your Email-Id:</td><td><input type="text" name="email"/></td>
</tr>


<tr>
    <td>Enter Shipping Address:</td><td><input type="text" name="address"/></td>
</tr>

<tr><td><input type="submit" value="Submit"/></td>
   <td><input type="reset" value="Reset"/></td>
</tr>

</table>
</form>


<script>
function validate()
{
	if(document.signup.username.value=="")
		{
		alert("Please provide a valid Username...");
		document.signup.username.focus();
		return false;
		}
	
	if(document.signup.name.value=="")
	{
	alert("Please provide a name...");
	document.signup.name.focus();
	return false;
	}
	if(document.signup.mobile.value=="")
	{
	alert("Please provide a mobile no....");
	document.signup.mobile.focus();
	return false;
	}
	if(document.signup.mobile.value.length!=10)
  	{
	alert("Mobile no. must be 10 digits.");
	document.signup.mobile.focus();
	return false;
	}	
	if(document.signup.mobile.value=="")
	{
	alert("Please provide a mobile no....");
	document.signup.mobile.focus();
	return false;
	}
	if(document.signup.email.value=="")
	{
	alert("Please provide a valid email Id....");
	document.signup.email.focus();
	return false;
	}
	if(document.signup.address.value=="")
	{
	alert("Please provide a valid address....");
	document.signup.address.focus();
	return false;
	}
   	return( true );
	
}
	
</script>