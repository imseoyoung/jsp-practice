<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <%
    String name, id, paswd, major, protocol;
    String[] hobby;
    %>
    <%
    request.setCharacterEncoding("UTF-8");
    name = request.getParameter("name");
    id = request.getParameter("id");
    paswd = request.getParameter("paswd");
    major = request.getParameter("major");
    protocol = request.getParameter("protocol");
   
    hobby = request.getParameterValues("hobby");
    %>
    
    이름&nbsp;:<%= name %><br>
    아이디&nbsp;:<%= id %><br>
    비밀번호&nbsp;:<%= paswd %><br>
    취미&nbsp;:<%= Arrays.toString(hobby) %><br>
    전공&nbsp;:<%= major %><br>
    프로토콜&nbsp;:<%= protocol %><br>
</body>
</html>