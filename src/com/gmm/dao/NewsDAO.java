package com.gmm.dao;

import java.util.List;

import com.gmm.entity.News;


//DataAccess layer for game table in the database;
public interface NewsDAO {
	public void insertNews(News news);
	public void updateNews(News news);
	public void deleteNews(int id);
	public News findById(int id);
	public News findByCategory(String category);
	public List<News> listAll();
	public boolean isIdPresent(int id);
}
