package top.liuqi321.service;

import org.apache.ibatis.annotations.Param;
import top.liuqi321.bean.T_MALL_SHOPPINGCAR;
import top.liuqi321.bean.T_MALL_USER_ACCOUNT;

import java.util.List;

/**
 * @author : 刘琦 http://www.liuqi321.top
 * @version : 1.0
 * @description : top.liuqi321.service
 * @date : 2018/12/2
 */
public interface CartServiceInf {
    void add_cart(T_MALL_SHOPPINGCAR cart);

    boolean if_cart_exists(T_MALL_SHOPPINGCAR cart);

    void update_cart(T_MALL_SHOPPINGCAR t_mall_shoppingcar);

    void del_miniCart(@Param("id") int id);

    List<T_MALL_SHOPPINGCAR> select_cart_list(T_MALL_SHOPPINGCAR cart);

    List<T_MALL_SHOPPINGCAR> select_list_cart_by_user(T_MALL_USER_ACCOUNT user);

    void update_cart_tjshl(T_MALL_SHOPPINGCAR cart);
}
