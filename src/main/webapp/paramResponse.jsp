<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Arrays"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	int age;
	%>
	
	<%
	String strAge = request.getParameter("age");
	age = Integer.parseInt(strAge);
	%>
	
	<%
	if (age >= 20)
	    response.sendRedirect("pass.jsp?age=" + age);
	else
	    response.sendRedirect("notpass.jsp?age=" + age);
	%>
</body>
</html>