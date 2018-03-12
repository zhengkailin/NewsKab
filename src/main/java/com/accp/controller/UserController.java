package com.accp.controller;


import com.accp.biz.UserBiz;
import com.accp.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class UserController {
    @Resource(name = "userBiz")
    private UserBiz userBiz;


    public String yzm(HttpServletRequest req, HttpSession session, String inputVerifyCode){
        System.out.println(inputVerifyCode);
        String verifyCodeValue=(String) session.getAttribute("verifyCodeValue");
        if(verifyCodeValue.toUpperCase().equals(inputVerifyCode.toUpperCase())){
            return null;
        }else{
            req.setAttribute("error", "验证码错误！");
            return "/jsp/login";
        }
    }

    @RequestMapping("/LoginServlet")
    public String login( String username, HttpSession session, String userPassword,HttpServletRequest req,String inputVerifyCode) {
        String location = "";
        if(yzm(req, session, inputVerifyCode)==null){
            List<User> userList = userBiz.list(username,userPassword);
            if (userList.size() == 1) {
                req.getSession().setAttribute("user", userList.get(0));
                location = "jsp/index";
            } else if (userList.size() > 1) {
                location = "/jsp/index";
            } else {
                req.setAttribute("error", "用户名或密码错误！");
                location = "/jsp/login";
            }
        }else{
            req.setAttribute("error", "验证码错误！请重新输入");
            location ="/jsp/login";
        }
        return location;
    }
    @RequestMapping("/index")
    public String index(){
        return "/jsp/index";
    }

    @RequestMapping("/login")
    public String login(){
        return "/jsp/login";
    }

    @RequestMapping("/zhuxiao")
    public String zhuxiao(HttpServletRequest request){
        request.getSession().invalidate();
        request.getSession().removeAttribute("user");
        return "/jsp/login";
    }

    @RequestMapping("/zhmm")
    public String zhmm(){
        return "/jsp/retrieve";
    }

    @RequestMapping("/add")
    public String add(){
        return "/jsp/register";
    }

    @RequestMapping("/addUser")
    public String addUser(User user,String yhm,HttpSession session, HttpServletRequest req,String inputVerifyCode) {
        if(queryUser(yhm)=="1"){
        if(yzm(req, session, inputVerifyCode)==null){
        User userInfo = (User) req.getSession().getAttribute("user");
      if (userBiz.add(user) > 0) {
            return "/jsp/index";
        } else {
            req.setAttribute("error", "注册失败！请重新输入");
            return "/jsp/register";
        }
        }else{
            req.setAttribute("error", "验证码错误！请重新输入");
            return "/jsp/register";
        }
        }else{
            req.setAttribute("error", "用户名已存在！请重新输入");
            return "/jsp/register";
        }
    }


    @RequestMapping("/existUsername")
    @ResponseBody
    public String queryUser(String yhm){
           if(userBiz.existsName(yhm)){
               return "0";
           }else{
               return "1";
           }
    }


//    @RequestMapping("/foundgrade")
//    public String foundgrade(){
//        return "/jsp/foundgrade";
//    }


}
