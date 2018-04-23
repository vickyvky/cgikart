<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.topnav {
    background-color: #333;
    overflow: hidden;
}

/* Style the links inside the navigation bar */
.topnav a {
    float: left;
    color: #EF4D29    ;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    font-size: 17px;
}

/* Style the categories heading */
.topnav1  a{
    float: left;
    color: "black"   ;
    text-align: top;
    padding: 14px 16px;
    text-decoration: none;
    font-size: 15px;
}

/* Change the color of links on hover */
.topnav a:hover {
    background-color:#FE0C01;
    color: white ;
}

/* Add a color to the active/current link */
/* .topnav a.active { 
   background-color:#FE0C01;
    color:white;
}   */

-->

* {
    box-sizing: border-box;
}

body {
    margin: 400;
    font-family: Arial;
}

.header {
    text-align: center;
    padding: 20px;
}

/* Create two equal columns that floats next to each other */
.column {
    float: right;
    width: 50%;
    padding: 50px;
}

.column img {
    margin-top:50px;
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}


* {
  box-sizing: border-box;
}

/* Create two equal columns that floats next to each other */
.column {
    float: left;
    width: 50%;
    padding: 5px;
}

.column img {
    margin-top: 12px;
}

#button {
    line-height: 12px;
    width: 60px;
    font-size: 13pt;
    font-family: arial;
    margin-top: 07px;
    margin-right: 15px;
    padding: 10px;
    background:#D21212;
  border-bottom: 1px solid #f1f1f1;
    position: absolute;
    top: 10;
    right: 0;
}
#buttonCart {
    line-height: 12px;
    width: 60px;
    font-size: 13pt;
    font-family: arial;
    margin-top: 07px;
    margin-right: 85px;
    padding: 10px;
    background:#D21212;
  border-bottom: 1px solid #f1f1f1;
    position: absolute;
    top: 10;
    right: 0;
}
/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}

.menu {
  float: left;
  width: 100%;
}
.menuitem {
  padding: 10px;
  margin-top: 8px;
  border-bottom: 1px solid #f1f1f1;
}
.main {
 
  width: 50%;
  padding: 0 20px;
  overflow: hidden;
}
}

@media only screen and (max-width:800px) {
  /* For tablets: */
  .main {
    width: 100%;
    padding: 0;
  }
  .right {
    width: 100%;
  }
}
@media only screen and (max-width:500px) {
  /* For mobile phones: */
  .menu, .main, .right {
    width: 100%;
  }
}


</style>

</head>
<body>



<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

  
  
  <br>
  <c:if test="${not empty role}">
 <form action="logout">
 <input id="button" type="submit"  value="Logout">
 </form> 
   <form action="viewCart">
   		<input id="buttonCart" type="submit"  value="Cart">
	</form>
	

   </c:if>
   <c:if test="${empty role}">
 <form action="login.jsp">
 <input type="submit"  value="Login">
 </form> 
   </c:if>
   
   <div class="topnav">
<a href="index.jsp">Home</a>
  <a class="active" href="viewProduct?prod_category=homeapp">Home Appliances</a>
  <a href="viewProduct?prod_category=electronics">Electronics</a>
  <a href="viewProduct?prod_category=fashion">Fashion</a>
  <a href="viewProduct?prod_category=stationary">Stationary</a>
  
</div>

</body>
</html>