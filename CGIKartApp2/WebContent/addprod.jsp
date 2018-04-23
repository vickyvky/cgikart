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

<h1>Enter Product Details</h1>



<form method="post" name="addprod" action="createProduct"> <!--onsubmit="return(validate());"-->
<table>

<tr>
    <td>Enter Product Name:</td><td><input type="text" name="prod_name"/></td>
</tr>
<tr>
    <td>Enter price:</td><td><input type="text" name="prod_price"/></td>
</tr>

<tr>
    <td>Enter Description of Product:</td><td><input type="text" name="prod_desc"/></td>
</tr>


<tr>
    <td>Enter product category</td><td><select name="prod_category">
  <option value="electronics">Electronics</option>
  <option value="fashion">Fashion</option>
  <option value="homeapp">Home Appliances</option>
  <option value="stationary">Stationery</option>
</select></td>
</tr>

<tr>
    <td>Enter the no of stock</td><td><input type="text" name="stock"/></td>
</tr>
<tr>
    <td>Enter path</td><td><input type="text" name="path"/></td>
</tr>




<tr><td><input type="submit" value="Submit"/></td>
   <td><input type="reset" value="Reset"/></td>
</tr>

</table>

</body>
</html>