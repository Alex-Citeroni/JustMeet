package com.project.just_meet.validator;

import com.project.just_meet.model.Event;
import com.project.just_meet.service.event.EventService;
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
		if (event.getTitle().length() < 1 || event.getTitle().length() > 32)
			errors.rejectValue("title", "Size.eventForm.title");

		if (eventService.findByTitle(event.getTitle()) != null)
			errors.rejectValue("title", "Duplicate.eventForm.title");

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "description", "NotEmpty");
		if (event.getDescription().length() < 10 || event.getDescription().length() > 200)
			errors.rejectValue("description", "Size.eventForm.description");

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "participants", "NotEmpty");

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "place", "NotEmpty");

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "address", "NotEmpty");

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "city", "NotEmpty");

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "province", "NotEmpty");

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "category", "NotEmpty");

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "date", "NotEmpty");

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "startingTime", "NotEmpty");

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "endTime", "NotEmpty");
	}
}