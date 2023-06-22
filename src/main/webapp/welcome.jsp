<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h1>Welcome</h1>
    <!-- 세션 생성 -->
    <%
    String id = request.getParameter("id");
    String password = request.getParameter("password");
    
    session.setAttribute("id", id);
    session.setAttribute("password", password);
    session.setMaxInactiveInterval(60 * 60);
    %>
    <%
    Enumeration<String> attributeNames = session.getAttributeNames();
    while (attributeNames.hasMoreElements()) {
        String attributeName = attributeNames.nextElement();
        out.println("설정된 세션의 속성 이름(" + attributeName + "): " + session.getAttribute(attributeName) + "<br>");
        out.println("-----------------------------------------------" + "<br>");
    }
    %>
    <a href="logout.jsp">Logout</a>
</body>
</html>
