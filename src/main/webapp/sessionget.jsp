<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session Example</title>
</head>
<body>
    <%-- 첫 번째 세션 생성 및 속성 설정 --%>
    <% 
    HttpSession session1 = request.getSession();
    session1.setMaxInactiveInterval(60 * 60);
    session1.setAttribute("memberId", "admin"); %>
    
    <%-- 두 번째 세션 생성 및 속성 설정 --%>
    <% HttpSession session2 = request.getSession();
    session2.setMaxInactiveInterval(60 * 60);
    session2.setAttribute("userId", "12345"); %>
    
    <%-- 세션 속성 출력 --%>
    <% Enumeration<String> attributeNames = session1.getAttributeNames(); %>
    <h3>Session Attributes:</h3>
    <ul>
        <% while (attributeNames.hasMoreElements()) { %>
            <% String attributeName = attributeNames.nextElement(); %>
            <li><%= attributeName %>: <%= session1.getAttribute(attributeName) %></li>
        <% } %>
    </ul>
    <a href="sessiondel.jsp">session del</a>
</body>
</html>
