package com.accp.dao;

import com.accp.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserDao {
    List<User> list(User user);
    List<User> list(String username, String mima);
    User userById(User u);
    int updateMa(String mima);
    int add(User user);
    int existsName(String username);
    int updateUser(User u);
    int deleteUser(@Param("id") int id);
}
