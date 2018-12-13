package top.liuqi321.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.liuqi321.bean.T_MALL_SHOPPINGCAR;
import top.liuqi321.bean.T_MALL_USER_ACCOUNT;
import top.liuqi321.mapper.CartMapper;

import java.util.List;

/**
 * @author : 刘琦 http://www.liuqi321.top
 * @version : 1.0
 * @description : top.liuqi321.service
 * @date : 2018/12/2
 */

@Service
public class CartServiceImpl implements CartServiceInf {

    @Autowired
    CartMapper cartMapper;

    @Override
    public void add_cart(T_MALL_SHOPPINGCAR cart) {
        cartMapper.insert_cart(cart);

    }

    @Override
    public void update_cart(T_MALL_SHOPPINGCAR cart) {
        cartMapper.update_cart(cart);
    }

    @Override
    public void del_miniCart(int id) {
        cartMapper.del_miniCart(id);
    }

    @Override
    public List<T_MALL_SHOPPINGCAR> select_cart_list(T_MALL_SHOPPINGCAR cart) {
        return cartMapper.select_cart_list(cart);
    }

    @Override
    public List<T_MALL_SHOPPINGCAR> select_list_cart_by_user(T_MALL_USER_ACCOUNT user) {
        return cartMapper.select_list_cart_by_user(user);
    }

    @Override
    public void update_cart_tjshl(T_MALL_SHOPPINGCAR cart) {
        cart.setHj(cart.getSku_jg()*cart.getTjshl());
        cartMapper.update_cart_tjshl(cart);
        return;
    }

    @Override
    public boolean if_cart_exists(T_MALL_SHOPPINGCAR cart) {
        boolean b = false;
        int i = cartMapper.select_cart_exists(cart);
        if (i > 0) {
            b = true;
        }
        return b;
    }
}
