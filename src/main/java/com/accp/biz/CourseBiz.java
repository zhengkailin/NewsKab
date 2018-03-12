package com.accp.biz;

import com.accp.entity.Course;
import com.accp.entity.Pager;

import java.util.List;

public interface CourseBiz {

    Pager<Course> list(Course course, int rowCount, int currentPageNo);
    int modifyCourse(Course course);
    Course courseById(int id);
}
