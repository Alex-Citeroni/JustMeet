package com.project.just_meet;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.ApplicationContext;

import com.project.just_meet.model.Event;
import com.project.just_meet.service.EventServiceImpl;

@SpringBootApplication
public class WebApplication extends SpringBootServletInitializer {
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(WebApplication.class);
	}

	public static void main(String[] args) throws Exception {
		ApplicationContext context = SpringApplication.run(WebApplication.class, args);
		EventServiceImpl eventService = context.getBean(EventServiceImpl.class);
		Event event0 = new Event(0000, 2, 0, 0, "title0", "place0", "street0", "province0", "description0", "category0", "01/01/21");
		Event event1 = new Event(0001, 2, 0, 0, "title1", "place1", "street1", "province1", "description1", "category1", "02/01/21");
		Event event2 = new Event(0002, 2, 0, 0, "title2", "place2", "street2", "province2", "description2", "category2", "03/01/21");
		eventService.insertEvent(event0);
		//eventService.insertEvent(event1);
		//eventService.insertEvent(event2);
	}
}