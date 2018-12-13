package top.liuqi321.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import top.liuqi321.bean.OBJECT_T_MALL_ATTR;
import top.liuqi321.bean.OBJECT_T_MALL_SKU;
import top.liuqi321.service.AttrServiceInf;
import top.liuqi321.service.ListServiceInf;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @author : 刘琦 http://www.liuqi321.top
 * @version : 1.0
 * @description : top.liuqi321.controller
 * @date : 2018/10/26
 */

@Controller
public class IndexController {

    @Autowired
    AttrServiceInf attrServiceInf;
    
    @Autowired
    ListServiceInf listServiceInf;

    @RequestMapping("index")
    public String goto_index(HttpServletRequest request,ModelMap map){
        Cookie[] cookies = request.getCookies();
        String yh_mch = "";
        if(cookies!=null && cookies.length>0){
            for (int i = 0; i < cookies.length; i++) {
                String name = cookies[i].getName();
                if(name.equals("yh_mch")){
                    yh_mch = cookies[i].getValue();
                }
            }
        }
        map.put("yh_mch",yh_mch);
        return "main";
    }

    @RequestMapping("goto_index")
    public String goto_index(){
        return "main";
    }

    @RequestMapping("goto_login")
    public String goto_login_registr(){
        return "login";
    }

    @RequestMapping("goto_registr")
    public String goto_registr(){
        return "registr";
    }

    @RequestMapping("goto_classList")
    public String goto_jiansuo(int flbh1, int flbh2, ModelMap map){

        //商品属性列表
        List<OBJECT_T_MALL_ATTR> list_attr = attrServiceInf.get_attr_list(flbh2);

        //商品列表
        List<OBJECT_T_MALL_SKU> list_sku = listServiceInf.get_list_by_flbh2(flbh2);
        map.put("list_attr",list_attr);
        map.put("list_sku",list_sku);
        map.put("flbh1",flbh1);
        map.put("flbh2",flbh2);
        map.put("list_sku_size",list_sku.size());
        return "classList";
    }



}
