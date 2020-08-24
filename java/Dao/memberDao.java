package Dao;

import org.hibernate.Session;
import org.hibernate.Transaction;

import Model.member;

public class memberDao implements implDao{

	public static void main(String[] args) {
		member m=new member();
		m.add("abc","bb", "123", "000", "ww", false);
		
		new memberDao().add(m);

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
		member m=se.get(member.class, id);
		return m;
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
		member m=se.get(member.class, id);
		Transaction tx=se.beginTransaction();
		
		se.delete(m);
		tx.commit();
		se.close();
		
		
	}

}
