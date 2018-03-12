package com.accp.biz;

import com.accp.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserBiz {
    List<User> list(User user);
    List<User> list(String username, String miam);
    User userById(User u);
    boolean updateMa(String mima);
    int add(User user);
    boolean existsName(String username);
    boolean updateUser(User u);
    boolean deleteUser(@Param("id") int id);
}
