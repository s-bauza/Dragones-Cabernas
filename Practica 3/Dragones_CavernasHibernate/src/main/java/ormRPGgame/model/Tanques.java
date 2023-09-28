package ormRPGgame.model;

import javax.persistence.*;

@Entity
public class Tanques {
    private String nombre;
    private Integer jugadorId;
    private Integer dagaId;
    private Integer vida;
    private Integer nivel;
    private Integer oro;
    private Integer mana;
    private String apariencia;
    private Integer fuerza;
    private Jugadores jugadoresByJugadorId;
    private Dagas dagasByDagaId;

    @Id
    @Column(name = "nombre")
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    @Basic
    @Column(name = "jugadorId")
    public Integer getJugadorId() {
        return jugadorId;
    }

    public void setJugadorId(Integer jugadorId) {
        this.jugadorId = jugadorId;
    }

    @Basic
    @Column(name = "dagaId")
    public Integer getDagaId() {
        return dagaId;
    }

    public void setDagaId(Integer dagaId) {
        this.dagaId = dagaId;
    }

    @Basic
    @Column(name = "vida")
    public Integer getVida() {
        return vida;
    }

    public void setVida(Integer vida) {
        this.vida = vida;
    }

    @Basic
    @Column(name = "nivel")
    public Integer getNivel() {
        return nivel;
    }

    public void setNivel(Integer nivel) {
        this.nivel = nivel;
    }

    @Basic
    @Column(name = "oro")
    public Integer getOro() {
        return oro;
    }

    public void setOro(Integer oro) {
        this.oro = oro;
    }

    @Basic
    @Column(name = "mana")
    public Integer getMana() {
        return mana;
    }

    public void setMana(Integer mana) {
        this.mana = mana;
    }

    @Basic
    @Column(name = "apariencia")
    public String getApariencia() {
        return apariencia;
    }

    public void setApariencia(String apariencia) {
        this.apariencia = apariencia;
    }

    @Basic
    @Column(name = "fuerza")
    public Integer getFuerza() {
        return fuerza;
    }

    public void setFuerza(Integer fuerza) {
        this.fuerza = fuerza;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Tanques tanques = (Tanques) o;

        if (nombre != null ? !nombre.equals(tanques.nombre) : tanques.nombre != null) return false;
        if (jugadorId != null ? !jugadorId.equals(tanques.jugadorId) : tanques.jugadorId != null) return false;
        if (dagaId != null ? !dagaId.equals(tanques.dagaId) : tanques.dagaId != null) return false;
        if (vida != null ? !vida.equals(tanques.vida) : tanques.vida != null) return false;
        if (nivel != null ? !nivel.equals(tanques.nivel) : tanques.nivel != null) return false;
        if (oro != null ? !oro.equals(tanques.oro) : tanques.oro != null) return false;
        if (mana != null ? !mana.equals(tanques.mana) : tanques.mana != null) return false;
        if (apariencia != null ? !apariencia.equals(tanques.apariencia) : tanques.apariencia != null) return false;
        if (fuerza != null ? !fuerza.equals(tanques.fuerza) : tanques.fuerza != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = nombre != null ? nombre.hashCode() : 0;
        result = 31 * result + (jugadorId != null ? jugadorId.hashCode() : 0);
        result = 31 * result + (dagaId != null ? dagaId.hashCode() : 0);
        result = 31 * result + (vida != null ? vida.hashCode() : 0);
        result = 31 * result + (nivel != null ? nivel.hashCode() : 0);
        result = 31 * result + (oro != null ? oro.hashCode() : 0);
        result = 31 * result + (mana != null ? mana.hashCode() : 0);
        result = 31 * result + (apariencia != null ? apariencia.hashCode() : 0);
        result = 31 * result + (fuerza != null ? fuerza.hashCode() : 0);
        return result;
    }

    @ManyToOne
    @JoinColumn(name = "jugadorId", referencedColumnName = "jugadorId", insertable = false, updatable = false)
    public Jugadores getJugadoresByJugadorId() {
        return jugadoresByJugadorId;
    }

    public void setJugadoresByJugadorId(Jugadores jugadoresByJugadorId) {
        this.jugadoresByJugadorId = jugadoresByJugadorId;
    }

    @ManyToOne
    @JoinColumn(name = "dagaId", referencedColumnName = "dagaId", insertable = false, updatable = false)
    public Dagas getDagasByDagaId() {
        return dagasByDagaId;
    }

    public void setDagasByDagaId(Dagas dagasByDagaId) {
        this.dagasByDagaId = dagasByDagaId;
    }
}
