package com.liuhao.service.admin.impl;

import com.liuhao.dao.admin.BookDao;
import com.liuhao.domain.admin.Book;
import com.liuhao.service.admin.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
/**
 * 书籍service实现类
 */
@Service
public class BookServiceImpl implements BookService {

	@Autowired
	private BookDao bookDao;

	@Override
	public int add(Book book) {

		return bookDao.add(book);
	}

	@Override
	public int edit(Book book) {

		return bookDao.edit(book);
	}

	@Override
	public int delete(Long id) {

		return bookDao.delete(id);
	}

	@Override
	public List<Book> findList(Map<String, Object> queryMap) {

		return bookDao.findList(queryMap);
	}

	@Override
	public int getTotal(Map<String, Object> queryMap) {

		return bookDao.getTotal(queryMap);
	}

	@Override
	public Book find(Long id) {

		return bookDao.find(id);
	}

	@Override
	public int updateCommentNumber(Long id) {

		return bookDao.updateCommentNumber(id);
	}

	@Override
	public int updateViewNumber(Long id) {

		return bookDao.updateViewNumber(id);
	}

	@Override
	public List<Book> findLastCommentList(int pageSize) {

		return bookDao.findLastCommentList(pageSize);
	}



}