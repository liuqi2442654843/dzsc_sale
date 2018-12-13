package top.liuqi321.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import top.liuqi321.bean.T_MALL_USER_ACCOUNT;
import top.liuqi321.service.UserServiceInf;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @author : 刘琦 http://www.liuqi321.top
 * @version : 1.0
 * @description : top.liuqi321.controller
 * @date : 2018/10/30
 */

@Controller
public class UserController {

    @Autowired
    UserServiceInf userServiceInf;

    @RequestMapping("login")
    public String go_login(HttpSession session,T_MALL_USER_ACCOUNT user, HttpServletRequest request,HttpServletResponse response
            , ModelMap map){

        //登录，远程用户认证接口
        T_MALL_USER_ACCOUNT select_user = userServiceInf.login(user);
        System.out.println(select_user);
        if(select_user == null){
            return "redirect:/login";
        }else {
            session.setAttribute("user",select_user);
            Cookie cookie = new Cookie("yh_mch", select_user.getYh_mch());
            cookie.setMaxAge(60*60*24);
            response.addCookie(cookie);
        }
        return "redirect:index";
    }

    @RequestMapping("out_login")
    public String out_login(HttpServletRequest request, HttpServletResponse response, HttpSession session, ModelMap map){
        if(session.getAttribute("user") != null){
            session.removeAttribute("user");
        }
        Cookie[] cookies = request.getCookies();
        for (Cookie cookie: cookies) {
            if (cookie.getName() == "yh_mch" ){
                cookie.setValue("");
            }
        }
        return "redirect:index";
    }


    @RequestMapping("registerUser")
    public String registerUser(T_MALL_USER_ACCOUNT user, ModelAndView map){
        System.out.println(user);
        boolean registr = userServiceInf.registr(user);
        if (registr){
            return "redirect:index";
        }
        return "registr";
    }

}
