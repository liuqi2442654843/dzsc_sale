package top.liuqi321.service;

import top.liuqi321.bean.T_MALL_USER_ACCOUNT;

/**
 * @author : 刘琦 http://www.liuqi321.top
 * @version : 1.0
 * @description : top.liuqi321.service
 * @date : 2018/11/5
 */


public interface UserServiceInf {

    public T_MALL_USER_ACCOUNT login(T_MALL_USER_ACCOUNT user);

    public boolean registr(T_MALL_USER_ACCOUNT user);

}
