<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <form action="memberProc.jsp" method="POST">
        아이디&nbsp;<input type="text" name="id" size="10"><br>
        비밀번호&nbsp;<input type="text" name="paswd" size="10"><br>
        이름&nbsp;<input type="text" name="name" size="10"><br>
        이메일&nbsp;<input type="text" name="email" size="20"><br>
        <input type="submit" value="전송">
    </form>
</body>
</html>