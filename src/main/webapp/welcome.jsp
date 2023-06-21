<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h1>Welcome</h1>
    <!-- 쿠키 생성 -->
    <%
    String id = request.getParameter("id");
    String password = request.getParameter("pasword");
    
    Cookie cookie = new Cookie(id, password);
    cookie.setMaxAge(60*60);
    response.addCookie(cookie);
    
    Cookie[] cookies = request.getCookies();
    out.println("현재 실행된 쿠키의 개수 => "+ cookies.length + "<br>");
    
    for (int i = 0; i < cookies.length; i++) {
        out.println("설정된 쿠키의 속성 이름(name[" + i + "]): "+ cookies[i].getName() + "<br>");
        out.println("설정된 쿠키의 속성 값(value[" + i + "]): "+ cookies[i].getValue() + "<br>");
        out.println("-------------------------------------------------------------------" + "<br>");
    }
    %>
    <a href="logout.jsp">logout</a>
</body>
</html>