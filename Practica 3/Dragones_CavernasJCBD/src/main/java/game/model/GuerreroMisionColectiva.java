package game.model;

import java.sql.Date;

public class GuerreroMisionColectiva {
    private java.sql.Date fechaUnion;
    private java.sql.Date fechaSalida;
    private int idEscuadron;
    private String nombreGuerrero;

    public Date getFechaUnion() {
        return fechaUnion;
    }

    public void setFechaUnion(Date fechaUnion) {
        this.fechaUnion = fechaUnion;
    }

    public Date getFechaSalida() {
        return fechaSalida;
    }

    public void setFechaSalida(Date fechaSalida) {
        this.fechaSalida = fechaSalida;
    }

    public int getIdEscuadron() {
        return idEscuadron;
    }

    public void setIdEscuadron(int idEscuadron) {
        this.idEscuadron = idEscuadron;
    }

    public String getNombreGuerrero() {
        return nombreGuerrero;
    }

    public void setNombreGuerrero(String nombreGuerrero) {
        this.nombreGuerrero = nombreGuerrero;
    }

    public GuerreroMisionColectiva(java.sql.Date fechaUnion, java.sql.Date fechaSalida, int idEscuadron, String nombreGuerrero)
    {
        this.fechaUnion = fechaUnion;
        this.fechaSalida = fechaSalida;
        this.idEscuadron = idEscuadron;
        this.nombreGuerrero = nombreGuerrero;
    }
}
