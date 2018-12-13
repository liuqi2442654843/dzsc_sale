<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录</title>
    <link href="<%=basePath%>/lib/bootstarp/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=basePath%>/source/font-awesome-4.7.0/css/font-awesome.css">
    <link rel="stylesheet" href="<%=basePath%>/lib/icomoon/style.css">
    <link rel="stylesheet" href="<%=basePath%>/css2/login.css">
    <link rel="stylesheet" href="<%=basePath%>/css/header.css">
    <script src="<%=basePath%>/lib/bootstarp/Jquery/jquery-1.9.1.js"></script>
    <script src="<%=basePath%>/lib/bootstarp/js/bootstrap.js"></script>
    <script src="<%=basePath%>/js/login.js"></script>
</head>
<body>
<%@ include file="header.jsp"%>
<header id="lg-header">
    <div class="cl-header">
        <div class="row">
            <div class="he-logo">
                <img src="<%=basePath%>imgs/logo.png" width="116px" height="57px" alt="">
            </div>
            <div class="he-law ">
                <div class="span-law">
                    <span>依《网络安全法》相关要求，即日起蘑菇街会员登陆需绑定手机。为保障您的账户安全及正常使用，如您尚未绑定，请尽快完成绑定，感谢您的理解和支持!</span>
                </div>
            </div>
        </div>
    </div>
</header>

<!--登录注册-->
<header id="cl-content">
    <div class="content">
        <div class="lg_banner"></div>
        <div class="lg_right">
            <div class="login_mod_tab">
                <div class="mod">
                    <a class="ed_mod" href="">账号登录</a>
                </div>
                <div class="mod">
                    <a class="ed_mod" href="">短信登录</a>
                </div>
            </div>
            <div class="formbox">
                <p class="error_tip hidden">用户名或密码错误</p>
                    <form action="login" method="post">
                        <div class="mod_box ">

                            <div class="ui_lg_name">
                                <input type="text" class="pwd_text" maxlength="32" name="yh_mch" placeholder="用户名/邮箱/手机号" >
                            </div>

                            <div class="ui_lg_name">
                                <input type="password" class="pwd_text" maxlength="32" name="yh_mm" placeholder="密码" >
                            </div>

                            <div class="lg_login">
                                <input type="submit" class="sub" value="登录">
                            </div>

                            <div class="ot_login">
                                <div class="ot_btn clearfix">
                                    <a class="mr-42" href=""><img src="<%=basePath%>/imgs/upload_8d4dd486c18961b55lf0hbe5ebf7l_18x19.png" alt="">QQ登录</a>
                                    <a class="mr-42" href=""><img src="<%=basePath%>/imgs/upload_5763lkilh8f7abid345gbhh167d79_19x19.png" alt="">微信登录</a>
                                </div>
                            </div>

                            <div class="lr_reg">
                                <a class="findpwd" href="goto_registr">立即注册</a>
                            </div>

                            <div class="lg_reg">
                                <a class="findpwd" href="">忘记密码</a>
                            </div>
                        </div>
                    </form>
            </div>
        </div>


    </div>
</header>
</body>



</html>