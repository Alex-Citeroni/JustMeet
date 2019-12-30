package com.project.just_meet.model;

import javax.persistence.*;

@Entity
@Table(name = "event")
public class Event {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	private int cost, participan;

	private String title, place, street, province, description, category, date;

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

	public int getParticipan() {
		return participan;
	}

	public void setParticipan(int partecipanti) {
		this.participan = partecipanti;
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