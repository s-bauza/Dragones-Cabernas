package ormRPGgame.model;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Jugadores {
    private Integer jugadorId;
    private String nombre;

    @Id
    @Column(name = "jugadorId")
    public Integer getJugadorId() {
        return jugadorId;
    }

    public void setJugadorId(Integer jugadorId) {
        this.jugadorId = jugadorId;
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

        Jugadores jugadores = (Jugadores) o;

        if (jugadorId != null ? !jugadorId.equals(jugadores.jugadorId) : jugadores.jugadorId != null) return false;
        if (nombre != null ? !nombre.equals(jugadores.nombre) : jugadores.nombre != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = jugadorId != null ? jugadorId.hashCode() : 0;
        result = 31 * result + (nombre != null ? nombre.hashCode() : 0);
        return result;
    }
}
