<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add a grade</title>
</head>
<body>
<h1>Add a Grade
</h1>
<form action="/conf">
Name <input type="text" name="name"><br><br>
Type <select name="type"><option value="Assignment">Assignment</option><option value="Quiz">Quiz</option><option value="Exam">Exam</option></select><br><br>
Score <input type="number" name="score"><br><br>
Total <input type="number" name="total"><br><br>
<input type="submit" value="Add">
<a href="/">Cancel</a>
</form>
</body>
</html>