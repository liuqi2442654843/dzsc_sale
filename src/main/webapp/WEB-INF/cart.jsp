<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/3
  Time: 8:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>商品支付</title>
    <link href="<%=basePath%>/lib/bootstarp/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=basePath%>/source/font-awesome-4.7.0/css/font-awesome.css">
    <link rel="stylesheet" href="<%=basePath%>/lib/icomoon/style.css">
    <link rel="stylesheet" href="<%=basePath%>/css/currency.css">
    <link rel="stylesheet" href="<%=basePath%>/css/header.css">
    <link rel="stylesheet" href="<%=basePath%>/css/search.css">
    <link rel="stylesheet" href="<%=basePath%>/css/minicart.css">
    <link rel="stylesheet" href="<%=basePath%>/css/menutitle.css">
    <link rel="stylesheet" href="<%=basePath%>/css/cart.css">

    <link rel="stylesheet" href="<%=basePath%>/css/tail.css"/>

    <link rel="shortcut icon" href="<%=basePath%>/imgs/facicon.ico" type="image/x-icon" class="icon">
    <script src="<%=basePath%>/lib/bootstarp/Jquery/jquery-1.9.1.js"></script>
    <script src="<%=basePath%>/lib/bootstarp/js/bootstrap.js"></script>
    <script src="<%=basePath%>/js/cart.js"></script>
</head>

<body>
<%@include file="header.jsp" %>
<%@include file="search.jsp" %>
<%@include file="menutitle.jsp" %>

<div class="Caddress">
    <div class="open_new">
        <button class="open_btn" onclick="javascript:onclick_open();">使用新地址</button>
    </div>
    <div class="add_mi">
        <p style="border-bottom:1px dashed #ccc;line-height:28px;">浙江杭州(爸爸收)</p>
        <p>萧山 北干 明怡花苑53幢3单元 13735683918</p>
    </div>
    <div class="add_mi">
        <p style="border-bottom:1px dashed #ccc;line-height:28px;">浙江杭州(爸爸收)</p>
        <p>萧山 北干 明怡花苑53幢3单元 13735683918</p>
    </div>
    <div class="add_mi">
        <p style="border-bottom:1px dashed #ccc;line-height:28px;">浙江杭州(爸爸收)</p>
        <p>萧山 北干 明怡花苑53幢3单元 13735683918</p>
    </div>
    <div class="add_mi">
        <p style="border-bottom:1px dashed #ccc;line-height:28px;">浙江杭州(爸爸收)</p>
        <p>萧山 北干 明怡花苑53幢3单元 13735683918</p>
    </div>
    <div class="add_mi">
        <p style="border-bottom:1px dashed #ccc;line-height:28px;">浙江杭州(爸爸收)</p>
        <p>萧山 北干 明怡花苑53幢3单元 13735683918</p>
    </div>
</div>

<div class="shopping_content">
    <div class="shopping_table">
        <table class="table table-bordered">
            <thead>
            <tr>
                <th width="50"><input type="checkbox" id="inlineCheckbox1" value="option1"></th>
                <th>商品图片</th>
                <th>商品名称</th>
                <th>商品属性</th>
                <th>商品价格</th>
                <th>商品数量</th>
                <th>商品操作</th>
            </tr>
            </thead>
            <tbody>
                <div class="cartListInner">
                    <%@include file="cartListInner.jsp"%>
                </div>
            </tbody>
        </table>
        <div class="" style="width: 100%; text-align: right; margin-top: 10px;">
            <div class="div_outMumey" style="float: left;">
                总价：<span class="out_momey">11</span>
            </div>
            <button class="btn_closing">结算</button>
        </div>
    </div>
</div>


<div class="shade">
</div>
<div class="shade_content">
    <div class="col-xs-12 shade_colse">
        <button onclick="javascript:onclick_close();">x</button>
    </div>
    <div class="nav shade_content_div">
        <div class="col-xs-12 shade_title">
            新增收货地址
        </div>
        <div class="col-xs-12 shade_from">
            <form action="" method="post">
                <div class="col-xs-12">
                    <span class="span_style">地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;区</span>
                    <input class="input_style" type="" name="" id="region" value=""
                           placeholder="&nbsp;&nbsp;请输入您的所在地区"/>
                </div>
                <div class="col-xs-12">
                    <span class="span_style">详细地址</span>
                    <input class="input_style" type="" name="" id="address" value=""
                           placeholder="&nbsp;&nbsp;请输入您的详细地址"/>
                </div>
                <div class="col-xs-12">
                    <span class="span_style">邮政编号</span>
                    <input class="input_style" type="" name="" id="number_this" value=""
                           placeholder="&nbsp;&nbsp;请输入您的邮政编号"/>
                </div>
                <div class="col-xs-12">
                    <span class="span_style" class="span_sty">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名</span>
                    <input class="input_style" type="" name="" id="name_" value="" placeholder="&nbsp;&nbsp;请输入您的姓名"/>
                </div>
                <div class="col-xs-12">
                    <span class="span_style">手机号码</span>
                    <input class="input_style" type="" name="" id="phone" value="" placeholder="&nbsp;&nbsp;请输入您的手机号码"/>
                </div>
                <div class="col-xs-12">
                    <input class="btn_remove" type="button" onclick="javascript:onclick_close();" value="取消"/>
                    <input type="submit" class="sub_set" id="sub_setID" value="提交"/>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- 底部开始 -->
<%@include file="tail.jsp" %>
<!-- 底部结束 -->
</body>
</html>
