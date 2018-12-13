<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/2
  Time: 15:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>飞鱼商城</title>
</head>
<body>
<div class="container" style="padding-left: 30px;">
    <c:forEach items="${list_sku}" var="sku" varStatus="status">
        <div class="sku_item">
            <div class="sku_image">
                <img width="240" height="240" src="upload/image/${sku.spu.shp_tp}">
            </div>
            <div class="sku_price">
                <div class="price">
                    <span>¥</span><strong>${sku.jg}</strong>
                </div>
                <span class="badge sku_badge">包邮</span>
                <div class="deal-cnt">1866人付款</div>
            </div>
            <a class="sku_name" href="goto_sku_detail?sku_id=${sku.id}&spu_id=${sku.spu.id}" target="_blank">${sku.sku_mch}</a>
            <div class="sku_Choice">
                <a class="btn btn-default sku_btn" href="">购买</a>
            </div>
        </div>
    </c:forEach>
</div>
</body>
</html>


