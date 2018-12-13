<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<meta name="description"
		  content="飞鱼FY.COM-专业的综合网上购物商城,销售家电、数码通讯、电脑、家居百货、服装服饰、母婴、图书、食品等数万个品牌优质商品.便捷、诚信的服务，为您提供愉悦的网上购物体验!"/>
	<!-- Keywords （关键词）Keywords是页面关键词，是搜索引擎关注点之一，keywords限制在6-8关键词左右，电子商务网站可以适当增加。 -->
	<meta name="Keywords" content="网上购物,网上商城,手机,笔记本,电脑,MP3,CD,VCD,DV,相机,数码,配件,手表,存储卡"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>飞鱼商城</title>
	<link href="<%=basePath%>/lib/bootstarp/css/bootstrap.css" rel="stylesheet">
	<link rel="stylesheet" href="<%=basePath%>/source/font-awesome-4.7.0/css/font-awesome.css">
	<link rel="stylesheet" href="<%=basePath%>/lib/icomoon/style.css">
    <link rel="stylesheet" href="<%=basePath%>/css/currency.css">
    <link rel="stylesheet" href="<%=basePath%>/css/header.css">
	<link rel="stylesheet" href="<%=basePath%>/css/search.css">
	<link rel="stylesheet" href="<%=basePath%>/css/minicart.css">
    <link rel="stylesheet" href="<%=basePath%>/css/menutitle.css">
    <link rel="stylesheet" href="<%=basePath%>/css/menu.css">
    <link rel="stylesheet" href="<%=basePath%>/css/main.css">

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
<%@include file="menu.jsp"%>



<!-- 限时抢购 -->
<header id="cl_Flash_sale">
	<div style="height:30px;"></div>
	<div class="aui-content-max">
		<div class="aui-sale-time">
			<a href="javascript:;" class="aui-sale-time-link">
				<div class="aui-sale-title">限时秒杀</div>
				<div class="aui-sale-second">FLASH DEALS</div>
				<div class="aui-sale-icon-sd"></div>
				<div class="aui-sale-ends">本场距离结束还剩</div>
				<div class="aui-sale-count">
					<div class="aui-sale-count-item">
						<span id="hour_show">00时</span>
					</div>
					<div class="aui-sale-count-item">
						<span id="minute_show">00分</span>
					</div>
					<div class="aui-sale-count-item">
						<span id="second_show">00秒</span>
					</div>
				</div>
			</a>
		</div>
		<div class="aui-content-box">
			<div class="prev">
				<a href="javascript:void(0)">
					<img src="<%=basePath%>/images/index_img/prev.png" alt="">
				</a>
			</div>
			<div class="aui-content-box-ovf">
				<div class="aui-content-box-list">
					<ul>
						<li>
							<a href="#">
								<div class="aui-content-item-img">
									<img src="<%=basePath%>/images/index_img//pd1.jpg" alt="">
								</div>
								<p class="aui-content-item-name">家杰 洗刷刷 免手洗平板拖把拖布 家用擦木地板瓷砖旋转墩布 洗脱合一自刷洗拖把桶 3块布 JJ-A18</p>
								<div class="aui-content-price">
                                        <span class="aui-content-price-new">
                                            <i>¥</i>
                                            <span>109.90</span>
                                        </span>
									<span class="aui-content-price-origin">
                                            <i>¥</i>
                                            <span>229.90</span>
                                        </span>
								</div>
							</a>
						</li>
						<li>
							<a href="#">
								<div class="aui-content-item-img">
									<img src="<%=basePath%>/images/index_img/pd2.jpg" alt="">
								</div>
								<p class="aui-content-item-name">魅族 PRO 6 Plus 4GB+64GB 公开版 香槟金 移动联通4G手机 双卡双待</p>
								<div class="aui-content-price">
                                        <span class="aui-content-price-new">
                                            <i>¥</i>
                                            <span>109.90</span>
                                        </span>
									<span class="aui-content-price-origin">
                                            <i>¥</i>
                                            <span>229.90</span>
                                        </span>
								</div>
							</a>
						</li>
						<li>
							<a href="#">
								<div class="aui-content-item-img">
									<img src="<%=basePath%>/images/index_img/pd3.jpg" alt="">
								</div>
								<p class="aui-content-item-name">小米MIX2 全面屏游戏手机 8GB+128GB 全陶瓷尊享版 黑色 全网通4G手机 双卡双待</p>
								<div class="aui-content-price">
                                        <span class="aui-content-price-new">
                                            <i>¥</i>
                                            <span>109.90</span>
                                        </span>
									<span class="aui-content-price-origin">
                                            <i>¥</i>
                                            <span>229.90</span>
                                        </span>
								</div>
							</a>
						</li>
						<li>
							<a href="#">
								<div class="aui-content-item-img">
									<img src="<%=basePath%>/images/index_img/pd4.jpg" alt="">
								</div>
								<p class="aui-content-item-name">双面屏阅读大屏手机 4+64G黑色 4G全网通 双卡双待手机</p>
								<div class="aui-content-price">
                                        <span class="aui-content-price-new">
                                            <i>¥</i>
                                            <span>109.90</span>
                                        </span>
									<span class="aui-content-price-origin">
                                            <i>¥</i>
                                            <span>229.90</span>
                                        </span>
								</div>
							</a>
						</li>
						<li>
							<a href="#">
								<div class="aui-content-item-img">
									<img src="<%=basePath%>/images/index_img/pd5.jpg" alt="">
								</div>
								<p class="aui-content-item-name">家杰 洗刷刷 免手洗平板拖把拖布 家用擦木地板瓷砖旋转墩布 洗脱合一自刷洗拖把桶 3块布 JJ-A18</p>
								<div class="aui-content-price">
                                        <span class="aui-content-price-new">
                                            <i>¥</i>
                                            <span>109.90</span>
                                        </span>
									<span class="aui-content-price-origin">
                                            <i>¥</i>
                                            <span>229.90</span>
                                        </span>
								</div>
							</a>
						</li>
						<li>
							<a href="#">
								<div class="aui-content-item-img">
									<img src="<%=basePath%>/images/index_img/pd6.jpg" alt="">
								</div>
								<p class="aui-content-item-name">魅族 PRO 6 Plus 4GB+64GB 公开版 香槟金 移动联通4G手机 双卡双待</p>
								<div class="aui-content-price">
                                        <span class="aui-content-price-new">
                                            <i>¥</i>
                                            <span>109.90</span>
                                        </span>
									<span class="aui-content-price-origin">
                                            <i>¥</i>
                                            <span>229.90</span>
                                        </span>
								</div>
							</a>
						</li>
						<li>
							<a href="#">
								<div class="aui-content-item-img">
									<img src="<%=basePath%>/images/index_img/pd7.jpg" alt="">
								</div>
								<p class="aui-content-item-name">小米MIX2 全面屏游戏手机 8GB+128GB 全陶瓷尊享版 黑色 全网通4G手机 双卡双待</p>
								<div class="aui-content-price">
                                        <span class="aui-content-price-new">
                                            <i>¥</i>
                                            <span>109.90</span>
                                        </span>
									<span class="aui-content-price-origin">
                                            <i>¥</i>
                                            <span>229.90</span>
                                        </span>
								</div>
							</a>
						</li>
						<li>
							<a href="#">
								<div class="aui-content-item-img">
									<img src="<%=basePath%>/images/index_img/pd8.jpg" alt="">
								</div>
								<p class="aui-content-item-name">双面屏阅读大屏手机 4+64G黑色 4G全网通 双卡双待手机</p>
								<div class="aui-content-price">
                                        <span class="aui-content-price-new">
                                            <i>¥</i>
                                            <span>109.90</span>
                                        </span>
									<span class="aui-content-price-origin">
                                            <i>¥</i>
                                            <span>229.90</span>
                                        </span>
								</div>
							</a>
						</li>
						<li>
							<a href="#">
								<div class="aui-content-item-img">
									<img src="<%=basePath%>/images/index_img/pd9.jpg" alt="">
								</div>
								<p class="aui-content-item-name">双面屏阅读大屏手机 4+64G黑色 4G全网通 双卡双待手机</p>
								<div class="aui-content-price">
                                        <span class="aui-content-price-new">
                                            <i>¥</i>
                                            <span>109.90</span>
                                        </span>
									<span class="aui-content-price-origin">
                                            <i>¥</i>
                                            <span>229.90</span>
                                        </span>
								</div>
							</a>
						</li>
					</ul>
				</div>
			</div>
			<div class="next">
				<a href="javascript:void(0)">
					<img src="<%=basePath%>/images/index_img/next.png" alt="">
				</a>
			</div>
		</div>
		<div class="aui-small-ad">
			<div class="example2">
				<ul>
					<li>
						<img src="<%=basePath%>/images/index_img/ad2.jpg" alt="2" width="194" height="275"/>
					</li>
				<%--	<li>
						<img src="<%=basePath%>/images/index_img/ad1.jpg" alt="1"/>
					</li>
					<li>
						<img src="<%=basePath%>/images/index_img/ad3.jpg" alt="3"/>
					</li>--%>
				</ul>
				<ol>
					<li></li>
					<li></li>
					<li></li>
				</ol>
			</div>
		</div>
	</div>
</header>
<script src="<%=basePath%>/js/banner.js"></script>
<script src="<%=basePath%>/js/ad.js"></script>
<script src="<%=basePath%>/js/index.js"></script>

<!-- 热卖商品 -->

<%@include file="tail.jsp"%>
</body>
</html>