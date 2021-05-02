package itiseveri.pcto.pcto.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Collection;

@Entity
@Table(name = "prodotti")
public class Prodotto implements Serializable {
    private static final long SerialVersionUID=1;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "codice")
    private long codice;

    @Column(name = "nome", length = 20, nullable = false)
    private String nome;

    @Column(name = "grandezza", length = 20, nullable = false)
    private String grandezza;


    @OneToMany(mappedBy = "codiceProdotto")
    private Collection<NonConformita> nonConformita;

    public Prodotto() {
    }

    public Prodotto(long codice, String nome, String grandezza, Collection<NonConformita> nonConformita) {
        this.codice = codice;
        this.nome = nome;
        this.grandezza= grandezza;
        this.nonConformita = nonConformita;
    }

    public long getCodice() {
        return codice;
    }

    public void setCodice(long codice) {
        this.codice = codice;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getGrandezza() {
        return grandezza;
    }

    public void setGrandezza(String grandezza) {
        this.grandezza = grandezza;
    }

    public Collection<NonConformita> getNonConformita() {
        return nonConformita;
    }

    public void setNonConformita(Collection<NonConformita> nonConformita) {
        this.nonConformita = nonConformita;
    }
}
