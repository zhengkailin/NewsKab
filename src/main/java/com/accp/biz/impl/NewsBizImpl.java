package com.accp.biz.impl;

import com.accp.biz.NewsBiz;
import com.accp.dao.NewsDao;
import com.accp.entity.News;
import com.accp.entity.Pager;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service("newsBiz")
public class NewsBizImpl implements NewsBiz {

    @Resource
    private NewsDao newsDao;


    public News querynewsById(News news) {
        return newsDao.querynewsById(news);
    }

    public int modifyNews(News news) {
        return newsDao.modifyNews(news);
    }

    public Pager<News> list(News news, int rowCount, int currentPageNo) {
        Pager<News> page=new Pager<News>();
        page.setTotalCount(newsDao.countNews().size());
        page.setCurrPageNo(currentPageNo);
        if(page.getTotalCount()==0){
            page.setCurrPageNo(0);
        }
        page.setTotalPageCount((page.getTotalCount()+rowCount-1)/rowCount);
        page.setDatas(newsDao.listpage(news,rowCount,(currentPageNo-1)*rowCount));
        return page;
    }




    }


