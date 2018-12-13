package top.liuqi321.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import top.liuqi321.bean.T_MALL_SHOPPINGCAR;
import top.liuqi321.bean.T_MALL_USER_ACCOUNT;

public interface CartMapper {

	List<T_MALL_SHOPPINGCAR> select_list_cart_by_user(T_MALL_USER_ACCOUNT user);

	List<T_MALL_SHOPPINGCAR> select_cart_list(T_MALL_SHOPPINGCAR cart);

	void insert_cart(T_MALL_SHOPPINGCAR cart);

	void update_cart(T_MALL_SHOPPINGCAR cart);

	int select_cart_exists(T_MALL_SHOPPINGCAR cart);

    void del_miniCart(int id);

    void update_cart_tjshl(T_MALL_SHOPPINGCAR cart);
}
