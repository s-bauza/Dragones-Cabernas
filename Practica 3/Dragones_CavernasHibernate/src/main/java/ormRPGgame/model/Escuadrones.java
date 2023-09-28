package ormRPGgame.model;

import javax.persistence.*;
import java.util.Set;

@Entity @Table(name="escuadrones")
public class Escuadrones {
    @Id
    @Column(name = "idEscuadron")
    private Integer idEscuadron;
    public Integer getIdEscuadron() {
        return idEscuadron;
    }

    public void setIdEscuadron(Integer idEscuadron) {
        this.idEscuadron = idEscuadron;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Escuadrones that = (Escuadrones) o;

        if (idEscuadron != null ? !idEscuadron.equals(that.idEscuadron) : that.idEscuadron != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        return idEscuadron != null ? idEscuadron.hashCode() : 0;
    }

    @ManyToMany(mappedBy = "idEscuadron")
    private Set<Dragones> nombre;


}
