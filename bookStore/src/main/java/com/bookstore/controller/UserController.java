package com.bookstore.controller;

import com.bookstore.pojo.Books;
import com.bookstore.pojo.User;
import com.bookstore.service.BooksService;
import com.bookstore.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class UserController {


    @Autowired
    @Qualifier("BooksServiceImpl")
    private BooksService booksService;
    @Autowired
    @Qualifier("UserServiceImpl")
    private UserService userService;
    //查询用户返回页面
    @RequestMapping("/user")
    public String list(Model model) {
        System.out.println("执行cc");
        User users = userService.queryUser();
        model.addAttribute("list", users);
        return "allUser";
    }


    @RequestMapping("/newuser")
    public String Insert() {
        return "newUser";
    }
    //添加用户
    @RequestMapping("/toadduser")
    public String addUser(User user) {
        System.out.println("注册用户");
        if (userService.newUser(user))
            return "redirect:/newuser";
        else {
            return "redirect:/user";
        }
    }

    @RequestMapping("/tologin")
    public String loginUser(User user,Model model) {
            System.out.println("登录用户" + userService.loginUser(user));
            if (userService.loginUser(user).getUserid()!=null) {
                if (userService.loginUser(user).getIssa()==0) {
                    List<Books> books = booksService.queryBooks();
                    System.out.println(books);
                    model.addAttribute("list", books);
                    model.addAttribute("id", user.getUserid());
                    return "bookStore";
                }
                else{
                    return "redirect:/toOrder2?id=" + user.getUserid() + "&flag=1";
                }
            }
            else  return "000";
    }

    @RequestMapping("/inf")
    public String indexPage() {
            return "indexfrist";
    }

    @RequestMapping("/tochange")
    public String toChangeP() {

        return "forgetPassword";
    }


    @RequestMapping("/smy")
    public String Getmy(User user,Model model) {
        User u1=userService.findUser(user);
        model.addAttribute("list",u1);
        System.out.println(u1.getUserid());
        return "showMy";
    }

    @RequestMapping("/cmy")
    public String Cmy(User user,Model model) {
        model.addAttribute("id",user.getUserid());
        System.out.println(user+"idid");
        return "My";
    }

    @RequestMapping("/updatu")
    public String updateu(User user) {
        System.out.println("aa"+user);
        System.out.println(userService.updateUser(user));
        if (userService.updateUser(user)){
            return "My";
        }
        else{
            System.out.println("失败了");
            return "/Error.jsp";
        }
    }


}