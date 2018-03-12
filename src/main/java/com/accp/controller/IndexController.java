package com.accp.controller;

import com.accp.biz.*;
import com.accp.entity.Announcement;
import com.accp.entity.Course;
import com.accp.entity.Entrepreneurship;
import com.accp.entity.News;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
public class IndexController {


    @Resource(name = "announcementBiz")
    private AnnouncementBiz announcementBiz;

    @Resource(name = "generalBiz")
    private GeneralBiz generalBiz;

    @Resource(name = "newsBiz")
    private NewsBiz newsBiz;

    @Resource(name = "courseBiz")
    private CourseBiz courseBiz;

    @Resource(name = "entrepreneurshipBiz")
    private EntrepreneurshipBiz entrepreneurshipBiz;


    @RequestMapping("/indexlist")
    public String index(Model model)
    {
        model.addAttribute("announcement",announcementBiz.list(new Announcement(),5,1));
        model.addAttribute("course",courseBiz.list(new Course(),4,1));
        model.addAttribute("entrepreneurship",entrepreneurshipBiz.list(new Entrepreneurship(),3,1));
        model.addAttribute("news",newsBiz.list(new News(),2,1));
        model.addAttribute("general",generalBiz.queryGenerallist(1));
        return "index";
    }
}
