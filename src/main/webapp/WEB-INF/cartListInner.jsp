<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/11
  Time: 8:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<c:forEach items="${list_cart}" var="cart">
    <tr>
        <td>
            <input onclick="change_shfxz(this.checked,${cart.sku_id})" type="checkbox" ${cart.shfxz=="1"?"checked":""}>
            <input id="shfxz" type="hidden" value="${cart.shfxz}">
        </td>
        <td><a><img src="upload/image/${cart.shp_tp}" width="150" /></a></td>
        <td><span>${cart.sku_mch}</span></td>
        <td>
            <c:forEach items="${map_obj_sku.get(cart.sku_id).list_av_name}" var="av_name">
                <div class=""><span> ${av_name.shxm_mch}</span>：<span>${av_name.shxzh_mch}</span></div>
            </c:forEach>

        </td>
        <td>
            ￥<span class="span_momey">${cart.hj}</span>
        </td>
        <td>
            <button class="btn_reduce" onclick="javascript:onclick_reduce(this,${cart.sku_id});">-</button>
            <input class="momey_input" type="" name="" value="${cart.tjshl}" disabled="disabled"/>
            <button class="btn_add" onclick="javascript:onclick_btnAdd(this,${cart.sku_id});">+</button>
        </td>
        <td>
            <button class="btn_r" onclick="javascript:onclick_remove(this);">删除</button>
        </td>
    </tr>
</c:forEach>