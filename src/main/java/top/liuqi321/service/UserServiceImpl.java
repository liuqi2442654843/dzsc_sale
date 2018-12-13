package top.liuqi321.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.liuqi321.bean.T_MALL_USER_ACCOUNT;
import top.liuqi321.mapper.UserMapper;

/**
 * @author : 刘琦 http://www.liuqi321.top
 * @version : 1.0
 * @description : top.liuqi321.service
 * @date : 2018/11/5
 */

@Service
public class UserServiceImpl implements UserServiceInf {

    @Autowired
    UserMapper userMapper;
    @Override
    public T_MALL_USER_ACCOUNT login(T_MALL_USER_ACCOUNT user) {
        return userMapper.select_user(user);
    }

    @Override
    public boolean registr(T_MALL_USER_ACCOUNT user) {
        int result = userMapper.adduser(user);
        if(result != 0 && result == 1){
            return true;
        }
        return false;
    }
}
