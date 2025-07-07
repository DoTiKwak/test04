<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>

<title>도서 수정</title>
</head>
<body>
<div class="container py-4">
	

   <div class="p-5 mb-4 bg-body-tertiary rounded-3">
      <div class="container-fluid py-5">
        <h1 class="display-5 fw-bold">공연 수정</h1>
        <p class="col-md-8 fs-4">Concert Updating</p>      
      </div>
    </div>
  <%@ include file="dbconn.jsp"%>
  <%
		String c_id = request.getParameter("id");

	
		String sql = "select * from concert where c_id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, c_id);
		rs = pstmt.executeQuery();
		if (rs.next()) {
	%>		
	 <div class="row align-items-md-stretch">	  	
		
		<div class="col-md-5">
				<img src="./resources/img/<%=rs.getString("c_filename")%>" alt="image" style="width: 100%" />
			</div>
		<div class="col-md-7">	
		<form name="newConcert" action="./processUpdateConcert.jsp" method="post" enctype ="multipart/form-data">
		
			
			<div class="mb-3 row">
				<label class="col-sm-2">공연번호</label>
				<div class="col-sm-5">
					<input type="text" name="ConcertId" id="ConcertId" class="form-control" value='<%=rs.getString("c_id")%>'>
				</div>
			</div>
			<div class="mb-3 row">
				<label class="col-sm-2">공연명</label>
				<div class="col-sm-5">
					<input type="text" name="name" id="name" class="form-control" value='<%=rs.getString("c_name")%>'>
				</div>
			</div>
				<div class="mb-3 row">
				<label class="col-sm-2">가격</label>
				<div class="col-sm-5">
					<input type="text" name="unitPrice"  id="unitPrice"class="form-control" value='<%=rs.getString("c_unitPrice")%>'>
				</div>
			</div>
			<div class="mb-3 row">
				<label class="col-sm-2">출연진</label>
				<div class="col-sm-5">
					<input type="text" name="artist" class="form-control" value='<%=rs.getString("c_artist")%>'>
				</div>
			</div>
			<div class="mb-3 row">
				<label class="col-sm-2">공연사</label>
				<div class="col-sm-5">
					<input type="text" name="publisher" class="form-control" value='<%=rs.getString("c_publisher")%>'>
				</div>
			</div>
			<div class="mb-3 row">
				<label class="col-sm-2">공연일</label>
				<div class="col-sm-5">
					<input type="text" name="releaseDate" class="form-control" value='<%=rs.getString("c_releaseDate")%>'>
				</div>
			</div>
	
			<div class="mb-3 row">
				<label class="col-sm-2">상세정보</label>
				<div class="col-sm-8">
					<textarea  name="description" id="description" cols="50" rows="2"
						class="form-control" placeholder="20자 이상 적어주세요"><%=rs.getString("c_description")%></textarea>
				</div>
			</div>			
			<div class="mb-3 row">
				<label class="col-sm-2">분류</label>
				<div class="col-sm-5">
					<input type="text" name="category" class="form-control" value='<%=rs.getString("c_category")%>'>
				</div>
			</div>
				<div class="mb-3 row">
				<label class="col-sm-2">좌석수</label>
				<div class="col-sm-5">
					<input type="text" name="unitsInStock" id="unitsInStock"class="form-control" value='<%=rs.getString("c_unitsInStock")%>'>
				</div>
			</div>		
			
			<div class="mb-3 row">
				<label class="col-sm-2">이미지</label>
				<div class="col-sm-8">
					<input type="file" name="ConcertImage" class="form-control">
				</div>
			</div>
			
			<div class="mb-3 row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<input type="submit" class="btn btn-primary" value="등록 " >
				</div>
			</div>
		</form>
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