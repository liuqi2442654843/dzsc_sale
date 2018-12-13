package top.liuqi321.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import top.liuqi321.bean.MODEL_T_MALL_SKU_ATTR_VALUE;
import top.liuqi321.bean.OBJECT_T_MALL_SKU;
import top.liuqi321.bean.T_MALL_SKU_ATTR_VALUE;
import top.liuqi321.service.ListServiceInf;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;


/**
 * @author : 刘琦 http://www.liuqi321.top
 * @version : 1.0
 * @description : top.liuqi321.controller
 * @date : 2018/11/9
 */

@Controller
public class AttrListController {

    @Autowired
    ListServiceInf listServiceInf;

    @RequestMapping(value = "get_list_by_attr")
    public String get_list_by_attr(String flbh2, MODEL_T_MALL_SKU_ATTR_VALUE list_attr, ModelMap map) {
        System.out.println("正在请求资源----！");

        List<OBJECT_T_MALL_SKU> list_sku = listServiceInf.get_list_by_attr(list_attr.getList_attr(), Integer.parseInt(flbh2));
        System.out.println(list_sku.size());
        map.put("list_sku", list_sku);
        map.put("list_sku_size", list_sku.size());
        return "skuList";
    }


}
