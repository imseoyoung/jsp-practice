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
    String age;
    %>
    
    <%
    age = request.getParameter("age");
    %>

    당신의 나이는 &nbsp;<%= age %>세로 성인입니다.<br>
    <a href="responsetest.html">처음으로</a>
</body>
</html>