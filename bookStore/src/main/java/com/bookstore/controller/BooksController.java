package com.bookstore.controller;

import com.bookstore.pojo.Books;
import com.bookstore.service.BooksService;
import com.bookstore.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Random;

@Controller
public class BooksController {

    String key;
    @Autowired
    @Qualifier("BooksServiceImpl")
    private BooksService booksService;
    @Autowired
    @Qualifier("UserServiceImpl")
    private UserService userService;
    //查询用户返回页面
    @RequestMapping("/showbookss")
    public String lists(Books books) {
        System.out.println(books);
         key=books.getBookmore();
        System.out.println("关键字key"+key);
        return "redirect:/showbooks?id="+books.getBookname()+"&flag=1";
    }

    @RequestMapping("/showbooks")
    public String list(Model model,String id,String flag,Books book) {
        System.out.println("执行cc"+flag+"  "+id);
        List<Books> books;
        if(flag.equals("1")){
            book.setBookmore(key);
            System.out.println("执行cc"+flag+"  "+id+key);
          books= booksService.queryBooksByShear(book);
            System.out.println(books);
        }
        else {
            books= booksService.queryBooks();
        }
        model.addAttribute("list", books);
        model.addAttribute("id", id);
        return "bookStore";
    }

    @RequestMapping("/about")
    public String aboutU() {
        return "aboutUs";
    }

    @RequestMapping("/addbook")
    public String addBook(MultipartFile bookpictures, Books books) throws IOException {
        Random random=new Random();
        int aa=random.nextInt(100000*random.nextInt(1000000));
        String name=bookpictures.getName()+String.valueOf(aa)+".jpg";
        bookpictures.transferTo(new File("D:\\oyhj\\ssm\\bookStore\\web\\bookjpg\\"+name));
        System.out.println(bookpictures);
        books.setBookpricture("bookjpg\\"+name);
        System.out.println(books.getBookname());
        booksService.addBook(books);
        return "success";
    }
    @RequestMapping("/todecBook")
    public String todecBook(Books books) {
      if(booksService.decBook(books))
        return "redirect:/toOrder2?flag=7&id";
        else{
            System.out.println("失败了");
            return "errol";
        }
    }
    @RequestMapping("/updbook")
    public String toupBook(Books books) {
        System.out.println(books.getBookid()+books.getBookname());
        if(booksService.updateBook(books))
            return "redirect:/toOrder2?flag=8";
        else{
            System.out.println("失败了");
            return "/Error.jsp";
        }
    }
}
