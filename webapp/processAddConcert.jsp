<%@page import="java.sql.PreparedStatement"%>
<%@include file ="dbconn.jsp" %>
<%@page import="java.util.Enumeration"%>
<%@page import ="dto.Concert" %>
<%@page import ="dao.ConcertRepository" %>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    request.setCharacterEncoding("UTF-8");
    
    String c_filename="";
    String realFolder=application.getRealPath("/resources/img");
    int maxSize = 5 * 1024 * 1024 ;
	String encType = "utf-8";
	MultipartRequest multipartRequest = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
    
    String c_Id=multipartRequest.getParameter("c_Id");
    String c_name=multipartRequest.getParameter("c_name");
    String c_unitPrice=multipartRequest.getParameter("c_unitPrice");
    String c_artist=multipartRequest.getParameter("c_artist");
    String c_description=multipartRequest.getParameter("c_description");
    String c_publisher=multipartRequest.getParameter("c_publisher");
    String c_category=multipartRequest.getParameter("c_category");
    String c_unitsinStock=multipartRequest.getParameter("c_unitsinStock");
    String c_releaseDate=multipartRequest.getParameter("c_releaseDate");
    
    Enumeration files = multipartRequest.getFileNames();
    String fname = (String) files.nextElement();
    String fileName = multipartRequest.getFilesystemName(fname);
    
    Integer price;
    
    if (c_unitPrice.isEmpty())
    price=0;
    else
    price=Integer.valueOf(c_unitPrice);
    
    long stock;
    if (c_unitsinStock.isEmpty())
    stock=0;
    else
    stock=Long.valueOf(c_unitsinStock);
    
    
    String sql = "INSERT INTO concert VALUES(?,?,?,?,?,?,?,?,?,?)";
    
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, c_Id);
    pstmt.setString(2, c_name);
    pstmt.setInt(3, price);
    pstmt.setString(4, c_artist);
    pstmt.setString(5, c_description);
    pstmt.setString(6, c_publisher);
    pstmt.setString(7, c_category);
    pstmt.setLong(8, stock);
    pstmt.setString(9, c_releaseDate);
    pstmt.setString(10, fileName);
    
    if (pstmt != null)
    	pstmt.close();
    if (conn != null)
    	conn.close();
    

    %>
    
    
    
    
    