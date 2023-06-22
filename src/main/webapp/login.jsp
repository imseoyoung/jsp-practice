<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h1>login</h1>
    <form action="loginOk.jsp" method="POST">
        아이디&nbsp;<input type="text" name="id" size="10"><br>
        비밀번호&nbsp;<input type="text" name="paswd" size="10"><br>
        <input type="submit" value="전송">
    </form>
</body>
</html>
