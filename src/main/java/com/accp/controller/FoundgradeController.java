package com.accp.controller;

import com.accp.biz.SchoolBiz;
import com.accp.entity.ClassType;
import com.accp.entity.KabClass;
import com.accp.entity.Region;
import com.accp.entity.School;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class FoundgradeController {


    @Resource(name = "schoolBiz")
    private SchoolBiz schoolBiz;

    @ResponseBody
    @RequestMapping("/classtypelist")
    public List<ClassType> classTypes(Model model)
    {
        List<ClassType> classTypes = schoolBiz.classTypelist();
        model.addAttribute("region",schoolBiz.regionlist());
        return classTypes;
    }

    @RequestMapping("/grade")
    public String grade()
    {
        return "foundgrade";
    }

    @ResponseBody
    @RequestMapping("/regionlist")
    public List<Region> regions(Model model)
    {
        List<Region> regionlist = schoolBiz.regionlist();
        return regionlist;
    }


    @ResponseBody
    @RequestMapping("/schoolById")
    public List<School> schoolById(Model model, HttpServletRequest req)
    {
        List<School> schools=null;
        int regionId = Integer.parseInt(req.getParameter("regionId"));
        if(regionId>0)
        {
            schools = schoolBiz.schoollistById(regionId);
        }
        return schools;
    }

    @RequestMapping("/addKabClass")
    public String addclass(KabClass kabClass,Model model)
    {
        schoolBiz.addClass(kabClass);
        return "foundgrade-openManage";
    }

    @RequestMapping("/addSchool")
    public String addSchool(School school,Model model)
    {
        schoolBiz.addSchool(school);
        return "";
    }
}
