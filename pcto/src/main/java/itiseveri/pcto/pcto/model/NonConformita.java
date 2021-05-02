package itiseveri.pcto.pcto.model;

import org.hibernate.annotations.ColumnDefault;
import org.springframework.boot.context.properties.bind.DefaultValue;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Date;
import java.util.Collection;

@Entity
@Table(name = "nonconformità")
public class NonConformita implements Serializable {
    private static final long SerialVersionUID=1;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "codice")
    private long codice;

    @Column(name = "dataInizio")
    private Date dataInizio;

    @ColumnDefault("NULL")
    @Column(name = "dataFine")
    private String dataFine;

    @Column(name = "nomeSegnalatore",length = 20, nullable = false)
    private String nomeSegnalatore;

    @Column(name = "descrizione",length = 30, nullable = false)
    private String descrizione;

    @Column(name = "fase",length = 30)
    private String fase;

    @Column(name = "tipologia",length = 30)
    private String tipologia;

    @JoinTable(name="fasi", joinColumns={
            @JoinColumn(name="codiceNonConformita", referencedColumnName = "codice")},
            inverseJoinColumns = {
            @JoinColumn(name="matricola", referencedColumnName = "matricola")
            }
    )
    @ManyToMany
    private Collection<Lavoratore> lavoratoreCollection;

    @JoinColumn(name = "codiceProdotto", referencedColumnName = "codice", nullable = false)
    @ManyToOne
    private Prodotto codiceProdotto;


    public NonConformita() {
    }

    public NonConformita(long codice, Date dataInizio, String dataFine, String nomeSegnalatore, String descrizione, String fase,  Prodotto codiceProdotto, String tipologia, Collection<Lavoratore> lavoratoreCollection) {
        this.codice = codice;
        this.dataInizio = dataInizio;
        this.dataFine = dataFine;
        this.nomeSegnalatore = nomeSegnalatore;
        this.descrizione = descrizione;
        this.codiceProdotto = codiceProdotto;
        this.tipologia = tipologia;
        this.fase=fase;
        this.lavoratoreCollection= lavoratoreCollection;
    }

    public long getCodice() {
        return codice;
    }

    public void setCodice(long codice) {
        this.codice = codice;
    }

    public Date getDataInizio() {
        return dataInizio;
    }

    public void setDataInizio(Date dataInizio) {
        this.dataInizio = dataInizio;
    }

    public String getDataFine() {
        return dataFine;
    }

    public void setDataFine(String dataFine) {
        this.dataFine = dataFine;
    }

    public String getNomeSegnalatore() {
        return nomeSegnalatore;
    }

    public void setNomeSegnalatore(String nomeSegnalatore) {
        this.nomeSegnalatore = nomeSegnalatore;
    }

    public String getDescrizione() {
        return descrizione;
    }

    public void setDescrizione(String descrizione) {
        this.descrizione = descrizione;
    }

    public String getFase() {
        return fase;
    }

    public void setFase(String fase) {
        this.fase = fase;
    }

    public Collection<Lavoratore> getLavoratoreCollection() {
        return lavoratoreCollection;
    }

    public void setLavoratoreCollection(Collection<Lavoratore> lavoratoreCollection) {
        this.lavoratoreCollection = lavoratoreCollection;
    }

    public Prodotto getCodiceProdotto() {
        return codiceProdotto;
    }

    public void setCodiceProdotto(Prodotto codiceProdotto) {
        this.codiceProdotto = codiceProdotto;
    }

    public String getTipologia() {
        return tipologia;
    }

    public void setTipologia(String tipologia) {
        this.tipologia = tipologia;
    }
}
