package com.accp.dao;

import com.accp.entity.Course;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CourseDao {

    Course courseById(@Param("id")int id);
    List<Course> countCourse();
    List<Course> listpage(@Param("course") Course course, @Param("rowCount") int rowCount, @Param("currentPageNo") int currentPageNo);
    int modifyCourse(Course course);
}
