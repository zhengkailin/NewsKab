package com.accp.biz.impl;

import com.accp.biz.CourseBiz;
import com.accp.dao.CourseDao;
import com.accp.entity.Course;
import com.accp.entity.Pager;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("courseBiz")
public class CourseBizImpl implements CourseBiz {

    @Resource
    private CourseDao courseDao;


    public Pager<Course> list(Course course, int rowCount, int currentPageNo) {
        Pager<Course>page=new Pager<Course>();
        page.setTotalCount(courseDao.countCourse().size());
        page.setCurrPageNo(currentPageNo);
        if(page.getTotalCount()==0){
            page.setCurrPageNo(0);
        }
        page.setTotalPageCount((page.getTotalCount()+rowCount-1)/rowCount);
        page.setDatas(courseDao.listpage(course,rowCount,(currentPageNo-1)*rowCount));
        return page;
    }

    public int modifyCourse(Course course) {
        return courseDao.modifyCourse(course);
    }

    public Course courseById(int id) {
        return courseDao.courseById(id);
    }
}
