package game.model;

import java.sql.Date;

public class Gana {

    private java.sql.Date fechaDragon;
    private int idEscuadron;
    private String nombre;

    public Date getFechaDragon() {
        return fechaDragon;
    }

    public void setFechaDragon(Date fechaDragon) {
        this.fechaDragon = fechaDragon;
    }

    public int getIdEscuadron() {
        return idEscuadron;
    }

    public void setIdEscuadron(int idEscuadron) {
        this.idEscuadron = idEscuadron;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Gana(java.sql.Date fechaDragon, int idEscuadron, String nombre)
    {
        this.fechaDragon = fechaDragon;
        this.idEscuadron = idEscuadron;
        this.nombre = nombre;
    }
}
