<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/2
  Time: 15:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div class="container attr_box">
    <div class="attr_get_list">
        <div class="attr_title">
            <h4>当前分类</h4>
            <i class="fa fa-angle-double-right" aria-hidden="true"></i>
            <h5 id="attr_flbh1"></h5>
            <i class="fa fa-angle-double-right" aria-hidden="true"></i>
            <h5 id="attr_flbh2"></h5>
            <script type="text/javascript">
                $.getJSON("./js/json/class_1.js", function (data) {
                    $(data).each(function (i, json) {
                        if (json.id == "${flbh1}") {
                            $("#attr_flbh1").text(json.flmch1);
                            $.getJSON("./js/json/class_2_" + json.id + ".js", function (data) {
                                $(data).each(function (i, json) {
                                    if (json.id == "${flbh2}") {
                                        $("#attr_flbh2").text(json.flmch2);
                                    }
                                });
                            });
                        }
                    })
                });
            </script>
        </div>

        <form class="att_attribute" id="sub_form" action="<%=basePath%>get_list_by_attr" method="post">
            <input type="hidden" name="flbh2" value="28">
        </form>
        <a type="button" data-toggle="collapse" data-target="#demo">筛选<span
                class="glyphicon glyphicon-chevron-down"></span></a>
        <div class="attr_total">
            共 <span style="color:red;">${list_sku_size}</span> 款相关产品
        </div>
    </div>
    <div id="demo" class="collapse in attr_list">
        <c:forEach items="${list_attr}" var="attr" varStatus="i">
            <dl class="attr_list_item" index="${i.index}">
                <dt>${attr.shxm_mch}:</dt>
                <c:forEach items="${attr.list_value}" var="val">
                    <dd><a href="#"
                           onclick='sub_attr_item(this,"${attr.id}","${val.id}","${val.shxzh_mch}","${val.shxzh}","${i.index}")'>${val.shxzh}${val.shxzh_mch}</a>
                    </dd>
                </c:forEach>
            </dl>
        </c:forEach>
        <script type="text/javascript">

            /* 点击分类属性将分类属性添加到分类属性栏中
            * athis : a.this  属性列表this
            * attr_id : attr.id  attr id
            * val_id : list_value.id 属性id
            * val_shxm_mch : list_vlaue.shxm_mch 属性名称
            * val_shxzh : list_value.shxzh 属性值
            * */
            var form_input = 0; //form表单添加对象是数组是 list_attr 时自增添加
            function sub_attr_item(athis, attr_id, val_id, val_shxm_mch, val_shxzh, i_index) {
                $(".att_attribute").append("<div index='" + i_index + "'>" +
                    "<input type='hidden' name='list_attr[" + form_input + "].shxm_id' value='" + attr_id + "' >" +
                    "<input type='hidden' name='list_attr[" + form_input + "].shxzh_id' value='" + val_id + "' >" +
                    "<a href='#' >" + val_shxzh + val_shxm_mch + "&nbsp;<span onclick='del_attribute(this," + i_index + ")' class='glyphicon glyphicon-remove'></span></a></div>");
                athis.parentNode.parentNode.style = "display:none";
                form_input++;

                //ajax异步方法
                get_list_by_attr();
            }

            function del_attribute(del, i) {
                $(".attr_list_item").each(function (y, val) {
                    if (i == y) {
                        $(".att_attribute>div[index=" + i + "]").remove();
                        val.style = "display: block;";
                    }
                });
                //ajax异步方法
                get_list_by_attr();
            }

            function get_list_by_attr() {
                // 获得参数
                /* var jsonlistAttr = new Array();
                 jsonlistAttr.push({flbh2:"{flbh2}"});
                 $(".att_attribute>div>input[name='shxparam']").each(function(i,data){
                     var json = $.parseJSON(data.value);
                     jsonlistAttr.push({shxm_id: json.shxm_id.toString(), shxzh_id: json.shxzh_id.toString()});
                     //jsonStr = jsonStr + "&list_attr["+i+"].shxm_id="+json.shxm_id+"&list_attr["+i+"].shxzh_id="+json.shxzh_id;
                 });
                 var list_attr = JSON.stringify(jsonlistAttr);*/

                $.ajax({
                    type: "get",
                    url: $("#sub_form").attr("action"),
                    dataType: "html",
                    contentType: "application/json; charset=utf-8",
                    data: $("#sub_form").serialize(),
                    success: function (data) {
                        //id属性在classList中
                        console.log(data);
                        $("#skuListInner").html(data);
                    },
                    error: function (e) {
                       console.log(e);
                    }
                });
            }
        </script>
    </div>
</div>