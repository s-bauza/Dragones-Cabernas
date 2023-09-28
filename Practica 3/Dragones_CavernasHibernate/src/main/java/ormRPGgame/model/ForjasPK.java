package ormRPGgame.model;

import javax.persistence.Column;
import javax.persistence.Id;
import java.io.Serializable;

public class ForjasPK implements Serializable {
    private String nombre;
    private String nombreCiudad;

    @Column(name = "nombre")
    @Id
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    @Column(name = "nombreCiudad")
    @Id
    public String getNombreCiudad() {
        return nombreCiudad;
    }

    public void setNombreCiudad(String nombreCiudad) {
        this.nombreCiudad = nombreCiudad;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ForjasPK forjasPK = (ForjasPK) o;

        if (nombre != null ? !nombre.equals(forjasPK.nombre) : forjasPK.nombre != null) return false;
        if (nombreCiudad != null ? !nombreCiudad.equals(forjasPK.nombreCiudad) : forjasPK.nombreCiudad != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = nombre != null ? nombre.hashCode() : 0;
        result = 31 * result + (nombreCiudad != null ? nombreCiudad.hashCode() : 0);
        return result;
    }
}
