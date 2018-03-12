package com.accp.controller;

import com.accp.biz.EntrepreneurshipBiz;
import com.accp.entity.Entrepreneurship;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class EntrepreneurshipController {

    @Resource(name = "entrepreneurshipBiz")
    private EntrepreneurshipBiz entrepreneurshipBiz;


    @RequestMapping("/entrepreneurshiplist")
    public String queryentrepreneurshiplist(Model model, HttpServletRequest req,@RequestParam(required = false,name = "currPageNo",defaultValue = "1") Integer currPageNo)
    {

        model.addAttribute("page", entrepreneurshipBiz.list(new Entrepreneurship(), 2, currPageNo));
        return "/information";
    }


    @RequestMapping("/entrepreneurshiplById/{id}")
    public String entrepreneurshiplById(Model model,@PathVariable int id){
        Entrepreneurship eee=new Entrepreneurship();
        eee.setId(id);
        entrepreneurshipBiz.modifyEntrepreneurship(eee);
        Entrepreneurship e=new Entrepreneurship();
        e.setId(id);
        Entrepreneurship entrepreneurship = entrepreneurshipBiz.entrepreneurshiplById(e);
        model.addAttribute("ship",entrepreneurship);
    return "information-info";
    }
}
