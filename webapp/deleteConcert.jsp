<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file = "dbconn.jsp"%>

<%

String c_Id = request.getParameter("id");

String sql = "SELECT * FROM concert";
pstmt = conn.prepareStatement(sql);
rs = pstmt.executeQuery();

if(rs.next()) {
	sql="DELETE FROM concert WHERE c_Id=?";
	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1,c_Id);
	pstmt.executeUpdate();
} else
	out.println("일치하는 도서가 없습니다");
	
	if(rs != null)
		rs.close();
	if(pstmt !=null)
		pstmt.close();
	if(conn !=null)
		conn.close();

%>