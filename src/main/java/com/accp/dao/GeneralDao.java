package com.accp.dao;

import com.accp.entity.General;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface GeneralDao {
    General queryGenerallist(@Param("id")int id );
}
