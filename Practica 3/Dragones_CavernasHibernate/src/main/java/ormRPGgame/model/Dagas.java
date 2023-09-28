package ormRPGgame.model;

import javax.persistence.*;

@Entity
public class Dagas {
    private Integer dagaId;
    private String nombre;

    public Dagas(String nombre) {
        this.nombre = nombre;
    }

    public Dagas() {

    }

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name = "dagaId")
    public Integer getDagaId() {
        return dagaId;
    }

    public void setDagaId(Integer dagaId) {
        this.dagaId = dagaId;
    }

    @Basic
    @Column(name = "nombre")
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Dagas dagas = (Dagas) o;

        if (dagaId != null ? !dagaId.equals(dagas.dagaId) : dagas.dagaId != null) return false;
        if (nombre != null ? !nombre.equals(dagas.nombre) : dagas.nombre != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = dagaId != null ? dagaId.hashCode() : 0;
        result = 31 * result + (nombre != null ? nombre.hashCode() : 0);
        return result;
    }
}
