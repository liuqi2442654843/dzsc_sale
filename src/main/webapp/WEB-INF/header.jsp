<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/26
  Time: 16:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page isELIgnored="false"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!--顶部菜单栏-->
<nav class="navbar navbar-default cl-height" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#example-navbar-collapse">
                <span class="sr-only">切换导航</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="goto_index">
                <span class="icon-home" aria-hidden="true"></span>飞鱼商城
            </a>
        </div>
        <div class="collapse navbar-collapse navbar-right" id="example-navbar-collapse">
            <ul class="nav navbar-nav">
                <c:choose>
                    <c:when test="${sessionScope.user != null}">
                        <li><a href="#">用户名称:<span style="color:red">${sessionScope.user.yh_mch }</span></a></li>
                        <li><a href="out_login">退出</a></li>
                    </c:when>
                    <c:otherwise>
                        <li><a href="goto_login">登录</a></li>
                        <li><a href="goto_registr">注册</a></li>
                    </c:otherwise>
                </c:choose>

                <li><a href=""><span class="icon-list gl-list" aria-hidden="true"></span>我的订单</a></li>

                <!--客服服务-->
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">客户服务<b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">消费者服务</a></li>
                        <li><a href="#">商家服务</a></li>
                        <li><a href="#">规则中心</a></li>
                    </ul>
                </li>

                <!--商家后台-->
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="icon-office" aria-hidden="true"></span>商家后台<b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">管理后台</a></li>
                        <li><a href="#">商家社区</a></li>
                        <li><a href="#">商家培训</a></li>
                        <li><a href="#">市场入住</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>


