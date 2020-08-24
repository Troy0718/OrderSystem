package Controller;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public interface implCon {
	ApplicationContext model=new ClassPathXmlApplicationContext("sp1.xml");
	ApplicationContext dao=new ClassPathXmlApplicationContext("spDao.xml");

}
