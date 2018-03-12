package com.accp.biz.impl;

import com.accp.biz.SchoolBiz;
import com.accp.dao.SchoolDao;
import com.accp.entity.ClassType;
import com.accp.entity.KabClass;
import com.accp.entity.Region;
import com.accp.entity.School;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


@Service("schoolBiz")
public class SchoolBizImpl implements SchoolBiz {

    @Resource
    private SchoolDao schoolDao;

    public List<ClassType> classTypelist() {
        return schoolDao.classTypelist();
    }

    public List<Region> regionlist() {
        return schoolDao.regionlist();
    }

    public List<School> schoollistById(int id) {
        return schoolDao.schoollistById(id);
    }

    public int addClass(KabClass kabClass) {
        return schoolDao.addClass(kabClass);
    }

    public int addSchool(School school) {
        return schoolDao.addSchool(school);
    }
}
