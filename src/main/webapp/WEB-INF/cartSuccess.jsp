<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/2
  Time: 16:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";%>

<html>
<head>
    <title>添加购物车</title>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <meta name="description"
          content="飞鱼FY.COM-专业的综合网上购物商城,销售家电、数码通讯、电脑、家居百货、服装服饰、母婴、图书、食品等数万个品牌优质商品.便捷、诚信的服务，为您提供愉悦的网上购物体验!"/>
    <!-- Keywords （关键词）Keywords是页面关键词，是搜索引擎关注点之一，keywords限制在6-8关键词左右，电子商务网站可以适当增加。 -->
    <meta name="Keywords" content="网上购物,网上商城,手机,笔记本,电脑,MP3,CD,VCD,DV,相机,数码,配件,手表,存储卡"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="<%=basePath%>/lib/bootstarp/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=basePath%>/source/font-awesome-4.7.0/css/font-awesome.css">
    <link rel="stylesheet" href="<%=basePath%>/lib/icomoon/style.css">
    <link rel="stylesheet" href="<%=basePath%>/css/currency.css">
    <link rel="stylesheet" href="<%=basePath%>/css/header.css">
    <link rel="stylesheet" href="<%=basePath%>/css/search.css">
    <link rel="stylesheet" href="<%=basePath%>/css/minicart.css">
    <link rel="stylesheet" href="<%=basePath%>/css/menutitle.css">

    <%--底部属性--%>
    <%--<link rel="stylesheet" href="<%=basePath%>/css/normalize.css"/>--%>
    <link rel="stylesheet" href="<%=basePath%>/css/tail.css"/>



    <link rel="shortcut icon" href="<%=basePath%>/imgs/facicon.ico" type="image/x-icon" class="icon">
    <script src="<%=basePath%>/lib/bootstarp/Jquery/jquery-1.9.1.js"></script>
    <script src="<%=basePath%>/lib/bootstarp/js/bootstrap.js"></script>


</head>
<body>
<%@include file="header.jsp"%>
<%@include file="search.jsp"%>
<%@include file="menutitle.jsp"%>

<div class="container container-fluid">
    <div style="color:green; font-size: 24px;"><span class="glyphicon glyphicon-ok"></span>商品已经成功添加到购物车！</div>

</div>

<%@include file="tail.jsp"%>
</body>
</html>
