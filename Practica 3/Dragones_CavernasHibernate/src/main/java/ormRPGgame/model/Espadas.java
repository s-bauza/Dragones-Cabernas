package ormRPGgame.model;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Espadas {
    private Integer codigoEspadas;
    private String nombre;
    private Integer daño;
    private Integer peso;

    @Id
    @Column(name = "codigoEspadas")
    public Integer getCodigoEspadas() {
        return codigoEspadas;
    }

    public void setCodigoEspadas(Integer codigoEspadas) {
        this.codigoEspadas = codigoEspadas;
    }

    @Basic
    @Column(name = "nombre")
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    @Basic
    @Column(name = "daño")
    public Integer getDaño() {
        return daño;
    }

    public void setDaño(Integer daño) {
        this.daño = daño;
    }

    @Basic
    @Column(name = "peso")
    public Integer getPeso() {
        return peso;
    }

    public void setPeso(Integer peso) {
        this.peso = peso;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Espadas espadas = (Espadas) o;

        if (codigoEspadas != null ? !codigoEspadas.equals(espadas.codigoEspadas) : espadas.codigoEspadas != null)
            return false;
        if (nombre != null ? !nombre.equals(espadas.nombre) : espadas.nombre != null) return false;
        if (daño != null ? !daño.equals(espadas.daño) : espadas.daño != null) return false;
        if (peso != null ? !peso.equals(espadas.peso) : espadas.peso != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = codigoEspadas != null ? codigoEspadas.hashCode() : 0;
        result = 31 * result + (nombre != null ? nombre.hashCode() : 0);
        result = 31 * result + (daño != null ? daño.hashCode() : 0);
        result = 31 * result + (peso != null ? peso.hashCode() : 0);
        return result;
    }
}
