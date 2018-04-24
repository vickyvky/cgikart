<body>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<style>
#button {
    line-height: 12px;
    width: 60px;
    font-size: 12pt;
    font-family: arial;
    margin-top: 15px;
    margin-right: 20px;
    padding: 10px;
   background:#CBC4C4; 
  border-bottom: 1px solid #352828;
    position: absolute;
    
}
</style>
<jsp:include page="header.jsp"></jsp:include>

<table cellspacing=100>
<tr>
<td align=left>
<h2> Login </h2>

<hr>
<form method="post" name="login" action="login"  onsubmit="return(validate());">

	<table  cell>
		<tr>
			<td>Enter Username: </td>
			<td><input type="text" name="username"/></td>
		</tr>
		<tr>
			<td>Enter Password:</td>
			<td> <input type="password" name="password"/></td>
		</tr>

		<tr>
			<td><input id="button" type="submit" value="Login"/></td>
		</tr>	

</table>
<span style="float: left;">
<c:if test="${login_error}">
 <font color="red">Incorrect Username or Password</font>
</c:if>
</span>
</form>
</td>

<hr>
<td align=right>
<h2>Admin Login </h2>
<hr>
<form method="post" name="adminlogin" action="Adminlogin" >

<table>
		<tr>
			<td>Enter Username: </td>
			<td><input type="text" name="username"/></td>
		</tr>
		<tr>
			<td>Enter Password:</td>
			<td> <input type="password" name="password"/></td>
		</tr>
		<tr>
			<td><input id="button" type="submit" value="Login"/></td>
		</tr>	
		
		<font color=red>${msg2}</font>

</table>
</form>
<span style="float: left;">
<c:if test="${login_error_admin}">
 <font color="red">Incorrect Username or Password</font>
</c:if>
</span>
</td>
</tr>
</table>

<form action="Signup.jsp">
<input i type="submit" value="Register"/>
</form>
<br>
<font color=red>${msg}</font>
</body>
<script type="text/javascript">

function validate()
{
	if(document.login.username.value=="")
		{
		alert("Please provide a valid Username...");
		document.myform.name.focus();
		return false;
		}
    return( true );
	
	}

</script>


<!--  <a href="create"> create </a>-->


<%//@page import="com.cgikart.bean.*, com.cgikart.dao.*" %>
<%

/*


Customer c=new Customer();
	c.setAddress("Bangalre");
	c.setEmail("hello@gmail.com");
	c.setMobile(93939393993L);
	c.setName("mohan");
	c.setPassword("secret");
	c.setUsername("heljlonaffmhhjjke1");
	
	CustomerDaoInterface dao=new CustomerDaoImpl();
	out.println(dao.createCustomer(c));
	*/
	%>
	
	
	<img  src="C:\Users\CGI\Desktop\Shopping\WebContent\images\log.jpg" height="200" width="1250">
 
	<!-- <img src="home.jpg" height= 300 width=300 alt="image is not able to display"/>
	 -->
	<a href="bishal.jsp"> bishal</a>