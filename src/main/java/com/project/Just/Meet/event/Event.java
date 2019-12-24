package com.project.Just.Meet.event;

public class Event {
	private int data, costo, partecipanti;
	private char luogo, categoria, titolo;

	public int getData() {
		return data;
	}

	public void setData(int data) {
		this.data = data;
	}

	public int getCosto() {
		return costo;
	}

	public void setCosto(int costo) {
		this.costo = costo;
	}

	public int getPartecipanti() {
		return partecipanti;
	}

	public void setPartecipanti(int partecipanti) {
		this.partecipanti = partecipanti;
	}

	public char getLuogo() {
		return luogo;
	}

	public void setLuogo(char luogo) {
		this.luogo = luogo;
	}

	public char getNomeEvento() {
		return titolo;
	}

	public void setNomeEvento(char nomeEvento) {
		this.titolo = nomeEvento;
	}

	public char getCategoria() {
		return categoria;
	}

	public void setCategoria(char categoria) {
		this.categoria = categoria;
	}
}