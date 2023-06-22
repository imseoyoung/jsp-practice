<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="student" class="kr.co.jsplec.ex3.Student" scope="page" />
	<jsp:setProperty name="student" property="name" value="임자몽" />
	<jsp:setProperty name="student" property="age" value="6" />
	<jsp:getProperty name="student" property="name" />
	<jsp:getProperty name="student" property="age" />
</body>
</html>