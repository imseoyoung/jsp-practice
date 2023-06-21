<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <%!
    String id, paswd;
    %>
    
    <%
    id = request.getParameter("id");
    paswd = request.getParameter("paswd");
    %>
    
    <h1>paramForward.jsp입니다.</h1>
    아이디&nbsp;:<%= id %> 입니다.<br>
    비밀번호&nbsp;:<%= paswd %> 입니다.
</body>
</html>