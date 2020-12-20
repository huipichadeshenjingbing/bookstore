package com.liuhao.domain.admin;

import org.springframework.stereotype.Component;

import java.util.Date;

/**
 * 书籍评论实体
 *
 */
@Component
public class Comment {
	private Long id;
	private Long bookId;//书籍id
	private Book book;//书籍实体
	private String nickname;//昵称
	private String content;//评论内容
	private Date createTime;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Long getBookId() {
		return bookId;
	}

	public void setBookId(Long bookId) {
		this.bookId = bookId;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}
}
