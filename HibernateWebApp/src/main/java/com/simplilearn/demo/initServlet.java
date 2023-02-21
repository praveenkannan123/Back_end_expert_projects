package com.simplilearn.demo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

@WebServlet("/init")

public class initServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = resp.getWriter();
		
		SessionFactory factory = HibernateUtil.getSessionFactory();
		
		Session session = factory.openSession();
		out.print("Hibernate Session Opened");
		
		Student s1 = new Student();
		s1.setName("praveen");
		s1.setEmail("praveen@gmail.com");
		s1.setPassword("praveen123");
		
		Transaction tx = session.beginTransaction();
		session.save(s1);
		
		tx.commit();
		
		session.close();
		factory.close();
		
		out.print("Hibernate Session Closed");
		System.out.println("Data Inserted Succesfully");
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}
	
	
	

}
