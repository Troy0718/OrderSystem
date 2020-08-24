package Dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;


import Model.member;

public class memberQuery {

	public static void main(String[] args) {
		System.out.println(memberQuery.queryUsername("kk"));

	}
	
	
	//判斷有無會員存在
	public static member queryUser(String username,String password)
	{
		Session se=implDao.getDb();
		String hql="from member where username=?1 and password=?2";
		Query q=se.createQuery(hql);
		
		q.setParameter(1, username);
		q.setParameter(2, password);
		
		List l=q.list();
		
		member m=null;
		
		for(Object o:l)
		{
			m=(member)o;
		}
		
		return m;
	}
	//判斷帳號是否重複
	public static member queryUsername(String username)
	{
		Session se=implDao.getDb();
		String hql="from member where username=?1 ";
		Query q=se.createQuery(hql);
		
		q.setParameter(1, username);
		
		
		List l=q.list();
		
		member m=null;
		
		for(Object o:l)
		{
			m=(member)o;
		}
		
		return m;
	}
	
	

}
