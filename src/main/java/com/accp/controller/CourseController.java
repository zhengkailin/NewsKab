package com.accp.controller;


import com.accp.biz.CourseBiz;
import com.accp.entity.Course;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
public class CourseController {

    @Resource(name = "courseBiz")
    private CourseBiz courseBiz;


    @RequestMapping("/courselist")
    public String queryCourse(Model model, HttpServletRequest req,@RequestParam(required = false,name = "currPageNo",defaultValue = "1") Integer currPageNo)
    {

        model.addAttribute("course",courseBiz.list(new Course(),5,currPageNo));
        return "curriculum";
    }

    @RequestMapping("courseById/{id}")
    public String courseById(Model model,@PathVariable int id)
    {
        Course course1=new Course();
        course1.setId(id);
        courseBiz.modifyCourse(course1);
        Course course = courseBiz.courseById(id);
        model.addAttribute("course",course);
        return "curriculum-info";
    }

}
