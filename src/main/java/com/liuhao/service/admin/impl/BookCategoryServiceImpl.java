package com.liuhao.service.admin.impl;

import com.liuhao.dao.admin.BookCategoryDao;
import com.liuhao.domain.admin.BookCategory;
import com.liuhao.service.admin.BookCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
/**
 * 书籍分类service实现类
 */
@Service
public class BookCategoryServiceImpl implements BookCategoryService {

	@Autowired
	private BookCategoryDao bookCategoryDao;

	@Override
	public int add(BookCategory bookCategory) {

		return bookCategoryDao.add(bookCategory);
	}

	@Override
	public int edit(BookCategory bookCategory) {

		return bookCategoryDao.edit(bookCategory);
	}

	@Override
	public int delete(Long id) {

		return bookCategoryDao.delete(id);
	}

	@Override
	public List<BookCategory> findList(Map<String, Object> queryMap) {

		return bookCategoryDao.findList(queryMap);
	}

	@Override
	public int getTotal(Map<String, Object> queryMap) {

		return bookCategoryDao.getTotal(queryMap);
	}

	@Override
	public List<BookCategory> findAll() {

		return bookCategoryDao.findAll();
	}

	@Override
	public BookCategory find(Long id) {

		return bookCategoryDao.find(id);
	}

}