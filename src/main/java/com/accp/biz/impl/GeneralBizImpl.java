package com.accp.biz.impl;

import com.accp.biz.GeneralBiz;
import com.accp.dao.GeneralDao;
import com.accp.entity.General;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


@Service("generalBiz")
public class GeneralBizImpl implements GeneralBiz {

    @Resource
    private GeneralDao generalDao;

    public General queryGenerallist(int id) {
        return generalDao.queryGenerallist(id);
    }
}
