<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/7
  Time: 11:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%String basePathimg = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";%>
<c:choose>
    <c:when test="${list_cart != null && list_cart.size() != 0}">
        <c:forEach items="${list_cart}" var="cart">
            <div class="miniCartList">
                <img src="upload/image/${cart.shp_tp}" width="80px;" />
                <a class="miniCartList_mch" href="">${cart.sku_mch}</a>
                <span class="miniCartList_prece">
                    <b>￥${cart.sku_jg}</b><br />
                    <a href="del_miniCart?id=${cart.id}">删除</a>
			    </span>
            </div>
        </c:forEach>
    </c:when>
    <c:otherwise>
        <img src="<%=basePathimg%>images/cart_img/nocart.PNG" alt="未选购商品">
    </c:otherwise>
</c:choose>