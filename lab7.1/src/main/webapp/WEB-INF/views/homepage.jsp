<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Homepage</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
<h1>Grades</h1>
	<c:if test = "${size} < 1">
         There are no Grades to show.
      </c:if>
<table class=table>
	<thead>
		<tr>
			<th>Name</th><th>Type</th><th>Score</th><th>Total</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach var="grades" items="${grades}">
	<tr>
		<td><c:out value="${grades.name}"></c:out></td>
		<td><c:out value="${grades.type}"></c:out></td>
		<td><c:out value="${grades.score}"></c:out></td>
		<td><c:out value="${grades.total}"></c:out></td>
		<td><a href="/delete?id=${grades.id}" class="button">Delete</a></td>
	</tr>
	</c:forEach>
	</tbody>
</table>
<br>
<a href="/addGrade">Add a grade</a>
</body>
</html>