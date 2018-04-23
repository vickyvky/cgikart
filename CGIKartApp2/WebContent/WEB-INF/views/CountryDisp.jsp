<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>Spring MVC</title>
</head>
<body>

	<h2>Country Information</h2>
	<table>
		<tr>
			<td> country code </td>
			<td>${ctry.countryId}</td>
		</tr>
		<tr>
			<td>Name </td>
			<td>${ctry.countryName}</td>
		</tr>
		<tr>
			<td> reg ID</td>
			<td>${ctry.regionId}</td>
		</tr>
	</table>
</body>
</html>