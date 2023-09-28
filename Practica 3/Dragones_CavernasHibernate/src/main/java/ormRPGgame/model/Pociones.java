package ormRPGgame.model;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Pociones {
    private Integer codigoPocion;
    private Integer cantidadDeMana;
    private Integer cantidadDeVida;

    @Id
    @Column(name = "codigoPocion")
    public Integer getCodigoPocion() {
        return codigoPocion;
    }

    public void setCodigoPocion(Integer codigoPocion) {
        this.codigoPocion = codigoPocion;
    }

    @Basic
    @Column(name = "cantidad de mana")
    public Integer getCantidadDeMana() {
        return cantidadDeMana;
    }

    public void setCantidadDeMana(Integer cantidadDeMana) {
        this.cantidadDeMana = cantidadDeMana;
    }

    @Basic
    @Column(name = "cantidad de vida")
    public Integer getCantidadDeVida() {
        return cantidadDeVida;
    }

    public void setCantidadDeVida(Integer cantidadDeVida) {
        this.cantidadDeVida = cantidadDeVida;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Pociones pociones = (Pociones) o;

        if (codigoPocion != null ? !codigoPocion.equals(pociones.codigoPocion) : pociones.codigoPocion != null)
            return false;
        if (cantidadDeMana != null ? !cantidadDeMana.equals(pociones.cantidadDeMana) : pociones.cantidadDeMana != null)
            return false;
        if (cantidadDeVida != null ? !cantidadDeVida.equals(pociones.cantidadDeVida) : pociones.cantidadDeVida != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = codigoPocion != null ? codigoPocion.hashCode() : 0;
        result = 31 * result + (cantidadDeMana != null ? cantidadDeMana.hashCode() : 0);
        result = 31 * result + (cantidadDeVida != null ? cantidadDeVida.hashCode() : 0);
        return result;
    }
}
