<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:if test="${role =='admin'}">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>

<h1>Welcome Admin </h1>

<ul>
<li><a href="addprod.jsp" >Add Product</a></li>
<li><a href="viewAllProduct" >View or Modify Products</a></li>

<li>
<form action="viewProduct">
Enter product category to view:
<select name="prod_category">
  <option value="electronics">Electronics</option>
  <option value="fashion">Fashion</option>
  <option value="homeapp">Home Appliances</option>
  <option value="stationary">Stationery</option>
</select>
<br/>
<input type="submit" value="View"/>

</form>
</li>
</ul>

<!-- <a href="deleteprod.jsp" >delete products</a> -->
</body>
</html>
</c:if>
<c:if test="${role !='admin'}">
<h1>UnAuthorized</h1>
</c:if>
