package codeJava;

public class Utente {

      private   String username;
      private   String nome;
      private int eta;
      private   String sesso;
      private   String luogoDiNascita;
      private   int numeroCellulare;
      private   String email;
      private   String titoloDiStudio;
      private   String interessi;
      private   String metodoDiPagamento;
      private   String preferiti;

        public Utente(String username, String nome, int eta, String sesso, String luogoDiNascita,
                      int numeroCellulare, String email, String titoloDiStudio,
                      String interessi, String metodoDiPagamento, String preferiti) {
            this.username = username;
            this.nome = nome;
            this.eta = eta;
            this.sesso = sesso;
            this.luogoDiNascita = luogoDiNascita;
            this.numeroCellulare = numeroCellulare;
            this.email = email;
            this.titoloDiStudio = titoloDiStudio;
            this.interessi = interessi;
            this.metodoDiPagamento = metodoDiPagamento;
            this.preferiti = preferiti;
        }

        public String getUsername() {
            return username;
        }

        public void setUsername(String username) {
            this.username = username;
        }

        public String getNome() {
            return nome;
        }

        public void setNome(String nome) {
            this.nome = nome;
        }

        public int getEta() {
            return eta;
        }

        public void setEta(int eta) {
            this.eta = eta;
        }

        public String getSesso() {
            return sesso;
        }

        public void setSesso(String sesso) {
            this.sesso = sesso;
        }

        public String getLuogoDiNascita() {
            return luogoDiNascita;
        }

        public void setLuogoDiNascita(String luogoDiNascita) {
            this.luogoDiNascita = luogoDiNascita;
        }

        public int getNumeroCellulare() {
            return numeroCellulare;
        }

        public void setNumeroCellulare(int numeroCellulare) {
            this.numeroCellulare = numeroCellulare;
        }

        public String getEmail() {
            return email;
        }

        public void setEmail(String email) {
            this.email = email;
        }

        public String getTitoloDiStudio() {
            return titoloDiStudio;
        }

        public void setTitoloDiStudio(String titoloDiStudio) {
            this.titoloDiStudio = titoloDiStudio;
        }

        public String getInteressi() {
            return interessi;
        }

        public void setInteressi(String interessi) {
            this.interessi = interessi;
        }

        public String getMetodoDiPagamento() {
            return metodoDiPagamento;
        }

        public void setMetodoDiPagamento(String metodoDiPagamento) {
            this.metodoDiPagamento = metodoDiPagamento;
        }

        public String getPreferiti() {
            return preferiti;
        }

        public void setPreferiti(String preferiti) {
            this.preferiti = preferiti;
        }

}
