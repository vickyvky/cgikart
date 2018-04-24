<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body ng-app="">
<jsp:include page="header.jsp"></jsp:include>

<h1>Enter Product Details</h1>



<form method="post" name="addprod" action="createProduct"> <!--onsubmit="return(validate());"-->
<table>

<tr>
    <td>Enter Product Name:</td>
    <td><input type="text" name="prod_name" ng-model="prod_name" required/></td>
    <td><span ng-show="addprod.prod_name.$touched && addprod.prod_name.$invalid"><font color="red">Provide a valid Name</font></span>
</tr>
<tr>
    <td>Enter price:</td><td><input type="text" name="prod_price" ng-model="prod_price" required/></td>
    <td><span ng-show="addprod.prod_price.$touched && addprod.prod_price.$invalid"><font color="red">Provide a valid Price</font></span>
</tr>

<tr>
    <td>Enter Description of Product:</td><td><input type="text" name="prod_desc" ng-model="prod_desc" required/></td>
    <td><span ng-show="addprod.prod_desc.$touched && addprod.prod_desc.$invalid"><font color="red">Provide a Description</font></span>
</tr>


<tr>
    <td>Enter product category</td><td><select name="prod_category" ng-model="prod_category" required>
      <option value="">Select</option>
  <option value="electronics">Electronics</option>
  <option value="fashion">Fashion</option>
  <option value="homeapp">Home Appliances</option>
  <option value="stationary">Stationery</option>
</select></td>
<td><span ng-show="addprod.prod_category.$touched && addprod.prod_category.$invalid"><font color="red">Select a category</font></span>
</tr>

<tr>
    <td>Enter the no of stock</td><td><input type="text" name="stock" ng-model="stock" required/></td>
    <td><span ng-show="addprod.stock.$touched && addprod.stock.$invalid"><font color="red">Enter the no of stock</font></span>
</tr>
<tr>
    <td>Enter path</td><td><input type="text" name="path" ng-model="path" required/></td>
    <td><span ng-show="addprod.path.$touched && addprod.path.$invalid"><font color="red">Provide a valid path</font></span>
</tr>




<tr><td><input type="submit" value="Submit"/></td>
   <td><input type="reset" value="Reset"/></td>
</tr>

</table>

</body>
</html>