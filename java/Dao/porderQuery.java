package Dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

public class porderQuery {

	public static void main(String[] args) {
		System.out.println(porderQuery.queryAll());

	}
	//所有訂單
	public static List queryAll()
	{
		Session se=implDao.getDb();
		String hql="from porder ";
		Query q=se.createQuery(hql);
		
		
		List l=q.list();
		
		return l;
	}
	
	//依金額範圍
	public static List querySum(int start,int end)
	{
		Session se=implDao.getDb();
		String hql="from porder as p where p.sum>=?1 and p.sum<=?2";
		Query q=se.createQuery(hql);
		
		q.setParameter(1, start);
		q.setParameter(2, end);
		
		List l=q.list();
		
		return l;
	}
	//依客戶名稱
	

	public static List queryName(String name)
	{
		Session se=implDao.getDb();
		String hql="from porder as p where p.name=?1";
		Query q=se.createQuery(hql);
		
		q.setParameter(1, name);
		
		
		List l=q.list();
		
		return l;
	}
}
