<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--顶部logo，搜索框-->
<div class="cl-sousu header_mid ">
    <div class="container">
        <div class="row">
            <!--logo图标-->
            <div class="cl-sousu-1 col-md-3 hidden-sm hidden-xs">
                <img class="img-responsive" src="imgs/logo.png" alt="川流网LOGO">
            </div>

            <!--搜索框-->
            <div class="cl-sousu-2 col-md-6 col-sm-12">
                <div class="search_inner_box">
                    <!--搜索下拉列表-->
                    <div class="dropdown selectbox">
                        <div class="dropdown-btn dropdown-toggle" id="selectMenu1"
                             data-toggle="dropdown">
                            搜商品
                            <span class="caret"></span>
                        </div>
                        <ul class="dropdown-ul dropdown-menu" role="menu" aria-labelledby="selectMenu1">
                            <li role="presentation">
                                <a role="menuitem" tabindex="-1" href="#">商品</a>
                            </li>
                            <li role="presentation">
                                <a role="menuitem" tabindex="-1" href="#">店铺</a>
                            </li>
                        </ul>
                    </div>

                    <!--搜索输入框-->
                    <form class="top_search_hint">
                        <input type="text" class="tx-txt-f1" placeholder="衣服    ">
                        <input type="submit" class="tx-txt-f3" value="搜索">
                    </form>

                    <!--历史记录-->
                    <div class="search_tip_box">
                        <h3>历史记录</h3>
                        <ul>
                            <li></li>
                        </ul>
                    </div>
                </div>
                <div class="ts_hotwords">
                    <a class="ts_hotword" href="#" >包包</a>
                    <a class="ts_hotword" href="#" >包包</a>
                    <a class="ts_hotword" href="#" >包包</a>
                    <a class="ts_hotword" href="#" >包包</a>
                    <a class="ts_hotword" href="#" >包包</a>
                    <a class="ts_hotword" href="#" >包包</a>
                    <a class="ts_hotword" href="#" >包包</a>

                </div>
            </div>
            <div class="cl-sousu-3 col-md-3 hidden-sm hidden-xs">
                <c:if test="${!this_cart}">
                    <%@include file="minicart.jsp"%>
                </c:if>
            </div>

        </div>
    </div>
</div>
<!--顶部logo，搜索框-->