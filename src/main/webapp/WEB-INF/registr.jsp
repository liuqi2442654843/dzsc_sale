<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/29
  Time: 9:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>用户注册</title>
    <link href="<%=basePath%>/lib/bootstarp/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=basePath%>/source/font-awesome-4.7.0/css/font-awesome.css">
    <link rel="stylesheet" href="<%=basePath%>/lib/icomoon/style.css">
    <link rel="stylesheet" href="<%=basePath%>/css/header.css">
    <link rel="stylesheet" href="<%=basePath%>/css2/register.css">
    <script src="<%=basePath%>/lib/bootstarp/Jquery/jquery-1.9.1.js"></script>
    <script src="<%=basePath%>/lib/bootstarp/js/bootstrap.js"></script>
    <script type="text/javascript">
        var mch = false;
        var mm = false;
        var yx = false;
        var shji = false;

        function yh_mch_input() {
            var yh_mch =  $("#yh_mch input").val();
            var yh_mch_info = /^[a-zA-Z][a-zA-Z0-9_]{4,15}$/;
            if(yh_mch_info.test(yh_mch)){
                mch = true;
                $("#yh_mch samp").text("");
            }else{
                $("#yh_mch samp").text("帐号不合法！(字母开头,允许字母数字下划线)");
                mch = false;
            }
        }

        function yh_mm_input() {
            var yh_mm =  $("#yh_mm input").val();
            var yh_mm_info = /^[a-zA-Z]\w{5,17}$/;
            if(yh_mm_info.test(yh_mm)){
                mm = true;
                $("#yh_mm.amp").text("");
            }else{
                $("#yh_mm.amp").text("密码不合法！(字母开头,允许字母数字下划线)");
                mm = false;
            }
        }

        function  yh_mm2_input() {
            var yh_mm =  $("#yh_mm input").val();
            var yh_mm2 =  $("#yh_mm2 input").val();
            if(yh_mm == yh_mm2){
                mm = true;
                $("#yh_mm2 samp").text("");
            }else{
                $("#yh_mm2 samp").text("两次输入密码不一致!");
                mm = false;
            }
        }

        function yh_yx_input() {
            var yh_yx =  $("#yh_yx input").val();
            var yh_yx_info = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
            if(yh_yx_info.test(yh_yx)){
                yx = true;
                $("#yh_yx samp").text("");
            }else{

                $("#yh_yx samp").text("邮箱格式不正确!");
                yx = false;
            }
        }

        function yh_shji_input() {
            var yh_shji =  $("#yh_shji input").val();
            var yh_shji_info = /^1[3,5,8]\d{9}$/;
            if(yh_shji_info.test(yh_shji)){
                shji = true;
                $("#yh_shji samp").text("");
            }else{
                $("#yh_shji samp").text("手机号码有误!");
                shji = false;
            }
        }


        function rg_submit(){
            if(mch == false){
                return false;
            }
            if(mm == false){
                return false;
            }
            if(yx == false){
                return false;
            }
            if(shji == false){
                return false;
            }
        }
    </script>
</head>
<body>
<%@ include file="header.jsp"%>
<header id="lg-header">
    <div class="cl-header">
        <div class="row">
            <div class="he-logo">
                <img src="imgs/logo.png" width="116px" height="57px" alt="">
            </div>
            <div class="he-law ">
                <div class="span-law">
                    <span>依《网络安全法》相关要求，即日起蘑菇街会员登陆需绑定手机。为保障您的账户安全及正常使用，如您尚未绑定，请尽快完成绑定，感谢您的理解和支持!</span>
                </div>
            </div>
        </div>
    </div>
</header>

<!--注册-->
<header id="cl-content">
    <div class="content">
        <div class="lg_banner"></div>
        <div class="lg_right">
            <div class="formbox">
                <form action="registerUser" method="post" novalidate="novalidate" onsubmit="return rg_submit();">
                    <div class="mod_box ">
                        <div class="ui_lg_name" id="yh_mch" onchange="yh_mch_input()">
                            <input type="text" class="pwd_text" maxlength="32" name="yh_mch" placeholder="用户账号" >
                            <samp class="ul_info" ></samp>
                        </div>
                        <div class="ui_lg_name" id="yh_mm" onchange="yh_mm_input()">
                            <input type="password" class="pwd_text" maxlength="32" name="yh_mm" placeholder="设置密码" >
                            <samp class="ul_info" ></samp>
                        </div>
                        <div class="ui_lg_name" id="yh_mm2" onchange="yh_mm2_input()">
                            <input type="text" class="pwd_text" maxlength="32" placeholder="确认密码" >
                            <samp class="ul_info" ></samp>
                        </div>
                        <div class="ui_lg_name" id="yh_yx" onchange="yh_yx_input()">
                            <input type="text" class="pwd_text" maxlength="32" name="yh_yx" placeholder="邮箱验证" >
                            <samp class="ul_info" ></samp>
                        </div>
                        <div class="ui_lg_name" id="yh_shji" onchange="yh_shji_input()">
                            <input type="text" class="pwd_text" maxlength="32" name="yh_shjh" placeholder="手机验证" >
                            <samp class="ul_info" ></samp>
                        </div>
                        <div class="ot_login">
                            <div class="ot_btn clearfix">
                                <label for="yh_agree">
                                    <input id="yh_agree" type="checkbox" name="yh_agree" >
                                    <a class="mr-42" >我已阅读并同意了《**用户协议》</a>
                                </label>
                            </div>
                        </div>
                        <div class="lg_login">
                            <input type="submit" class="sub" value="注册">
                        </div>
                        <div class="lg_reg">
                            <a class="findpwd" href="goto_login">立即登录</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</header>
</body>
</html>