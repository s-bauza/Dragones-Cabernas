package ormRPGgame.model;

import javax.persistence.*;
import java.util.Set;


@Entity @Table(name="dragones")
public class Dragones {

    @Id
    private String nombre;
    @Column(name = "nombre")
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    @Basic
    @Column(name = "vida")
    private Integer vida;
    public Integer getVida() {
        return vida;
    }

    public void setVida(Integer vida) {
        this.vida = vida;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Dragones dragones = (Dragones) o;

        if (nombre != null ? !nombre.equals(dragones.nombre) : dragones.nombre != null) return false;
        if (vida != null ? !vida.equals(dragones.vida) : dragones.vida != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = nombre != null ? nombre.hashCode() : 0;
        result = 31 * result + (vida != null ? vida.hashCode() : 0);
        return result;
    }

    @ManyToOne
    @JoinColumn(name = "desbloqueaDragon", referencedColumnName = "nombre")
    private Dragones dragonesByDesbloqueaDragon;
    public Dragones getDragonesByDesbloqueaDragon() {
        return dragonesByDesbloqueaDragon;
    }

    public void setDragonesByDesbloqueaDragon(Dragones dragonesByDesbloqueaDragon) {
        this.dragonesByDesbloqueaDragon = dragonesByDesbloqueaDragon;
    }

    @ManyToMany()
    @JoinTable(name="gana")
    private Set<Escuadrones> idEscuadron;


}
