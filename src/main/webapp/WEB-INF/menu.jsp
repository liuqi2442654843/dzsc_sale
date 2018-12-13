<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/29
  Time: 9:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!--轮播图和菜单栏-->
<header id="cl_wrapper">
    <div class="container cl_wrapper_frame">
        <div class="row pc_banner_wrapper">

            <!--菜单栏-->
            <div class="col-xs-3 pc_indexPage_nav_menu">
                <ul class="nav_list">
                    <li class="nav_list_row nav_list_row_first">
                        <dl class="nav_wrap">
                            <dt class="nav_list_title">
                                <a class="catagory maintainHover" href="" ></a>
                            </dt>
                            <dd class="nav_list_content">
                                <a class="maintainHover" href=""></a>
                            </dd>
                        </dl>
                        <div class="tow_nav" ></div>
                    </li>
                    <li class="nav_list_row nav_list_row_first">
                        <dl class="nav_wrap">
                            <dt class="nav_list_title">
                                <a class="catagory maintainHover" href="" ></a>
                            </dt>
                            <dd class="nav_list_content">
                                <a class="maintainHover" href=""></a>
                            </dd>
                        </dl>
                        <div class="tow_nav" ></div>
                    </li>
                    <li class="nav_list_row nav_list_row_first">
                        <dl class="nav_wrap">
                            <dt class="nav_list_title">
                                <a class="catagory maintainHover" href="" ></a>
                            </dt>
                            <dd class="nav_list_content">
                                <a class="maintainHover" href=""></a>
                            </dd>
                        </dl>
                        <div class="tow_nav"></div>
                    </li>
                    <li class="nav_list_row nav_list_row_first">
                        <dl class="nav_wrap">
                            <dt class="nav_list_title">
                                <a class="catagory maintainHover" href="" ></a>
                            </dt>
                            <dd class="nav_list_content">
                                <a class="maintainHover" href=""></a>
                            </dd>
                        </dl>
                        <div class="tow_nav"></div>
                    </li>
                    <li class="nav_list_row nav_list_row_first">
                        <dl class="nav_wrap">
                            <dt class="nav_list_title">
                                <a class="catagory maintainHover" href="" ></a>
                            </dt>
                            <dd class="nav_list_content">
                                <a class="maintainHover" href=""></a>
                            </dd>
                        </dl>
                        <div class="tow_nav"></div>
                    </li>
                    <li class="nav_list_row nav_list_row_first">
                        <dl class="nav_wrap">
                            <dt class="nav_list_title">
                                <a class="catagory maintainHover" href="" ></a>
                            </dt>
                            <dd class="nav_list_content">
                                <a class="maintainHover" href=""></a>
                            </dd>
                        </dl>
                        <div class="tow_nav"></div>
                    </li>
                    <li class="nav_list_row nav_list_row_first">
                        <dl class="nav_wrap">
                            <dt class="nav_list_title">
                                <a class="catagory maintainHover" href="" ></a>
                            </dt>
                            <dd class="nav_list_content">
                                <a class="maintainHover" href=""></a>
                            </dd>
                        </dl>
                        <div class="tow_nav"></div>
                    </li>
                    <li class="nav_list_row nav_list_row_first">
                        <dl class="nav_wrap">
                            <dt class="nav_list_title">
                                <a class="catagory maintainHover" href="" >agads</a>
                            </dt>
                            <dd class="nav_list_content">
                                <a class="maintainHover" href=""></a>
                            </dd>
                        </dl>
                        <div class="tow_nav"></div>
                    </li>
                    <li class="nav_list_row nav_list_row_first">
                        <dl class="nav_wrap">
                            <dt class="nav_list_title">
                                <a class="catagory maintainHover" href="" ></a>
                            </dt>
                            <dd class="nav_list_content">
                                <a class="maintainHover" href=""></a>
                            </dd>
                        </dl>
                        <div class="tow_nav"></div>
                    </li>
                    <li class="nav_list_row nav_list_row_first">
                        <dl class="nav_wrap">
                            <dt class="nav_list_title">
                                <a class="catagory maintainHover" href=""></a>
                            </dt>
                            <dd class="nav_list_content">
                                <a class="maintainHover" href=""></a>
                            </dd>
                        </dl>
                        <div class="tow_nav"></div>
                    </li>
                </ul>
            </div>

            <script type="text/javascript">
                $.getJSON("./js/json/class_1.js",function(data){
                    $(data).each(function(i,json){
                        $(".nav_list_row_first")[i].setAttribute("index",i);
                        $(".catagory")[i].innerHTML = json.flmch1;
                        setClass_2_id(json.id, i);
                    })
                });
                function setClass_2_id(class_1_id,index) {
                    $.getJSON("./js/json/class_2_"+class_1_id+".js",function(data){
                        $(data).each(function(i,json){
                            var a = '<a href="goto_classList?flbh1='+class_1_id+'&flbh2='+json.id+'" target="_blank">'+json.flmch2+'</a>\n';
                            $(".tow_nav")[index].setAttribute("index",class_1_id);
                            $(".tow_nav")[index].innerHTML = $(".tow_nav")[index].innerHTML+a;
                        })
                    });
                }

                $(".nav_list_row_first").each(function (i,val) {
                    $(this).hover(function () {
                        if(val.getAttribute("index")>=4){
                           $(this).find(".tow_nav").css("margin-top",-7.5*i);
                        }
                        $(this).find(".tow_nav").show(30);
                    },function () {
                        $(this).find(".tow_nav").hide(30);
                    });
                });
            </script>
            <!-- 大轮播图 -->
            <div class="middle_right">
                <div id="lunbobox">
                    <div id="toleft" class="glyphicon glyphicon-chevron-left"></div>
                    <div class="lunbo">
                        <div><img src="<%=basePath%>/imgs/imgs%20(1).jpg"></div>
                        <div><img src="<%=basePath%>/imgs/imgs%20(2).jpg"></div>
                        <div><img src="<%=basePath%>/imgs/imgs%20(3).jpg"></div>
                        <div><img src="<%=basePath%>/imgs/imgs%20(4).jpg"></div>
                        <div><img src="<%=basePath%>/imgs/imgs%20(5).jpg"></div>
                    </div>
                    <div id="toright" class="glyphicon glyphicon-chevron-right"></div>
                    <ul>
                        <li id="lunbo_action"></li>
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                    </ul>
                    <span></span>
                </div>
            </div>
            <script type="text/javascript">
                var thisIndex = 0;
                var attr = [0,1,2,3,4];

               var setTime = setInterval("lunbofangfa('970')",5000);

                $(".lunbo>div").each(function(i,value){
                    $(".lunbo>div:eq("+i+")").attr({"style":"z-index:"+i+""});
                });

                $("#toleft").on("click",function () {
                    lunbofangfa("970");
                });

                $("#toright").on("click",function () {
                   lunbofangfa("-970");
                });

              $("#lunbobox").hover(function () {
                  clearInterval(setTime);
               },function () {
                  clearInterval(setTime);
                  setTime = setInterval("lunbofangfa('970')",5000);
               });
                function lunbofangfa(direction) {
                    attr.unshift( attr[attr.length-1]);
                    attr.pop();
                    $("#lunbobox>ul>li").each(function (x,livalue) {
                        $("#lunbobox>ul>li:eq("+x+")").removeAttr("id");
                        $(".lunbo>div:eq("+x+")").attr({"style":"z-index:"+attr[x]+";left:0px;"});
                        if(x == thisIndex){
                            $("#lunbobox>ul>li:eq("+thisIndex+")").attr("id","lunbo_action");
                            $(".lunbo>div:eq("+thisIndex+")").attr({"style":"z-index:4;left:"+direction+"px;"});
                        }
                    });
                    $(".lunbo>div:eq("+thisIndex+")").animate({ left: "0px" }, 2000);
                    thisIndex = ((thisIndex >= 4) ? 0 : ++thisIndex);
                }

            </script>
            <!-- 大轮播图 -->

        </div>
    </div>
</header>
<!--/轮播图和菜单栏-->
