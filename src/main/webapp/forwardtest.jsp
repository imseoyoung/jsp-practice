<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <jsp:forward page="paramForward.jsp">
        <jsp:param name="id" value="test"/>
        <jsp:param name="paswd" value="1234"/>
    </jsp:forward>
</body>
</html>