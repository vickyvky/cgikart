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
<jsp:include page="menubar.jsp"></jsp:include>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<form action="searchProduct">
		<input type="text" name="prod_name" >
		<input type="submit" value="search">
	</form>
     
    <div align="center">
        <table border="1" cellpadding="5">
            <caption>  
					<h2>List of Orders</h2>
			</caption>
            <tr>
				<th>Order Id</th>
                <th>Customer Id</th>
                <th>Product ID</th>
                <th>View</th>     
               
            </tr>
            <c:forEach items="${Orders}" var="order" >

<spring:url value="/searchById?prod_id=${order.prod_id}" var="viewUrl" /> 

                <tr>
					<td><c:out value="${order.ordId}" /></td>
                    <td><c:out value="${order.cust_id}" /></td>
                    <td><c:out value="${order.prod_id}" /></td>
				    <td><input type="button" onclick="location.href='${viewUrl}'" value="view "></td>
					
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