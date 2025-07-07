<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<script type="text/javascript" src="./resources/js/validation.js"></script>
<title>공연 등록 페이지</title>
</head>
<body>
<fmt:setLocale value='<%= request.getParameter("language") %>'/>
<fmt:bundle basename="bundle.message" >
<div class="container py-4">

   <div class="p-5 mb-4 bg-body-tertiary rounded-3">
      <div class="container-fluid py-5">
        <h1 class="display-5 fw-bold"><fmt:message key="title" /></h1>
        <p class="col-md-8 fs-4">Concert Addition</p>      
      </div>
    </div>
  
  <div class="row align-items-md-stretch">	 
   		<div class="text-end"> 
			<a href="?language=ko" >Korean</a> | <a href="?language=en" >English</a>
			<a href = "logout.jsp" class ="btn btn-sm btn-success pull right">logout</a>
		</div>	
		<form name="newConcert" action="./processAddConcert.jsp" method="post" enctype ="multipart/form-data">		
			<div class="mb-3 row">
				<label class="col-sm-2"><fmt:message key="c_Id" /></label>
				<div class="col-sm-3">
					<input type="text" name="c_Id" id="c_Id" class="form-control" >
				</div>
			</div>
			<div class="mb-3 row">
				<label class="col-sm-2"><fmt:message key="c_name" /></label>
				<div class="col-sm-3">
					<input type="text" name="c_name" id="c_name" class="form-control" >
				</div>
			</div>
				<div class="mb-3 row">
				<label class="col-sm-2"><fmt:message key="c_unitPrice" /></label>
				<div class="col-sm-3">
					<input type="text" name="c_unitPrice" id="c_unitPrice" class="form-control" >
				</div>
			</div>
			<div class="mb-3 row">
				<label class="col-sm-2"><fmt:message key="c_artist" /></label>
				<div class="col-sm-3">
					<input type="text" name="c_artist" class="form-control">
				</div>
			</div>
			<div class="mb-3 row">
				<label class="col-sm-2"><fmt:message key="c_publisher" /></label>
				<div class="col-sm-3">
					<input type="text" name="c_publisher" class="form-control">
				</div>
			</div>
			<div class="mb-3 row">
				<label class="col-sm-2"><fmt:message key="c_releaseDate" /></label>
				<div class="col-sm-3">
					<input type="text" name="c_releaseDate" class="form-control">
				</div>
			</div>
	
			<div class="mb-3 row">
				<label class="col-sm-2"><fmt:message key="c_description" /></label>
				<div class="col-sm-5">
					<textarea name="c_description" id="c_description" cols="50" rows="2" 
						class="form-control" placeholder="20자 이상 적어주세요"></textarea>
				</div>
			</div>			
			<div class="mb-3 row">
				<label class="col-sm-2"><fmt:message key="c_category" /></label>
				<div class="col-sm-3">
					<input type="text" name="c_category" class="form-control" >
				</div>
			</div>
				<div class="mb-3 row">
				<label class="col-sm-2"><fmt:message key="c_unitsInStock" /></label>
				<div class="col-sm-3">
					<input type="text" name="c_unitsInStock" 1 id = "unitsInStock" class="form-control" >
				</div>
			</div>
			
			<div class="mb-3 row">
				<label class="col-sm-2"><fmt:message key="c_Image" /></label>
				<div class="col-sm-5">
					<input type="file" name="c_Image" class="form-control">
				</div>
			</div>
			
			<div class="mb-3 row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<input type="button" class="btn btn-primary" value="<fmt:message key="button" />" onclick="CheckAddConcert()">
				</div>
			</div>
		</form>
	
</fmt:bundle>
</body>
</html>