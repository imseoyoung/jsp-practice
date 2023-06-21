<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h1>loginOk</h1>
     <!-- 유효성 검사 -->
     <% 
        String id = request.getParameter("id");
        String password = request.getParameter("paswd");

        // 로그인 정보의 유효성 검사
        if (id != null && password != null && id.equals("test") && password.equals("1234")) {
            // 유효한 정보일 경우 welcome.jsp로 이동
            response.sendRedirect("welcome.jsp?id=" + id + "&password=" + password);
        } else {
            // 잘못된 정보일 경우 login.jsp로 이동
            response.sendRedirect("login.jsp");
        }
    %>
</body>
</html>