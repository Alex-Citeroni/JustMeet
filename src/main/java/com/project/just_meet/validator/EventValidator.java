package com.project.just_meet.validator;

import com.project.just_meet.model.Event;
import com.project.just_meet.service.EventService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

@Component
public class EventValidator implements Validator {
	@Autowired
	private EventService eventService;

	@Override
	public boolean supports(Class<?> aClass) {
		return Event.class.equals(aClass);
	}

	@Override
	public void validate(Object o, Errors errors) {
		Event event = (Event) o;

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "title", "NotEmpty");
		if (event.getTitle().length() < 6 || event.getTitle().length() > 32)
			errors.rejectValue("title", "Size.eventForm.title");

		if (eventService.findByTitle(event.getTitle()) != null)
			errors.rejectValue("title", "Duplicate.eventForm.title");

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "description", "NotEmpty");
		if (event.getDescription().length() < 10 || event.getDescription().length() > 200)
			errors.rejectValue("description", "Size.eventForm.description");

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "place", "NotEmpty");
		if (event.getPlace().length() < 1)
			errors.rejectValue("place", "Size.eventForm.place");

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "street", "NotEmpty");
		if (event.getStreet().length() < 1)
			errors.rejectValue("street", "Size.eventForm.street");
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "city", "NotEmpty");
		if (event.getCity().length() < 1)
			errors.rejectValue("city", "Size.eventForm.city");

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "province", "NotEmpty");
		if (event.getProvince().length() < 1)
			errors.rejectValue("province", "Size.eventForm.province");
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "participan", "NotEmpty");
		if (event.getParticipan() < 1)
			errors.rejectValue("participan", "Size.eventForm.participan");
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "category", "NotEmpty");
		if (event.getCategory().length() < 1)
			errors.rejectValue("category", "Size.eventForm.category");
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "date", "NotEmpty");
		if (event.getDate().length() < 1)
			errors.rejectValue("date", "Size.eventForm.date");
		
		
		if (event.getImage().length() > 1000)
			errors.rejectValue("image", "Size.eventForm.image");
	}
}