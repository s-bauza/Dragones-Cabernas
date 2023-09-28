package ormRPGgame.model;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Baculos {
    private Integer codigoBaculos;
    private String nombre;
    private Integer daño;
    private Integer peso;

    @Id
    @Column(name = "codigoBaculos")
    public Integer getCodigoBaculos() {
        return codigoBaculos;
    }

    public void setCodigoBaculos(Integer codigoBaculos) {
        this.codigoBaculos = codigoBaculos;
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

        Baculos baculos = (Baculos) o;

        if (codigoBaculos != null ? !codigoBaculos.equals(baculos.codigoBaculos) : baculos.codigoBaculos != null)
            return false;
        if (nombre != null ? !nombre.equals(baculos.nombre) : baculos.nombre != null) return false;
        if (daño != null ? !daño.equals(baculos.daño) : baculos.daño != null) return false;
        if (peso != null ? !peso.equals(baculos.peso) : baculos.peso != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = codigoBaculos != null ? codigoBaculos.hashCode() : 0;
        result = 31 * result + (nombre != null ? nombre.hashCode() : 0);
        result = 31 * result + (daño != null ? daño.hashCode() : 0);
        result = 31 * result + (peso != null ? peso.hashCode() : 0);
        return result;
    }
}
