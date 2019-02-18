package com.gmm.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Query;
import org.hibernate.Transaction;

import com.gmm.entity.News;
import com.googlecode.s2hibernate.struts2.plugin.annotations.SessionTarget;
import com.googlecode.s2hibernate.struts2.plugin.annotations.TransactionTarget;


//Implementation of dataAccessLayer
public class NewsDAOImpl implements NewsDAO {

	//These objects are injected using the Full Hibernate Plug-in 1.4 GA. 
	
	@SessionTarget
	Session session; 
	
	@TransactionTarget
	Transaction transaction;
	
	@Override
	public void insertNews(News news) {
		try {
			session.save(news);
		} catch (Exception e) {
			transaction.rollback();
			e.printStackTrace();
		}
	}
	
	@Override
	public void updateNews(News news) {

		try {
			session.update(news);
		} catch (Exception e) {
			transaction.rollback();
			e.printStackTrace();
		}
	}
	
	@Override
	public void deleteNews(int id) {

		try {
			News news = (News) session.get(News.class, id);
			session.delete(news);
		} catch (Exception e) {
			transaction.rollback();
			e.printStackTrace();
		}
	}

	@Override
	public News findById(int id) {
		return (News) session.get(News.class, id);
	}
	
	@Override
	public News findByCategory(String category) {
		return (News) session.get(News.class,category);
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<News> listAll() {
		return session.createQuery("from News").list(); //The table name is Entity class name representing database table

	}
	
	public boolean isIdPresent(int id) {
		News news = (News) session.get(News.class, id);
		if(news==null)
			return false;
		return true;
	}
	
}