package com.liuhao.dao.admin;


import com.liuhao.domain.admin.Book;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * 书籍dao
 */
@Repository
public interface BookDao {
	public int add(Book book);
	public int edit(Book book);
	public int delete(Long id);
	public List<Book> findList(Map<String,Object> queryMap);
	public int getTotal(Map<String,Object> queryMap);
	public Book find(Long id);
	public int updateCommentNumber(Long id);
	public int updateViewNumber(Long id);
	public List<Book> findLastCommentList(int pageSize);
}
