package ormRPGgame.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Ciudades {
    private String nombre;

    @Id
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

        Ciudades ciudades = (Ciudades) o;

        if (nombre != null ? !nombre.equals(ciudades.nombre) : ciudades.nombre != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        return nombre != null ? nombre.hashCode() : 0;
    }
}
