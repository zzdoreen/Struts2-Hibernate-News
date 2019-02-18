package com.gmm.entity;
import javax.persistence.Column;

import javax.persistence.Entity;

import javax.persistence.GeneratedValue;

import javax.persistence.Id;
import javax.persistence.Table;


//An entity representing Game Record
@Entity
@Table(name = "News")
public class News {
	private int id;
	private String category;
	private String title;
	private String content;
	
	@Id
	@GeneratedValue
	@Column(name = "id")
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	@Column(name = "title")
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	@Column(name = "content")
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	@Column(name = "category")
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		// TODO Auto-generated method stub
		this.category = category;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("News [id=").append(id).append(", title=").append(title).append(", content=").append(content).append(", category=").append(category)
				.append("]");
		return builder.toString();
	}
	
	
}