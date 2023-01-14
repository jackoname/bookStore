package com.bookstore.service;

import com.bookstore.pojo.Books;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public interface BooksService {
    List<Books> queryBooks();
    List<Books> queryBooksByShear(Books books);
    boolean addBook(Books books);
    boolean  decBook(Books books);
    boolean updateBook(Books books);
}
