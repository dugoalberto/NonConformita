package itiseveri.pcto.pcto.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Collection;

@Entity
@Table(name = "processi")
public class Processo implements Serializable {
    private static final long SerialVersionUID=1;

    @Id
    @Column(name = "nome", length = 20)
    private String nome;

    @Column(name = "capoReparto", length =20, unique = true)
    private String capoReparto;

    @OneToMany(mappedBy = "nomeProcesso")
    private Collection<Lavoratore> lavoratori;

    public Processo() {
    }

    public Processo(String nome, String capoReparto, Collection<Lavoratore> lavoratori) {
        this.nome = nome;
        this.capoReparto = capoReparto;
        this.lavoratori = lavoratori;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCapoReparto() {
        return capoReparto;
    }

    public void setCapoReparto(String capoReparto) {
        this.capoReparto = capoReparto;
    }

    public Collection<Lavoratore> getLavoratori() {
        return lavoratori;
    }

    public void setLavoratori(Collection<Lavoratore> lavoratori) {
        this.lavoratori = lavoratori;
    }
}

