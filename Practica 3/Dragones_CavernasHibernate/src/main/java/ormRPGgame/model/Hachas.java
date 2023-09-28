package ormRPGgame.model;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Hachas {
    private Integer codigoHachas;
    private String nombre;
    private Integer daño;
    private Integer peso;

    @Id
    @Column(name = "codigoHachas")
    public Integer getCodigoHachas() {
        return codigoHachas;
    }

    public void setCodigoHachas(Integer codigoHachas) {
        this.codigoHachas = codigoHachas;
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

        Hachas hachas = (Hachas) o;

        if (codigoHachas != null ? !codigoHachas.equals(hachas.codigoHachas) : hachas.codigoHachas != null)
            return false;
        if (nombre != null ? !nombre.equals(hachas.nombre) : hachas.nombre != null) return false;
        if (daño != null ? !daño.equals(hachas.daño) : hachas.daño != null) return false;
        if (peso != null ? !peso.equals(hachas.peso) : hachas.peso != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = codigoHachas != null ? codigoHachas.hashCode() : 0;
        result = 31 * result + (nombre != null ? nombre.hashCode() : 0);
        result = 31 * result + (daño != null ? daño.hashCode() : 0);
        result = 31 * result + (peso != null ? peso.hashCode() : 0);
        return result;
    }
}
