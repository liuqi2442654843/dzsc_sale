package top.liuqi321.controller;


import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import top.liuqi321.bean.DETAIL_T_MALL_SKU;
import top.liuqi321.bean.T_MALL_SHOPPINGCAR;
import top.liuqi321.bean.T_MALL_USER_ACCOUNT;
import top.liuqi321.service.CartServiceInf;
import top.liuqi321.service.ItemServiceInf;
import top.liuqi321.utils.MyJsonUtil;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author : 刘琦 http://www.liuqi321.top
 * @version : 1.0
 * @description : top.liuqi321.controller
 * @date : 2018/12/2
 */
@Controller
public class CartController {

    @Autowired
    CartServiceInf cartServiceInf;

    @Autowired
    ItemServiceInf itemServiceInf;

    @RequestMapping("change_shfxz")
    public String change_shfxz(HttpServletResponse response, HttpSession session,
                               @CookieValue(value = "list_cart_cookie", required = false) String list_cart_cookie, T_MALL_SHOPPINGCAR cart,
                               ModelMap map) {
        List<T_MALL_SHOPPINGCAR> list_cart = new ArrayList<T_MALL_SHOPPINGCAR>();
        T_MALL_USER_ACCOUNT user = (T_MALL_USER_ACCOUNT) session.getAttribute("user");
        chang(list_cart,user,response,session,list_cart_cookie,cart,map);
        cart.setYh_id(user.getId());
        cartServiceInf.update_cart_tjshl(cart);

        return "cartListInner";
    }

    public void chang(List<T_MALL_SHOPPINGCAR> list_cart,T_MALL_USER_ACCOUNT user,
            HttpServletResponse response, HttpSession session,
                      @CookieValue(value = "list_cart_cookie", required = false) String list_cart_cookie, T_MALL_SHOPPINGCAR cart,
                      ModelMap map){

        // 购物车修改业务
        if (user == null) {
            // 修改cookie
            list_cart = MyJsonUtil.json_to_list(list_cart_cookie, T_MALL_SHOPPINGCAR.class);
        } else {
            // 修改db
            list_cart = cartServiceInf.select_list_cart_by_user(user);// 数据库
        }

        for (int i = 0; i < list_cart.size(); i++) {
            if (list_cart.get(i).getSku_id() == cart.getSku_id()) {
                list_cart.get(i).setShfxz(cart.getShfxz());
                if (user == null) {
                    // 覆盖cookie
                    Cookie cookie = new Cookie("list_cart_cookie", MyJsonUtil.list_to_json(list_cart));
                    cookie.setMaxAge(60 * 60 * 24);
                    response.addCookie(cookie);
                } else {
                    cartServiceInf.update_cart(list_cart.get(i));
                }
            }
        }
        List<DETAIL_T_MALL_SKU> list_obj_sku = new ArrayList<DETAIL_T_MALL_SKU>();
        for (T_MALL_SHOPPINGCAR carts : list_cart) {
            list_obj_sku.add(itemServiceInf.get_sku_detail(carts.getSku_id()));
        }
        map.put("list_obj_sku",list_obj_sku);
        map.put("sum", get_sum(list_cart));
        map.put("list_cart", list_cart);
    }

    @RequestMapping("add_cart")
    public String add_cart(@CookieValue(value = "list_cart_cookie", required = false) String list_cart_cookie, T_MALL_SHOPPINGCAR cart
            , HttpServletRequest request,HttpSession session, HttpServletResponse response, ModelMap map){
        List<T_MALL_SHOPPINGCAR> list_cart = new ArrayList<T_MALL_SHOPPINGCAR>();
        int yh_id = cart.getYh_id();
        session.setAttribute("cart",cart);
        // 添加购物车操作
        if (yh_id == 0) {
            // 用户未登陆，操作cookie
            if (StringUtils.isBlank(list_cart_cookie)) {
                list_cart.add(cart);
            } else {
                list_cart = MyJsonUtil.json_to_list(list_cart_cookie, T_MALL_SHOPPINGCAR.class);
                // 判断是否重复
                boolean b = if_new_cart(list_cart, cart);
                if (b) {
                    // 新车，添加
                    list_cart.add(cart);
                } else {
                    // 老车，更新
                    for (int i = 0; i < list_cart.size(); i++) {
                        if (list_cart.get(i).getSku_id() == cart.getSku_id()) {
                            list_cart.get(i).setTjshl(list_cart.get(i).getTjshl() + cart.getTjshl());
                            list_cart.get(i).setHj(list_cart.get(i).getTjshl() * list_cart.get(i).getSku_jg());
                        }
                    }
                }
            }
            // 覆盖cookie
            Cookie cookie = new Cookie("list_cart_cookie", MyJsonUtil.list_to_json(list_cart));
            cookie.setMaxAge(60 * 60 * 24);
            response.addCookie(cookie);
        } else {
            list_cart = cartServiceInf.select_cart_list(cart);// 数据库
            // 用户已登陆，操作db
            boolean b = cartServiceInf.if_cart_exists(cart);
            if (!b) { //判断数据库中是否和添加的数据重复
              cartServiceInf.add_cart(cart);
            } else {
                for (int i = 0; i < list_cart.size(); i++) {
                    if (list_cart.get(i).getSku_id() == cart.getSku_id()) {
                        list_cart.get(i).setTjshl(list_cart.get(i).getTjshl() + cart.getTjshl());
                        list_cart.get(i).setHj(list_cart.get(i).getTjshl() * list_cart.get(i).getSku_jg());
                        // 老车，更新
                        cartServiceInf.update_cart(list_cart.get(i));
                    }
                }
            }
        }
        return "redirect:/cart_success.do";
    }

    @RequestMapping("miniCart")
    public String miniCart(HttpSession session, @CookieValue(value = "list_cart_cookie", required = false) String list_cart_cookie, ModelMap map) {
        List<T_MALL_SHOPPINGCAR> list_cart = new ArrayList<T_MALL_SHOPPINGCAR>();
        T_MALL_USER_ACCOUNT user = (T_MALL_USER_ACCOUNT) session.getAttribute("user");

        // 通过cookie或者session获取购物车数据
        if (user == null) {
            list_cart = MyJsonUtil.json_to_list(list_cart_cookie, T_MALL_SHOPPINGCAR.class);
        } else {
            list_cart = cartServiceInf.select_list_cart_by_user(user);
            // 数据库
        }
        map.put("list_cart", list_cart);
        return "miniCartList";
    }

    @RequestMapping("goto_cart")
    public String goto_cart(HttpSession session, @CookieValue(value = "list_cart_cookie", required = false) String list_cart_cookie, ModelMap map) {
        List<T_MALL_SHOPPINGCAR> list_cart = new ArrayList<T_MALL_SHOPPINGCAR>();
        T_MALL_USER_ACCOUNT user = (T_MALL_USER_ACCOUNT) session.getAttribute("user");

        // 通过cookie或者session获取购物车数据
        if (user == null) {
            list_cart = MyJsonUtil.json_to_list(list_cart_cookie, T_MALL_SHOPPINGCAR.class);
        } else {
            list_cart = cartServiceInf.select_list_cart_by_user(user);
            // 数据库
        }

        Map<Integer,DETAIL_T_MALL_SKU> map_obj_sku = new HashMap<Integer, DETAIL_T_MALL_SKU>();

        for (T_MALL_SHOPPINGCAR carts : list_cart) {
            DETAIL_T_MALL_SKU sku_detail = itemServiceInf.get_sku_detail(carts.getSku_id());
            map_obj_sku.put(carts.getSku_id(),sku_detail);
        }

        map.put("map_obj_sku",map_obj_sku);
        map.put("list_cart", list_cart);
        map.put("this_cart",true);
        return "cart";
    }

    private boolean if_new_cart(List<T_MALL_SHOPPINGCAR> list_cart, T_MALL_SHOPPINGCAR cart) {
        boolean b = true;
        for (int i = 0; i < list_cart.size(); i++) {
            if (list_cart.get(i).getSku_id() == cart.getSku_id()) {
                b = false;
            }
        }
        return b;
    }

    @RequestMapping("cart_success")
    public String cart_success(ModelMap map) {

        return "cartSuccess";
    }
    private BigDecimal get_sum(List<T_MALL_SHOPPINGCAR> list_cart) {
        BigDecimal sum = new BigDecimal("0");
        for (int i = 0; i < list_cart.size(); i++) {
            if (list_cart.get(i).getShfxz().equals("1")) {
                sum = sum.add(new BigDecimal(list_cart.get(i).getHj() + ""));
            }
        }
        return sum;
    }

    @RequestMapping("del_miniCart")
    private String del_miniCart(int id,ModelMap map){
        cartServiceInf.del_miniCart(id);
        return "main";
    }


}
