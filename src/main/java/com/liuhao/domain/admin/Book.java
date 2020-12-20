package com.liuhao.domain.admin;

import org.springframework.stereotype.Component;

import java.util.Date;

/**
 * 书籍实体
 *
 */
@Component
public class Book {
	private Long id;
	private Long categoryId;//分类id
	private BookCategory bookCategory;//分类实体
	private String title;//书籍标题
	private String abstrs;//书籍摘要
	private String tags;//书籍标签
	private String photo;//书籍封面图片
	private String author;//作者
	private String content;//书籍内容
	private Integer viewNumber = 0;//浏览量
	private Integer commentNumber = 0;//评论数量
	private Date createTime;//发布时间

	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAbstrs() {
		return abstrs;
	}
	public void setAbstrs(String abstrs) {
		this.abstrs = abstrs;
	}
	public String getTags() {
		return tags;
	}
	public void setTags(String tags) {
		this.tags = tags;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Integer getViewNumber() {
		return viewNumber;
	}
	public void setViewNumber(Integer viewNumber) {
		this.viewNumber = viewNumber;
	}
	public Integer getCommentNumber() {
		return commentNumber;
	}
	public void setCommentNumber(Integer commentNumber) {
		this.commentNumber = commentNumber;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public Long getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(Long categoryId) {
		this.categoryId = categoryId;
	}

	public BookCategory getBookCategory() {
		return bookCategory;
	}

	public void setBookCategory(BookCategory bookCategory) {
		this.bookCategory = bookCategory;
	}
}
