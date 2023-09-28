package ormRPGgame.model;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Druidas {
    private Integer idDruida;
    private String nombre;

    @Id
    @Column(name = "idDruida")
    public Integer getIdDruida() {
        return idDruida;
    }

    public void setIdDruida(Integer idDruida) {
        this.idDruida = idDruida;
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

        Druidas druidas = (Druidas) o;

        if (idDruida != null ? !idDruida.equals(druidas.idDruida) : druidas.idDruida != null) return false;
        if (nombre != null ? !nombre.equals(druidas.nombre) : druidas.nombre != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = idDruida != null ? idDruida.hashCode() : 0;
        result = 31 * result + (nombre != null ? nombre.hashCode() : 0);
        return result;
    }
}
