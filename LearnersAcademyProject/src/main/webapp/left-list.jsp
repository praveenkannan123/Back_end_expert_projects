<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="sidenav">
<h3 id="logo">
Administration <br/>Academy Portal
</h3>
<c:url var="classeslink" value="AdminControllerServlet">
<c:param name="command" value="CLASSES" />
</c:url>
<c:url var="subjectslink" value="AdminControllerServlet">
<c:param name="command" value="SUBJECTS" />
</c:url>
<c:url var="teacherslink" value="AdminControllerServlet">
<c:param name="command" value="TEACHERS" />
</c:url>
<c:url var="studentslink" value="AdminControllerServlet">
<c:param name="command" value="STUDENTS" />
</c:url>

<a class="bar-item" href="${classeslink }">Classes</a>
<a class="bar-item" href="${subjectslink }">Subjects</a>
<a class="bar-item" href="${teacherslink }">Teachers</a>
<a class="bar-item" href="${studentslink }">Students</a>
<a class="bar-item" href="login.jsp">Log out</a>

</div>

</body>
</html>