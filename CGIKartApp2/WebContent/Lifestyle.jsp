<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">


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
<body style="font-family:Verdana;">
<jsp:include page="header.jsp"></jsp:include>

  <br>
<input id="button" type="button" onMouseOver="User Login" value="Login"> 
<input id="buttonCart" type="button" onMouseOver="Add to Cart" value="Cart">

<div class="topnav">
  <a class="active" href="Lifestyle.jsp">Lifestyle</a>
  <a href="Electronics.jsp">Electronics</a>
  <a href="Fashion.jsp">Fashion</a>
  <a href="Stationary.jsp">Stationary</a>
  <a href="index.jsp">Home</a>
</div>

<div class="topnav1">
<h2 align="center" ><b>LIFESTYLE ITEMS</b></h2>
</div>

</head>
<body>

</body>
</html>