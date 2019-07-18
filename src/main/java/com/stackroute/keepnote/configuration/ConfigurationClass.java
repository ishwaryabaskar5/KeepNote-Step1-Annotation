package com.stackroute.keepnote.configuration;


import com.stackroute.keepnote.model.Note;
import com.stackroute.keepnote.repository.NoteRepository;
import org.springframework.beans.factory.config.ConfigurableBeanFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Scope;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@ComponentScan(basePackages = "com.stackroute.springmvc1")
public class ConfigurationClass {
	
	@Bean()
	@Scope(value = ConfigurableBeanFactory.SCOPE_PROTOTYPE)
	public Note note(){
		return new Note();
	}
	
	@Bean()
	public NoteRepository noteRepository(){
		return new NoteRepository();
	}
	
	@Bean()
	public InternalResourceViewResolver resolver(){
		InternalResourceViewResolver resourceViewResolver = new InternalResourceViewResolver();
		resourceViewResolver.setPrefix("/WEB-INF/views/");
		resourceViewResolver.setSuffix(".jsp");
		return resourceViewResolver;
	}
}
