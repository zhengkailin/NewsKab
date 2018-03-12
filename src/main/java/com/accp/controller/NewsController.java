package com.accp.controller;

import com.accp.biz.AnnouncementBiz;
import com.accp.biz.CommentBiz;
import com.accp.biz.NewsBiz;
import com.accp.entity.Announcement;
import com.accp.entity.Comment;
import com.accp.entity.News;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class NewsController {

    @Resource(name = "newsBiz")
    private NewsBiz newsBiz;

    @Resource(name = "commentBiz")
    private CommentBiz commentBiz;

    @RequestMapping("/newslist")
    public String newslist(Model model, HttpServletRequest req,@RequestParam(required = false,name = "currPageNo",defaultValue = "1") Integer currPageNo)
    {

        model.addAttribute("page", newsBiz.list(new News(), 2, currPageNo));
        return "/journalism";
    }
    @RequestMapping("/newsById/{id}")
    public String newsById(Model model,@PathVariable int id)
    {
        News new1=new News();
        new1.setId(id);
        newsBiz.modifyNews(new1);
        News news=new News();
        news.setId(id);
        News newslist = newsBiz.querynewsById(news);
        List<Comment> comments = commentBiz.queryCommentList(id);
        model.addAttribute("news",newslist);
        model.addAttribute("comment",comments);
        return "/journalism-info";
    }

}
