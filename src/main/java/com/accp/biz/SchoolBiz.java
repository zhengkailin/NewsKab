package com.accp.biz;

import com.accp.entity.ClassType;
import com.accp.entity.KabClass;
import com.accp.entity.Region;
import com.accp.entity.School;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SchoolBiz {

    List<ClassType> classTypelist();

    List<Region> regionlist();

    List<School> schoollistById(int id);
    int addClass(KabClass kabClass);
    int addSchool(School school);


}
