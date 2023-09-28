package game.model;

import java.sql.Date;

public class TanqueMisionColectiva {
    private java.sql.Date fechaUnion;
    private java.sql.Date fechaSalida;
    private int idEscuadron;
    private String nombreTanque;

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

    public String getNombreTanque() {
        return nombreTanque;
    }

    public void setNombreTanque(String nombreTanque) {
        this.nombreTanque = nombreTanque;
    }

    public TanqueMisionColectiva(java.sql.Date fechaUnion, java.sql.Date fechaSalida, int idEscuadron, String nombreTanque)
    {
        this.fechaUnion = fechaUnion;
        this.fechaSalida = fechaSalida;
        this.idEscuadron = idEscuadron;
        this.nombreTanque = nombreTanque;
    }
}
