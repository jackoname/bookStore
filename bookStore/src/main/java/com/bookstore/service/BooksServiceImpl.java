package com.bookstore.service;

import com.bookstore.dao.BooksMapper;
import com.bookstore.dao.UserMapper;
import com.bookstore.pojo.Books;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class BooksServiceImpl implements BooksService{
    private BooksMapper booksMapper;
    @Autowired
    public void setBooksMapper(BooksMapper booksMapper) {
        this.booksMapper = booksMapper;
    }

    @Override
    public List<Books> queryBooks() {
        return booksMapper.queryBooks();
    }

    @Override
    public List<Books> queryBooksByShear(Books books) {
        return  booksMapper.queryBooksByShear(books);
    }

    @Override
    public boolean addBook(Books books) {
        return booksMapper.addBook(books);
    }

    @Override
    public boolean decBook(Books books) {
        return booksMapper.decBook(books);
    }

    @Override
    public boolean updateBook(Books books) {
        return booksMapper.updateBook(books);
    }
}
