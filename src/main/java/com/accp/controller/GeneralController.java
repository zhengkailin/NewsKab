package com.accp.controller;

import com.accp.biz.GeneralBiz;
import com.accp.entity.General;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class GeneralController {

    @Resource(name = "generalBiz")
    private GeneralBiz generalBiz;


    @RequestMapping("/index")
    public String generallist(Model model,int id)
    {
        General general = generalBiz.queryGenerallist(id);
        model.addAttribute("generals",general);
        return "survey";
    }
}
