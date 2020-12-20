package com.liuhao.service.admin;


import com.liuhao.domain.admin.Book;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * 书籍接口
 *
 */
@Service
public interface BookService {
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

