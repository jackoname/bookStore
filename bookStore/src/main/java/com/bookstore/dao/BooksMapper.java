package com.bookstore.dao;

import com.bookstore.pojo.Books;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
@Mapper
public interface BooksMapper {
    List<Books> queryBooks();
    List<Books> queryBooksByShear(Books books);
    boolean  addBook(Books books);
    boolean  decBook(Books books);
    boolean updateBook(Books books);
}
