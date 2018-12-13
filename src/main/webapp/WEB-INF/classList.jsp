<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>检索</title>
	<link href="<%=basePath%>/lib/bootstarp/css/bootstrap.css" rel="stylesheet">
	<link rel="stylesheet" href="<%=basePath%>/source/font-awesome-4.7.0/css/font-awesome.css">
	<link rel="stylesheet" href="<%=basePath%>/lib/icomoon/style.css">
	<link rel="stylesheet" href="<%=basePath%>/css/currency.css">
	<link rel="stylesheet" href="<%=basePath%>/css/header.css">
	<link rel="stylesheet" href="<%=basePath%>/css/search.css">
	<link rel="stylesheet" href="<%=basePath%>/css/minicart.css">
	<link rel="stylesheet" href="<%=basePath%>/css/menutitle.css">
	<link rel="stylesheet" href="<%=basePath%>/css/skuList.css">
	<link rel="stylesheet" href="<%=basePath%>/css/attrList.css">
	<link rel="stylesheet" href="<%=basePath%>/css/tail.css"/>

	<link rel="shortcut icon" href="<%=basePath%>/imgs/facicon.ico" type="image/x-icon" class="icon">
	<script src="<%=basePath%>/lib/bootstarp/Jquery/jquery-1.9.1.js"></script>
	<script src="<%=basePath%>/lib/bootstarp/js/bootstrap.js"></script>

</head>
<body>
	<%@include file="header.jsp"%>
	<%@include file="search.jsp"%>
	<%@include file="menutitle.jsp"%>
	<%@include file="attrList.jsp"%>
	<div id="skuListInner">
		<%@include file="skuList.jsp"%>
	</div>
	<%@include file="tail.jsp"%>
</body>
</html>