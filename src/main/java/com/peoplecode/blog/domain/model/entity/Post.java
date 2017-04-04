package com.peoplecode.blog.domain.model.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Post {
	
	@Id
	@GeneratedValue
	private int id;
	
	@NotNull
	@Size(min = 1, max = 255)
	@Column(nullable = false)
	private String title;
	
	@Size(max = 255)
	@Column
	private String subTitle;
	
	@Column
	private Date regDate;
	
	@NotNull
	@Size(min = 1, max = 100000000)
	@Column(length = 100000000, nullable = false)
	private String content;
	
	@Column
	@JsonIgnore
	@Size(min = 1, max = 20)
	private String password;
	
	@OneToMany(fetch=FetchType.EAGER, cascade = CascadeType.ALL)
	@JoinColumn(name="postId")
	private List<Comment> comments; 
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getSubTitle() {
		return subTitle;
	}

	public void setSubTitle(String subTitle) {
		this.subTitle = subTitle;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public List<Comment> getComments() {
		return comments;
	}

	public void setComments(List<Comment> comments) {
		this.comments = comments;
	}
	
}
