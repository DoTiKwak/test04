﻿<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>


<html>
<head>
<title>공연 편집</title>
<script type="text/javascript">
	function deleteConfirm(id) {
		if (confirm("해당 공연을 삭제합니다!!") == true)
			location.href = "./deleteConcert.jsp?id=" + id;
		else
			return;
	}
</script>

</head>
<%
	String edit = request.getParameter("edit");
%>
<body>
<div class="container py-4">
	

   <div class="p-5 mb-4 bg-body-tertiary rounded-3">
      <div class="container-fluid py-5">
        <h1 class="display-5 fw-bold">공연 편집</h1>
        <p class="col-md-8 fs-4">Concert Editing</p>      
      </div>
    </div>
    <%@ include file="dbconn.jsp" %>
     <div class="row align-items-md-stretch   text-center">
	<%
				
				String sql = "select * from concert";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while (rs.next()) {
			%>
      
	
	
     	<div class="col-md-4">
       		<div class="h-100 p-2 round-3">		
       		    <img src="./resources/img/<%=rs.getString("c_filename")%>" style="width: 250; height:350" />	
				<p><h5><b><%=rs.getString("c_name")%></b></h5>
				<p><%=rs.getString("c_author")%>
				<br> <%=rs.getString("c_publisher")%> | <%=rs.getString("c_unitPrice")%>원
				<p> <%=rs.getString("c_description").substring(0,60)%>....
				<p><%=rs.getString("c_unitPrice")%>원
				<p><%
						if (edit.equals("update")) {
					%>
					<a href="./updateConcert.jsp?id=<%=rs.getString("c_id")%>" class="btn btn-success" role="button"> 수정 &raquo;></a>
					
					<%
						} else if (edit.equals("delete")) {
					%>
					<a href="#" onclick="deleteConfirm('<%=rs.getString("c_id")%>')" class="btn btn-danger" role="button">삭제 &raquo;></a>
					<%
						}
					%>	
			</div>	
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