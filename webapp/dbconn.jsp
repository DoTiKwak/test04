<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

	<%
	Connection conn=null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try {
	String URL = "jdbc:mysql://192.168.111.101:3306/testdb";
	String USER = "test";
	String PASSWORD = "1234";
		
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(URL, USER, PASSWORD);
	
	} catch (SQLException ex) {
	out.println("데이터베이스 연결이 실패했습니다.<br>");
	out.println("SQLException : " + ex.getMessage());
	}
	%>