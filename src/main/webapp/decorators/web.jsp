<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title><dec:title default="Trang chủ" /></title>

    <!-- css -->
    <link href="<c:url value='/assets/web/css/style.css' />" rel="stylesheet" type="text/css" media="all"/>
    <link href="<c:url value='/assets/web/css/nucleo-icons.css' />" rel="stylesheet" type="text/css" media="all"/>
    <link href="<c:url value='/assets/web/css/nucleo-svg.css' />" rel="stylesheet" type="text/css" media="all"/>
    <link href="<c:url value='/assets/web/css/font-awesome.css' />" rel="stylesheet" type="text/css" media="all"/>
    <link href="<c:url value='/assets/web/css/argon-design-system.css?v=1.2.0' />" rel="stylesheet" type="text/css" media="all"/>
</head>
<body>
	<!-- header -->
    <%@ include file="/common/web/header.jsp" %>
    <!-- header -->
    
    <div>
    	<dec:body/>
    </div>

	<!-- footer -->
	<%@ include file="/common/web/footer.jsp" %>
	<!-- footer -->
	
	<script type="text/javascript" src="<c:url value='/assets/web/js/core/jquery.min.js' />"></script>
	<script type="text/javascript" src="<c:url value='/assets/web/js/core/popper.min.js' />"></script>
	<script type="text/javascript" src="<c:url value='/assets/web/js/core/bootstrap.min.js' />"></script>
    <script type="text/javascript" src="<c:url value='/assets/web/js/plugins/perfect-scrollbar.jquery.min.js' />"></script>
        <script type="text/javascript" src="<c:url value='/assets/web/js/argon-design-system.min.js?v=1.2.0' />"></script>
	
</body>
</html>