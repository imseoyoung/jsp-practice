<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <%!
        String id;
        String paswd;
        String name;
        String email;
    %>
    <%
    id = request.getParameter("id");
    paswd = request.getParameter("paswd");
    name = request.getParameter("name");
    email = request.getParameter("email");
    %>
    
    <jsp:useBean id = "member" class="kr.co.jsplec.ex3.memberBean" scope = "application" />
    <jsp:setProperty name="member" property="id" value="<%=id%>"/>
    <jsp:setProperty name="member" property="paswd" value="<%=paswd%>"/>
    <jsp:setProperty name="member" property="name" value="<%=name%>"/>
    <jsp:setProperty name="member" property="email" value="<%=email%>"/>
    <a href="memberConfirm.jsp">회원 정보 확인</a>
</body>
</html>