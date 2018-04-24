<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="header.jsp"></jsp:include>
  <c:if test="${role!='admin'}">

<jsp:include page="menubar.jsp"></jsp:include>
</c:if>


<form action="searchProduct">
		<input type="text" name="prod_name" >
		<input type="submit" value="search">
	</form>
	<c:if test="${role =='admin'}">
<spring:url value="/addprod.jsp" var="addUrl" /> 
	<input type="button" onclick="location.href='${addUrl}'" value="Add Product">
</c:if>

     
    <div align="center">
        <table border="1" cellpadding="5">
            <caption>  
					
					<c:if test="${inCart==true}">
					<h2>Cart</h2>
					</c:if>
					<c:if test="${empty inCart}">
					<h2>List of Products</h2>
					</c:if>
			</caption>
            <tr>
				<th>PRODUCT IMAGE</th>
                <th>ID</th>
                <th>Name</th>
                <th>PRICE</th>
				<th>DESCRIPTION</th>
				<th>CATEGORY</th>
				<th>VIEW</th>
				<c:if test="${role =='admin'}">
				<th>STOCK</th>         
				<th>DELETE</th>       
				<th>UPDATE</th>     
				</c:if>                  
               
            </tr>
            <c:forEach items="${prod_list}" var="product" >

<spring:url value="/deleteProduct?prod_id=${product.prod_id}" var="deleteUrl" /> 
<spring:url value="/searchProductById?prod_id=${product.prod_id}" var="updateUrl" /> 
<spring:url value="/searchById?prod_id=${product.prod_id}" var="viewUrl" /> 

                <tr>
					<td><img width=100 height=100 src="${product.path }"/></td>
                    <td><c:out value="${product.prod_id}" /></td>
                    <td><c:out value="${product.prod_name}" /></td>
                    <td><c:out value="${product.prod_price}" /></td>
					<td><c:out value="${product.prod_desc}" /></td>
					<td><c:out value="${product.prod_category}" /></td>
				    <td><input type="button" onclick="location.href='${viewUrl}'" value="view "></td>
					<c:if test="${role =='admin'}">
					<td><c:out value="${product.stock}" /></td>                           
					<td><input type="button" onclick="location.href='${deleteUrl}'" value="delete "></td>
					<td><input type="button" onclick="location.href='${updateUrl}'" value="update "></td>
					</c:if>
				</tr>
            </c:forEach>
        </table>
    </div>
<c:if test="${inCart==true}">
<form action="checkoutCart"><input type="submit" value="Checkout">
</form>
</c:if>

</body>
</html>