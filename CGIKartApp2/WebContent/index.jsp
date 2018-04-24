<!DOCTYPE html>
<html>
<head>
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
 <input id="button" type="submit"  value="Login">
 </form> 
   </c:if>
  

<div class="topnav">
<a href="index.jsp">Home</a>
  <a class="active" href="viewProduct?prod_category=homeapp">Home Appliances</a>
  <a href="viewProduct?prod_category=electronics">Electronics</a>
  <a href="viewProduct?prod_category=fashion">Fashion</a>
  <a href="viewProduct?prod_category=stationary">Stationary</a>
  
</div>


<div class="column"> 
  <div class="row">
  <a href="viewProduct?prod_category=fashion">
    <img  src="http://www.hdwallpaperup.com/wp-content/uploads/2015/07/Red-Dress-Fashion-Girl-Desktop-Background-1920x1440.jpg"
      style="width:100%">
    </a>
    <a href="viewProduct?prod_category=stationary">
    <img src="https://pbs.twimg.com/media/DIialAgXUAEBDV1.jpg" style="width:100%">
    </a>
    </div>
  </div>
  
<div class="column"> 
  <div class="row">
  <a href="viewProduct?prod_category=electronics">
     <img src="https://techno4use.files.wordpress.com/2014/07/cropped-cropped-gadgets-hd-wallpaper31.jpg" id="ec" onMouseover="displayQuote();" style="width:100%">
     </a>
    <a href="viewProduct?prod_category=homeapp">
    <img src="http://images.all-free-download.com/images/graphiclarge/fine_home_interior_picture_5_167626.jpg" style="width:100%">
    </a>
   
  </div>
  

 </div>
	
 <img  src="C:\Users\CGI\Desktop\Shopping\WebContent\images\log.jpg" height="200" width="1325 ">
 
 


</body>
</html>
