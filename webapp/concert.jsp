<%@page import="dto.Concert"%>
<%@page import="dao.ConcertRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page errorPage="exceptionNoConcertId.jsp" %>
<jsp:useBean id="concertDAO" class="dao.ConcertRepository" scope="session" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
	
<script type="text/javascript">
	function addToCart(){
		if(confirm("이 티켓을 장바구니에 추가하시겠습니까?")){
			document.addForm.submit();
		}else {
			document.addForm.reset();
		}
	}
</script>

<title>공연 상세 페이지</title>
</head>
<body>

	<div class="container py-4">

		
		<div class="p-5 mb-4 bg-body-tertiary rounded-3">
			<div class="container-fluid py-1">
				<h1 class="display-5 fw-bold">공연정보</h1>
				<p class="col-md-8 fs-4">ConcertInfo</p>
			</div>
		</div> 
		
		<%
			String id = request.getParameter("id"); 			
			ConcertRepository dao = ConcertRepository.getInstance();			
			Concert concert = dao.getConcertById(id);			
			System.out.println(concert);
			
		%>
		
		 <div class="row align-items-md-stretch">
		 	<div class="col-md-5">
		 		
		 		<img src="./resources/img/<%=concert.getC_filename() %>"
		 			style= "width : 15%">
		 	</div>
		 	
	     	<div class="col-md-6">
				<h3><b><%=concert.getC_name()%></b></h3>
				<p><%=concert.getC_description()%>
				<p><b>공연번호 : </b><span class="badge text-bg-danger"> <%=concert.getC_Id()%></span>							
				<p><b>출연진</b> : <%=concert.getC_artist()%>	
				<p><b>공연사</b> : <%=concert.getC_publisher()%>	
				<p><b>공연일</b> : <%=concert.getC_releaseDate()%>					
				<p><b>잔여좌석</b> : <%=concert.getC_unitsInStock()%>
				<h4><%=concert.getC_unitPrice()%>원</h4>
				<p>
				
					<form name="addForm" action="./addCart.jsp?id=<%=concert.getC_Id() %>" method="post"> 
					<a href="#" class="btn btn-info" onclick="addToCart()"> 공연예매 &raquo;</a>
					<a href="./cart.jsp" class="btn btn-warning">장바구니 &raquo;</a>
					<a href="./concerts.jsp" class="btn btn-secondary"> 공연목록 &raquo;</a>
					
					</form>
					
	    	</div>   
	   	</div>
	   	
	</div>

</body>
</html>