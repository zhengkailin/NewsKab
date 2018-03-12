package com.accp.biz.impl;

import com.accp.biz.EntrepreneurshipBiz;
import com.accp.dao.EntrepreneurshipDao;
import com.accp.entity.Entrepreneurship;
import com.accp.entity.Pager;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("entrepreneurshipBiz")
public class EntrepreneurshipBizImpl implements EntrepreneurshipBiz {

    @Resource
    private EntrepreneurshipDao entrepreneurshipDao;

    public List<Entrepreneurship> entrepreneurshiplist() {
        return entrepreneurshipDao.entrepreneurshiplist();
    }

    public int modifyEntrepreneurship(Entrepreneurship entrepreneurship) {
        return entrepreneurshipDao.modifyEntrepreneurship(entrepreneurship);
    }

    public Entrepreneurship entrepreneurshiplById(Entrepreneurship entrepreneurship) {
        return entrepreneurshipDao.entrepreneurshiplById(entrepreneurship);
    }

    public Pager<Entrepreneurship> list(Entrepreneurship entrepreneurship, int rowCount, int currentPageNo) {
        Pager<Entrepreneurship> page=new Pager<Entrepreneurship>();
        page.setTotalCount(entrepreneurshipDao.countEntrepreneurship(entrepreneurship).size());
        page.setCurrPageNo(currentPageNo);
        if(page.getTotalCount()==0){
            page.setCurrPageNo(0);
        }
        page.setTotalPageCount((page.getTotalCount()+rowCount-1)/rowCount);
        page.setDatas(entrepreneurshipDao.listpage(entrepreneurship,rowCount,(currentPageNo-1)*rowCount));
        return page;
    }
}
