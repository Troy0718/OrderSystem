package Dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public interface implDao {
	//建立連線物件方法
	
	static Session getDb()
	{
		Configuration conn=new Configuration().configure();
		SessionFactory sf=conn.buildSessionFactory();
		Session se=sf.openSession();
		
		return se;	
		
	}
	
	
	//Create->新增物件
	void add(Object o);
	
	//Read->讀取物件
	Object read(int id);
	
	//update->修改物件
	void update(Object o);
	
	//Delete->刪除物件
	
	void delete(int id);
	

	
	

}
