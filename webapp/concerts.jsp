<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>

<title>공연 목록</title>
</head>
<body>
<div class="container py-4">	
   <div class="p-5 mb-4 bg-body-tertiary rounded-3">
      <div class="container-fluid py-5">
        <h1 class="display-5 fw-bold">공연목록</h1>
        <p class="col-md-8 fs-4">ConcertList</p>
      </div>
    </div>
	 <%@ include file="dbconn.jsp" %>
	 
	 <div class="row align-items-md-stretch   text-center">	 	
	 <%
	    pstmt = null;
		rs = null;
		
		String sql = "select * from concert";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while (rs.next()) {
	  %>
     	<div class="col-md-4">
       		<div class="h-100 p-2">	
       			<img src="./resources/img/<%=rs.getString("c_filename")%>" style="width: 250; height:350" />		
				<h5><b><%=rs.getString("c_name")%></b></h5>
				<p><%=rs.getString("c_artist")%>
				<br> <%=rs.getString("c_publisher")%> | <%=rs.getString("c_unitPrice")%>원
				<p> <%=rs.getString("c_description").substring(0,20)%>....
				<p><%=rs.getString("c_unitPrice")%>원
				<p><a href="./concert.jsp?id=<%=rs.getString("c_id")%>" class="btn btn-secondary" role="button"> 상세 정보 &raquo;</a>	</div>	
		</div>			
		<%
			}
		if (rs != null) 
			rs.close();
		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();
		%>	
		</div>	 
  </div>
</body>
</html>