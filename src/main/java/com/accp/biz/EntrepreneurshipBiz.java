package com.accp.biz;

import com.accp.entity.Entrepreneurship;
import com.accp.entity.Pager;

import java.util.List;

public interface EntrepreneurshipBiz {
    List<Entrepreneurship> entrepreneurshiplist();
    int modifyEntrepreneurship(Entrepreneurship entrepreneurship);
    Entrepreneurship entrepreneurshiplById(Entrepreneurship entrepreneurship);
    Pager<Entrepreneurship> list(Entrepreneurship entrepreneurship, int rowCount, int currentPageNo);
}
