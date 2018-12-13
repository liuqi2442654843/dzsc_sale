<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/3
  Time: 9:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="on_cat">
    <div class="cl_cat" onclick="goto_cart()"><span class="icon-cart gl-list"></span>我的购物车</div>
    <div id="listcart" class="list_Cat" style="display: none;">
        <%@include file="miniCartList.jsp"%>
    </div>
</div>
<script type="text/javascript">
    $("#on_cat").hover(function () {
        $.get("miniCart",function (data) {
            $("#listcart").html(data);
        });
        $(".list_Cat").show();
    },function () {
        $(".list_Cat").hide();
    });
    function goto_cart() {
        window.location.href="goto_cart";
    }
</script>

