package com.accp.controller;

import com.accp.biz.AnnouncementBiz;
import com.accp.entity.Announcement;

import com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BIConversion;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class AnnouncementController {

    @Resource(name = "announcementBiz")
    private AnnouncementBiz announcementBiz;


    @RequestMapping("/announcementlist")
    public String announcementlist(Model model, HttpServletRequest req,@RequestParam(required = false,name = "currPageNo",defaultValue = "1") Integer currPageNo)
    {
        model.addAttribute("page", announcementBiz.list(new Announcement(), 2, currPageNo));
        return "announcement";
    }

    @RequestMapping("/announcementById/{id}")
    public String announcementById(Model model,@PathVariable int id){
        Announcement announcement=new Announcement();
        announcement.setId(id);
        Announcement byId = announcementBiz.announcementById(announcement);
        model.addAttribute("announcement",byId);
        return "announcement-info";
    }
}
