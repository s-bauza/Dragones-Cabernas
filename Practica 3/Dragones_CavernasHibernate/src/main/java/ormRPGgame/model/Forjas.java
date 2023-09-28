package ormRPGgame.model;

import javax.persistence.*;

@Entity
@IdClass(ForjasPK.class)
public class Forjas {
    private String nombre;
    private String nombreCiudad;
    private Ciudades ciudadesByNombreCiudad;

    @Id
    @Column(name = "nombre")
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    @Id
    @Column(name = "nombreCiudad")
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

        Forjas forjas = (Forjas) o;

        if (nombre != null ? !nombre.equals(forjas.nombre) : forjas.nombre != null) return false;
        if (nombreCiudad != null ? !nombreCiudad.equals(forjas.nombreCiudad) : forjas.nombreCiudad != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = nombre != null ? nombre.hashCode() : 0;
        result = 31 * result + (nombreCiudad != null ? nombreCiudad.hashCode() : 0);
        return result;
    }

    @ManyToOne
    @JoinColumn(name = "nombreCiudad", referencedColumnName = "nombre", nullable = false, insertable = false, updatable = false)
    public Ciudades getCiudadesByNombreCiudad() {
        return ciudadesByNombreCiudad;
    }

    public void setCiudadesByNombreCiudad(Ciudades ciudadesByNombreCiudad) {
        this.ciudadesByNombreCiudad = ciudadesByNombreCiudad;
    }
}
