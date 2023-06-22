// Memberdata.jsp(insert)

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
<%
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    String driver = "oracle.jdbc.driver.OracleDriver";
    String url = "jdbc:oracle:thin:@localhost:1521:dink15";
    String user = "C##scott";
    String password = "tiger";
    String query = "SELECT * FROM member";

    String newId = request.getParameter("id");
    String newPw = request.getParameter("pw");
    String newName = request.getParameter("name");
    String newPhone = request.getParameter("phone");

    try {
        Class.forName(driver);
        conn = DriverManager.getConnection(url, user, password);
        stmt = conn.createStatement();

        // 회원 추가
        String sql = "INSERT INTO member (id, pw, name, phone) VALUES ('" + newId + "', '" + newPw + "', '" + newName + "', '" + newPhone + "')";
        stmt.executeUpdate(sql);

        response.sendRedirect("selectData.jsp");
    } catch (ClassNotFoundException e) {
        out.println("jdbc driver 로딩 실패");
        e.printStackTrace();
    } catch (SQLException e) {
        out.println("오라클 연결 실패");
        e.printStackTrace();
    }
%>
</body>
</html>