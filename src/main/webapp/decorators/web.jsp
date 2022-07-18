<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><dec:title default="Trang chủ" /></title>

<link rel="stylesheet"
	href="<c:url value='/template/admin/assets/font-awesome/4.5.0/css/font-awesome.min.css' /> " />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="<c:url value='/template/admin/assets/css/fonts.googleapis.com.css'  />" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link href="<c:url value='template/web/assets/restaurant.ico' />"
	rel="icon" type="image/x-icon" />

<link href="<c:url value='template/web/css/styles.css' />"
	rel="stylesheet" />

<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />


</head>
<body id="page-top">

	<!-- Header -->
	<%@ include file="/common/web/header.jsp"%>
	<!-- Header -->

	<div class="container">
		<dec:body />
	</div>
	
	<!-- Footer -->
	<%@ include file="/common/web/footer.jsp"%>
	<!-- Footer -->
	<!--Jquery -->
	<script type="text/javascript"
		src="<c:url value='template/web/js/scripts.js'/> "></script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>

	<div id="fb-root"></div>
	<script async defer crossorigin="anonymous"
		src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v14.0"
		nonce="62pybJHG"></script>
</body>
</html>