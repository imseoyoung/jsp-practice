<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="member" class="kr.co.jsplec.ex3.memberBean"
		scope="application" />
	<h1>회원 정보</h1>
	<p>
		ID:
		<jsp:getProperty name="member" property="id" /></p>
	<p>
		비밀번호:
		<jsp:getProperty name="member" property="paswd" /></p>
	<p>
		이름:
		<jsp:getProperty name="member" property="name" /></p>
	<p>
		이메일:
		<jsp:getProperty name="member" property="email" /></p>
</body>
</html>