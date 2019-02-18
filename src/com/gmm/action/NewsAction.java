package com.gmm.action;

import java.util.ArrayList;
import java.util.List;

import com.gmm.dao.NewsDAO;
import com.gmm.dao.NewsDAOImpl;
import com.gmm.entity.News;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

//ModelDriven interface of type Game to store input request values 
public class NewsAction extends ActionSupport implements ModelDriven<News> {

	private static final long serialVersionUID = 1L;
	private News news = new News(); // To store input values of input request
	private NewsDAO newsDAO = new NewsDAOImpl(); // Data access
	private List<News> newsList = new ArrayList<>(); // for printing all items in games

	@Override
	public News getModel() {
		return this.news;
	}

	public News getNews() {
		return news;
	}

	public void setNews(News news) {
		this.news = news;
	}

	public List<News> getNewsList() {
		return newsList;
	}

	public void setNewsList(List<News> newsList) {
		this.newsList = newsList;
	}
	
	//Function to add new game to the database
	public String insertNews() {
		try {
			if(news.getTitle()==null)
				return ERROR;
			newsDAO.insertNews(this.news);
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;	
		}
	}
	
	public String updateNews() {
		try {
			/*if(news.getId()==0)
				return ERROR;*/
			if (newsDAO.isIdPresent(news.getId())) {
				newsDAO.updateNews(this.news);
				return SUCCESS;
			} else
				return ERROR;
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
	}

	public String deleteNews() {
		try {
			if(news.getId()==0)
				return ERROR;
			if (newsDAO.isIdPresent(news.getId())) {
				newsDAO.deleteNews(news.getId());
				return SUCCESS;
			} else
				return ERROR;
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
	}

	public String findById() {
		try {
			if(news.getId()==0)
				return ERROR;
			if (newsDAO.isIdPresent(news.getId())) {
				this.news = newsDAO.findById(news.getId());
				return SUCCESS;
			} else
				return ERROR;
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
	}

	
	public String listAll() {
		
		try {
			this.newsList = newsDAO.listAll();
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
	}
}