package com.bookstore.service;

import com.bookstore.pojo.User;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public interface UserService {
    //查询
    User queryUser();
    boolean newUser(User user);
   User  loginUser(User user);
    User findUser(User user);
    boolean updateUser(User user);
}
