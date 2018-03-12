package com.accp.dao;

import com.accp.entity.Entrepreneurship;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface EntrepreneurshipDao {

    List<Entrepreneurship> entrepreneurshiplist();
    int modifyEntrepreneurship(Entrepreneurship entrepreneurship);
    Entrepreneurship entrepreneurshiplById(Entrepreneurship entrepreneurship);
    List<Entrepreneurship> countEntrepreneurship(Entrepreneurship entrepreneurship);
    List<Entrepreneurship> listpage(@Param("entrepreneurship") Entrepreneurship entrepreneurship, @Param("rowCount") int rowCount, @Param("currentPageNo") int currentPageNo);
}
