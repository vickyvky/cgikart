<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!--  <h1 style="background-color:LightGray;"><center><font face="Helvetica" 
color=#e60000><br>CGI</font><i>-Kart</i><sub><small>  Experience the Commitment</small></sub><br><br></center></h1>-->

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div style="background-color:#B22222;padding:8px;">


<img  src="https://1.bp.blogspot.com/-NxkUZM8wNj8/WRqJ-ynw3tI/AAAAAAAAAKM/PHHZpgFPAdY0hPQ9Iefp_162W9Qb56DXACLcB/s1600/cgi-300x166.jpg"  style="float: left;
  width: 150px;
  height: 100px;
  background: #555;
  "><br>
  
  
   <font face="Helvetica" size="6" color="white"  style="
  text-align:center;
  top: 18px;
  right: 50px;">
  <h2><b>CGI-<i>Kart</i></b></h2></font>
  
		  <font size="3"  ><i>Experience the commitment.</i> </font>
		  
 	<c:if test="${sessionScope.role =='admin'}">
		 
		 <form action="logout">
		 <input id="button" type="submit"  value="Logout">
		 </form> 
	 </c:if>
  </div>
</body>
</html>