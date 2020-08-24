package Dao;

import org.hibernate.Session;
import org.hibernate.Transaction;

import Model.member;
import Model.porder;

public class porderDao implements implDao{

	public static void main(String[] args) {
		System.out.println(implDao.getDb());
	}

	@Override
	public void add(Object o) {
		Session se=implDao.getDb();
		Transaction tx=se.beginTransaction();
		se.save(o);
		tx.commit();
		se.close();
		
	}

	@Override
	public Object read(int id) {
		Session se=implDao.getDb();
		porder p=se.get(porder.class, id);
		return p;
	}

	@Override
	public void update(Object o) {
		Session se=implDao.getDb();
		Transaction tx=se.beginTransaction();
		
		se.update(o);
		tx.commit();
		se.close();
		
	}

	@Override
	public void delete(int id) {
		Session se=implDao.getDb();
		porder p=se.get(porder.class, id);
		Transaction tx=se.beginTransaction();
		
		se.delete(p);
		tx.commit();
		se.close();
		
	}

}
