package com.liuhao.service.admin;

import com.liuhao.domain.admin.Comment;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * 书籍评论接口
 *
 */
@Service
public interface CommentService {
	public int add(Comment comment);
	public int edit(Comment comment);
	public int delete(String ids);
	public List<Comment> findList(Map<String,Object> queryMap);
	public List<Comment> findAll();
	public int getTotal(Map<String,Object> queryMap);
}

