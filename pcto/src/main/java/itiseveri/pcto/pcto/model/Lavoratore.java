package itiseveri.pcto.pcto.model;


import org.springframework.boot.context.properties.bind.DefaultValue;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Date;
import java.util.Collection;

@Entity
@Table(name = "lavoratori")
public class Lavoratore implements Serializable {
    private static final long SerialVersionUID=1;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "matricola")
    private long matricola;
    //USER
    @Column(name = "username",length = 20, nullable = false)
    private String username;

    @Column(name = "password",length = 20, nullable = false)
    private String password;

    @Column(name = "active", nullable = false)
    private boolean active;

    @Column(name = "roles",length = 20, nullable = false)
    private String roles;
    //FINISH USER
    @Column(name = "nome",length = 20, nullable = false)
    private String nome;

    @Column(name = "cognome",length = 20, nullable = false)
    private String cognome;

    //@Temporal(TemporalType.DATE)
    @Column(name = "dataNascita")
    private Date dataNascita;

    @Column(name = "residenza", length = 30)
    private String residenza;


    @JoinColumn(name = "nomeProcesso", referencedColumnName = "nome", nullable = false)
    @ManyToOne
    private Processo nomeProcesso;

    @ManyToMany (mappedBy = "lavoratoreCollection")
    private Collection<NonConformita> nonConformitaCollection;

    public Lavoratore() {
    }

    public Lavoratore(long matricola, String username, boolean active,String roles, String nome, String cognome, Date dataNascita, String residenza, String password, Processo nomeProcesso, Collection<NonConformita> nonConformitaCollection) {
        this.matricola = matricola;
        this.nome = nome;
        this.username= username;
        this.active=active;
        this.roles=roles;
        this.cognome = cognome;
        this.dataNascita = dataNascita;
        this.residenza = residenza;
        this.password = password;
        this.nomeProcesso = nomeProcesso;
        this.nonConformitaCollection=nonConformitaCollection;
    }

    public long getMatricola() {
        return matricola;
    }

    public void setMatricola(long matricola) {
        this.matricola = matricola;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCognome() {
        return cognome;
    }

    public void setCognome(String cognome) {
        this.cognome = cognome;
    }

    public Date getDataNascita() {
        return dataNascita;
    }

    public void setDataNascita(Date dataNascita) {
        this.dataNascita = dataNascita;
    }

    public String getResidenza() {
        return residenza;
    }

    public void setResidenza(String residenza) {
        this.residenza = residenza;
    }

    //metodi per login
    public boolean isActive() { return active; }
    public void setActive(boolean active) { this.active = active; }
    public String getRoles() { return roles;  }
    public void setRoles(String roles) { this.roles = roles; }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getUsername(){return username;}
    public void setUsername(String username){this.username = username;}
    //fine metodi login

    public Processo getNomeProcesso() {
        return nomeProcesso;
    }

    public void setNomeProcesso(Processo nomeProcesso) {
        this.nomeProcesso = nomeProcesso;
    }

    public Collection<NonConformita> getNonConformitaCollection() {
        return nonConformitaCollection;
    }

    public void setFasi(Collection<NonConformita> fasi) {
        this.nonConformitaCollection = nonConformitaCollection;
    }
}
