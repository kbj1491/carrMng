package com.kosmo.career.error;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.context.annotation.ComponentScanBeanDefinitionParser;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;

import com.kosmo.career.mapper.CertiMapper;
import com.kosmo.career.service.UserService;
import com.kosmo.career.service.UserServiceImpl;
import com.kosmo.career.vo.CertiVO;

import org.apache.ibatis.io.Resources;

public class DBCPCallTest {
	public static void main(String[] args) {
		
		String path = "C:\\Users\\kim bo sung\\eclipse-workspace\\career_Mng_project\\src\\main\\webapp\\WEB-INF\\servlet-context.xml";
		Resource src = new FileSystemResource(path);
		BeanFactory ft = new XmlBeanFactory(src);
		
		System.out.println("시작");
		UserService cm=ft.getBean(UserServiceImpl.class);
		CertiVO vo=new CertiVO();
		cm.login(vo);
//		DataSource ds = (DataSource)ft.getBean("lkhDS");
//		Connection conn = null;
//		try {
//			conn = ds.getConnection();
//			if(conn == null)
//				System.out.println("fail");
//			else
//				System.out.println("ok");
		
//		UserDAO udao = (UserDAO)ft.getBean("userDAO");
//		CertiMapper certi = 
//		UserVO vo=new UserVO();
//		vo.setId("kbs");
//		vo.setPw("1111");
//		vo.setName("김보성");
//		System.out.println(udao.insert(vo));
//		
//		UserVO vo1 = new UserVO();
//		
//		vo1.setSeq(5);
//		vo = (UserVO)udao.select(vo1);
//		
//		System.out.println(vo.getId());
//		System.out.println(vo.getPw());
//		System.out.println(vo.getName());
//		
		
	}
	
	

}
