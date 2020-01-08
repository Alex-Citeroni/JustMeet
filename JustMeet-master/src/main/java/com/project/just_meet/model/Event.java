package com.project.just_meet.model;




public class Event {
	
	private long id;

	private int cost, participants, participan;

	private String title, place, street, province, description, category, date;

	public Event(long id, int cost, int participants, int participan, String title, String place, String street, String province,
			String description, String category, String date) {
		this.id = id;
		this.cost = cost;
		this.participants = participants;
		this.participan = participan;
		this.title = title;
		this.place = place;
		this.street = street;
		this.province = province;
		this.description = description;
		this.category = category;
		this.date = date;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String data) {
		this.date = data;
	}

	public int getCost() {
		return cost;
	}

	public void setCost(int costo) {
		this.cost = costo;
	}

	public int getParticipants() {
		return participants;
	}

	public int getParticipan() {
		return participan;
	}
	
	public void setParticipants(int partecipants) {
		this.participants = partecipants;
	}
	
	public void setParticipan(int participan) {
		this.participan = participan;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String luogo) {
		this.place = luogo;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String nomeEvento) {
		this.title = nomeEvento;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String categoria) {
		this.category = categoria;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String descrizione) {
		this.description = descrizione;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}
}