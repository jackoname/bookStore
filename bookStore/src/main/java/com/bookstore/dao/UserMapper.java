package com.bookstore.dao;

import com.bookstore.pojo.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface UserMapper {
    //查询
    User queryUser();
    boolean newUser(User user);
    User loginUser(User user);
    User findUser(User user);
    boolean updateUser(User user);
    User loginUserM(User user);
}
