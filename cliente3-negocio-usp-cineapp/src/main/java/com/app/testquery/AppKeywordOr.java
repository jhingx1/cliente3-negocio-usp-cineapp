package com.app.testquery;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.app.model.Noticia;
import com.app.repository.NoticiasRepository;

public class AppKeywordOr {

	public static void main(String[] args) {
		
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("root-context.xml");		
		NoticiasRepository repo = context.getBean("noticiasRepository", NoticiasRepository.class);
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");		
		List<Noticia> lista = null;
		
		try {
			
			lista = repo.findByEstatusOrFecha("Activa",format.parse("2017-09-08"));
			
		} catch (ParseException e) {
			
			e.printStackTrace();
		}
		
		for(Noticia n:lista)
			System.out.println(n);
		
		context.close();

	}
}
