package ormRPGgame.model;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Espectros {
    private Integer codigo;
    private String nombre;
    private Integer vida;

    @Id
    @Column(name = "codigo")
    public Integer getCodigo() {
        return codigo;
    }

    public void setCodigo(Integer codigo) {
        this.codigo = codigo;
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
    @Column(name = "vida")
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

        Espectros espectros = (Espectros) o;

        if (codigo != null ? !codigo.equals(espectros.codigo) : espectros.codigo != null) return false;
        if (nombre != null ? !nombre.equals(espectros.nombre) : espectros.nombre != null) return false;
        if (vida != null ? !vida.equals(espectros.vida) : espectros.vida != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = codigo != null ? codigo.hashCode() : 0;
        result = 31 * result + (nombre != null ? nombre.hashCode() : 0);
        result = 31 * result + (vida != null ? vida.hashCode() : 0);
        return result;
    }
}
