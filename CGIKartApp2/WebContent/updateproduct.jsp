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



<form method="post" name="addprod" action="updateProduct"> <!--onsubmit="return(validate());"-->
<table>

 <input type="hidden" name="prod_id" value="${product.prod_id }">
<tr>
    <td>Enter Product Name:</td><td><input type="text" value="${product.prod_name }" name="prod_name"/></td>
</tr>
<tr>
    <td>Enter price:</td><td><input type="text" value="${product.prod_price}" name="prod_price"/></td>
</tr>

<tr>
    <td>Enter Description of Product:</td><td><input type="text" value="${product.prod_desc }" name="prod_desc"/></td>
</tr>


<tr>
    <td>Enter product category</td><td><input type="text" value="${product.prod_category}" name="prod_category"/></td>
</tr>

<tr>
    <td>Enter the no of stock</td><td><input type="text" value="${product.stock }" name="stock"/></td>
</tr>
<tr>
    <td>Enter path</td><td><input type="text" value="${product.path }" name="path"/></td>
</tr>




<tr><td><input type="submit" value="Update"/></td>
   <td><input type="reset" value="Reset"/></td>
</tr>

</table>

</body>
</html>