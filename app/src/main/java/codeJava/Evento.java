package codeJava;

public class Evento {
    String nome;
    String luogo;
    String data;
    String durata;
    String partecipanti;
    String descrizione;
    String tipo;
    String categoria;

    public Evento(String nome, String luogo, String data, String durata,
                  String partecipanti, String descrizione,
                  String tipo, String categoria) {
        this.nome = nome;
        this.luogo = luogo;
        this.data = data;
        this.durata = durata;
        this.partecipanti = partecipanti;
        this.descrizione = descrizione;
        this.tipo = tipo;
        this.categoria = categoria;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getLuogo() {
        return luogo;
    }

    public void setLuogo(String luogo) {
        this.luogo = luogo;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public String getDurata() {
        return durata;
    }

    public void setDurata(String durata) {
        this.durata = durata;
    }

    public String getPartecipanti() {
        return partecipanti;
    }

    public void setPartecipanti(String partecipanti) {
        this.partecipanti = partecipanti;
    }

    public String getDescrizione() {
        return descrizione;
    }

    public void setDescrizione(String descrizione) {
        this.descrizione = descrizione;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }
}
