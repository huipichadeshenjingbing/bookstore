package com.liuhao.dao.admin;


import com.liuhao.domain.admin.BookCategory;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * 书籍分类dao
 *
 */
@Repository
public interface BookCategoryDao {
	public int add(BookCategory bookCategory);
	public int edit(BookCategory bookCategory);
	public int delete(Long id);
	public List<BookCategory> findList(Map<String,Object> queryMap);
	public List<BookCategory> findAll();
	public int getTotal(Map<String,Object> queryMap);
	public BookCategory find(Long id);
}
