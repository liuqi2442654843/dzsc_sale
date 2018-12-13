<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
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
    <link rel="stylesheet" href="<%=basePath%>/css/shopdetail.css"/>
    <link rel="stylesheet" href="<%=basePath%>/css/tail.css"/>
    <link rel="shortcut icon" href="<%=basePath%>/imgs/facicon.ico" type="image/x-icon" class="icon">
    <script src="<%=basePath%>/lib/bootstarp/Jquery/jquery-1.9.1.js"></script>
    <script src="<%=basePath%>/lib/bootstarp/js/bootstrap.js"></script>

    <script src="<%=basePath%>/js/shopdetail.js" ></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var showproduct = {
                "boxid": "showbox",
                "sumid": "showsum",
                "boxw": 400,//宽度,该版本中请把宽高填写成一样
                "boxh": 400,//高度,该版本中请把宽高填写成一样
                "sumw": 60,//列表每个宽度,该版本中请把宽高填写成一样
                "sumh": 60,//列表每个高度,该版本中请把宽高填写成一样
                "sumi": 7,//列表间隔
                "sums": 5,//列表显示个数
                "sumsel": "sel",
                "sumborder": 1,//列表边框，没有边框填写0，边框在css中修改
                "lastid": "showlast",
                "nextid": "shownext"
            };//参数定义
            $.ljsGlasses.pcGlasses(showproduct);//方法调用，务必在加载完后执行
        });

        function cart_submit(){
            $("#cart_form").submit();
        }
        function goto_cart() {
            window.open("<%=basePath%>/goto_cart");
        }

    </script>
</head>
<body>
<%@include file="header.jsp"%>
<%@include file="search.jsp"%>
<%@include file="menutitle.jsp"%>

<div class="showall">
    <!--left -->
    <div class="showbot">
        <div id="showbox">
            <img src="<%=basePath%>/images/shopdetail/photos/img01.png" width="400" height="400"/>
            <img src="<%=basePath%>/images/shopdetail/photos/img02.png" width="400" height="400"/>
            <img src="<%=basePath%>/images/shopdetail/photos/img03.png" width="400" height="400"/>
            <img src="<%=basePath%>/images/shopdetail/photos/img04.png" width="400" height="400"/>
            <img src="<%=basePath%>/images/shopdetail/photos/img05.png" width="400" height="400"/>
            <img src="<%=basePath%>/images/shopdetail/photos/img06.png" width="400" height="400"/>
        </div><!--展示图片盒子-->
        <div id="showsum">
            <!--展示图片里边-->
        </div>
        <p class="showpage">
            <a href="javascript:void(0);" id="showlast"> < </a>
            <a href="javascript:void(0);" id="shownext"> > </a>
        </p>
    </div>
    <!--conet -->
    <div class="tb-property">
        <div class="tr-nobdr">
            <h3> ${obj_sku.sku_mch}</h3>
        </div>
        <div class="txt">
            <span class="nowprice">￥<a href="">${obj_sku.jg}</a></span>
            <div class="cumulative">
                <span class="number ty1">累计售出<br/><em id="add_sell_num_363_1">370</em></span>
                <span class="number tyu">累计评价<br/><em id="add_sell_num_363">25</em></span>
            </div>
        </div>
        <div class="txt-h">
            <span class="tex-o">选择版本</span>
            <ul class="glist" id="glist" data-monitor="goodsdetails_fenlei_click">
                <c:forEach items="${list_sku}" var="sku">
                    <li><a href="goto_sku_detail.do?sku_id=${sku.id}&spu_id=${sku.shp_id}" >${sku.sku_mch}</a></li>
                </c:forEach>
            </ul>
        </div>
        <script>
            $(document).ready(function () {
                var t = $("#text_box");
                $('#min').attr('disabled', true);
                $("#add").click(function () {
                    t.val(parseInt(t.val()) + 1)
                    if (parseInt(t.val()) != 1) {
                        $('#min').attr('disabled', false);
                    }
                    $("#tjshl").val(t.val());
                })
                $("#min").click(function () {
                    t.val(parseInt(t.val()) - 1);
                    if (parseInt(t.val()) == 1) {
                        $('#min').attr('disabled', true);
                    }
                    $("#tjshl").val(t.val());
                })
            });
        </script>
        <div class="gcIpt">
            <span class="guT">数量</span>
            <input id="min" name="" type="button" value="-"/>
            <input id="text_box" name="" type="text" value="1" style="width:30px; text-align: center; color: #0F0F0F;"/>
            <input id="add" name="" type="button" value="+"/>
            <span class="Hgt">库存（99）</span>
        </div>
        <div class="nobdr-btns">
            <button class="addcart hu" onclick="cart_submit()"><img src="<%=basePath%>/images/shopdetail/shop.png" width="25" height="25"/>加入购物车</button>
            <button class="addcart yh" onclick="goto_cart()"><img src="<%=basePath%>/images/shopdetail/ht.png" width="25" height="25"/>立即购买</button>
        </div>
        <div class="clear" style="margin-top:20px;">
            <form  id="cart_form" action="add_cart" method="post">
                <input type="hidden" name="sku_mch" value="${obj_sku.sku_mch}" />
                <input type="hidden" name="sku_jg" value="${obj_sku.jg}" />
                <input id="tjshl" type="hidden" name="tjshl" value="1" />
                <input type="hidden" name="hj" value="${obj_sku.jg}" />
                <input type="hidden" name="shp_id" value="${obj_sku.shp_id}" />
                <input type="hidden" name="sku_id" value="${obj_sku.id}" />
                <input type="hidden" name="shp_tp" value="${obj_sku.spu.shp_tp}" />
                <input type="hidden" name="shfxz" value="1" />
                <input type="hidden" name="kcdz" value="${obj_sku.kcdz}" />
                <c:if test="${not empty user}">
                    <input type="hidden" name="yh_id" value="${user.id}" />
                </c:if>
            </form>

        </div>
        <div class="guarantee">
            <span>邮费：包邮&nbsp;&nbsp;支持货到付款 <a href=""><img src="<%=basePath%>/images/shopdetail/me.png"/></a></span>
        </div>
    </div>
    <!--right -->
    <div class="extInfo">
        <div class="brand-logo">
            <a href="" title="飞鱼商城">
                <img src="<%=basePath%>/imgs/logo.png"/>
            </a>
        </div>
        <div class="seller-pop-box">
            <span class="tr">商家名称：飞鱼商城</span>
            <span class="tr">商家等级：初级店铺</span>
            <span class="tr">客家电话：15211013284</span>
            <span class="tr hoh">
                <a title="河南郑州市航海路57号河南郑州市航海路57号" href="">所在地区：湖南省长沙市湖南交通职业技术学院</a>
            </span>
        </div>
        <div class="seller-phone">
            <span class="pop im">
                <a href="" data-name="联系卖家"><img src="<%=basePath%>/images/shopdetail/phon.png"/>联系卖家</a>
            </span>
            <span class="pop in">
                <a href="" data-name="咨询卖家"><img src="<%=basePath%>/images/shopdetail/qq.png"/>咨询卖家</a>
            </span>
            <span class="pop in">
                <a href="" data-name="进店逛逛"><img src="<%=basePath%>/images/shopdetail/shop-line.png"/>进店逛逛</a>
            </span>
            <span class="pop in">
                <a href="" data-name="关注店铺"><img src="<%=basePath%>/images/shopdetail/staar.png"/>关注店铺</a>
            </span>
        </div>
        <div class="jd-service">
            <a href="">
                <img src="<%=basePath%>/images/shopdetail/ho_07.png"/>
            </a>
        </div>
        <div class="suport-icons">
            <h4>扫一扫<br/>手机下单更优惠</h4>
            <img src="<%=basePath%>/images/shopdetail/ho_11.jpg"/>
        </div>
    </div>
</div>
<!-- 推荐搭配 -->
<div class="gdetail">
    <div class="dp_wrap_title">
        推荐搭配
    </div>
    <div class="dp_wrap">
        <!-- 结算 -->
        <div class="dq_total_wrap">
            <div class="icon_equal">
                =
            </div>
            <div class="dp_num">已经选择0个配件
                <p class="dq_price">总计<span>￥599.00</span>元</p>
                <button class="get">立即购买</button>
            </div>
        </div>
        <!-- 搭配1 -->
        <div class="dq_ori">
            <a class="dq_ori_prd" href=""><img src="<%=basePath%>/images/shopdetail/hdy_07.png"/></a>
            <a class="ori_prd" href="">行车记录仪二代·美猴王版（黑灰色）</a>
            <p class="ori_prd dp_wrap_pprice_ori">￥599.00</p>
        </div>
        <div class="scroll_wrap">
            <!-- 搭配2 -->
            <div class="dp_prd">
                <div class="icon_plus">+</div>
                <div class="dp_p_wrap">
                    <a class="dp_wrap_pimg" href="" target="_blank"><img src="<%=basePath%>/images/shopdetail/list_10.jpg"/></a>
                    <a class="dp_wrap_pname" href="" target="_blank">亿连方控-智能安全驾驶控制器 时尚版</a>
                    <p class="dp_wrap_pprice">
                        <label>
                            <input type="checkbox" data-price="199" data-item="570b1b2f5efb114c378b4575">
                            ￥199
                        </label>
                    </p>
                </div>
            </div>
            <!-- 搭配3 -->
            <div class="dp_prd">
                <div class="icon_plus">+</div>
                <div class="dp_p_wrap">
                    <a class="dp_wrap_pimg" href="" target="_blank"><img src="<%=basePath%>/images/shopdetail/hdy_09.png"/></a>
                    <a class="dp_wrap_pname" href="" target="_blank">亿连方控-智能安全驾驶控制器 时尚版</a>
                    <p class="dp_wrap_pprice">
                        <label>
                            <input type="checkbox" data-price="199" data-item="570b1b2f5efb114c378b4575">
                            ￥199
                        </label>
                    </p>
                </div>
            </div>
            <!-- 搭配4 -->
            <div class="dp_prd">
                <div class="icon_plus">+</div>
                <div class="dp_p_wrap">
                    <a class="dp_wrap_pimg" href="" target="_blank"><img src="<%=basePath%>/images/shopdetail/list_03.jpg"/></a>
                    <a class="dp_wrap_pname" href="" target="_blank">O2+车载空气净化器DM2</a>
                    <p class="dp_wrap_pprice">
                        <label>
                            <input type="checkbox" data-price="199" data-item="570b1b2f5efb114c378b4575">
                            ￥365
                        </label>
                    </p>
                </div>
            </div>
            <!-- 产品结束 -->
        </div>
    </div>
</div>

<!-- 商品介紹 -->
<div class="container gdetail">
    <!-- left -->
    <div class="aside">
        <h3>看了还看<span><img src="<%=basePath%>/images/shopdetail/fod.png" width="22" height="22"/>换一批</span></h3>
        <dl class="ac-mod-list">
            <dt><a href=""><img src="<%=basePath%>/images/shopdetail/hdy_09.png"/></a></dt>
            <dd>
                O2+车载空气净化器DM2
                <span>￥99</span>
            </dd>
        </dl>
        <dl class="ac-mod-list">
            <dt><a href=""><img src="<%=basePath%>/images/shopdetail/hdy_07.png"/></a></dt>
            <dd>
                O2+车载空气净化器DM2
                <span>￥99</span>
            </dd>
        </dl>
        <dl class="ac-mod-list">
            <dt><a href=""><img src="<%=basePath%>/images/shopdetail/hdy_11.jpg"/></a></dt>
            <dd>
                O2+车载空气净化器DM2
                <span>￥99</span>
            </dd>
        </dl>
    </div>
    <!-- right -->
    <script>
        var detail = document.querySelector('.detail');
        var origOffsetY = detail.offsetTop;

        function onScroll(e) {
            window.scrollY >= origOffsetY ? detail.classList.add('sticky') :
                detail.classList.remove('sticky');
        }

        document.addEventListener('scroll', onScroll);
    </script>
    <div class="detail">
        <div class="active_tab" id="outer">
            <ul class="act_title_left" id="tab">
                <li class="act_active">
                    <a href="#">规格参数</a>
                </li>
                <li>
                    <a href="#">商品介绍</a>
                </li>
                <li>
                    <a href="#">商品评价</a>
                </li>
                <li>
                    <a href="#">推荐商品</a>
                </li>
            </ul>
            <ul class="act_title_right">
                <li class="mui">
                    <a id="mui-a" href="#">扫手机下单+</a>
                </li>
                <li class="mui-ac">
                    <a href="#">加入购物车</a>
                </li>
            </ul>
            <div class="clear"></div>
        </div>
        <div id="content" class="active_list">
            <!--0-->
            <div id="ui-a" class="ui-a">
                <ul style="display:block;">
                    <li>商品名称：${obj_sku.sku_mch}</li>
                    <c:forEach items="${obj_sku.list_av_name}" var="av_name">
                        <li> ${av_name.shxm_mch}:${av_name.shxzh_mch}</li>
                    </c:forEach>
                </ul>
            </div>
            <!--商品规格-->
            <div id="bit" class="bit">
                <ul style="display:none;">

                </ul>
            </div>

            <!--商品评价-->

            <div id="ui-c" class="ui-c">
               <ul style="display:none;">


                </ul>
            </div>
            <!--推荐商品-->
            <div id="uic" class="uic">
                <ul style="display:none;">
                    ${obj_sku.spu.shp_msh}
                    <c:forEach items="${obj_sku.list_image}" var="image">
                        <img src="upload/image/${image.url}" height="200px"/>
                    </c:forEach>
                </ul>
            </div>
        </div>
        <script>
            $(function () {
                window.onload = function () {
                    var $li = $('#tab li');
                    var $ul = $('#content ul');

                    $li.mouseover(function () {
                        var $this = $(this);
                        var $t = $this.index();
                        $li.removeClass();
                        $this.addClass('act_active');
                        $ul.css('display', 'none');
                        $ul.eq($t).css('display', 'block');
                    })
                }
            });
        </script>
    </div>
</div>

<div class="container">
    <%@include file="tail.jsp"%>
</div>

</body>
</html>
