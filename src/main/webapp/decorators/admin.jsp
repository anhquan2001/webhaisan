<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><dec:title default="Trang chủ" /></title>
<link rel="stylesheet"
	href="<c:url value='/template/admin/assets/css/bootstrap.min.css' /> " />
<link rel="stylesheet"
	href="<c:url value='/template/admin/assets/font-awesome/4.5.0/css/font-awesome.min.css' /> " />
	
<link rel="stylesheet"
	href="<c:url value='/template/admin/assets/css/ace.min.css'  /> "
	class="ace-main-stylesheet" id="main-ace-style" />

<link rel="stylesheet"
	href="<c:url value='/template/admin/assets/css/jquery-ui.custom.min.css' /> " />

<link rel="stylesheet"
	href="<c:url value='/template/admin/assets/css/jquery.gritter.min.css' /> " />

<link rel="stylesheet"
	href="<c:url value='/template/admin/assets/css/bootstrap-datepicker3.min.css' /> " />

<link rel="stylesheet"
	href="<c:url value='/template/admin/assets/css/bootstrap-editable.min.css' /> " />




<link rel="stylesheet"
	href="<c:url value='/template/admin/assets/css/ace-skins.min.css'  />" />

<link rel="stylesheet"
	href="<c:url value='/template/admin/assets/css/fonts.googleapis.com.css'  />" />

<link rel="stylesheet"
	href="<c:url value='/template/admin/assets/css/ace-rtl.min.css'  />" />

<script
	src="<c:url value='/template/admin/assets/js/ace-extra.min.js'  />"></script>

</head>
<body class="no-skin">

	<%@include file="/common/admin/header.jsp"%>

	<div class="main-container ace-save-state" id="main-container">
			<script type="text/javascript">
				try{ace.settings.loadState('main-container')}catch(e){}
			</script>
		<%@include file="/common/admin/menu.jsp"%>
		<div class="main-content">
		<dec:body />
		</div>
		<%@include file="/common/admin/footer.jsp"%>
		<a href="#" id="btn-scroll-up"
			class="btn-scroll-up btn btn-sm btn-inverse"> <i
			class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
		</a>
	</div>

</body>
</html>