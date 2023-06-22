<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>   
    <%
    session.invalidate();
    session = request.getSession(false);

    if (session == null) {
        out.println("세션이 성공적으로 삭제되었습니다.");
    } else {
        out.println("세션 삭제에 실패했습니다.");
    }
    %>
</body>
</html>