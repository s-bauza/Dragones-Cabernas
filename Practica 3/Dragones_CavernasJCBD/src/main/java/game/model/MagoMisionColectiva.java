package game.model;

import java.sql.Date;

public class MagoMisionColectiva {
    private java.sql.Date fechaUnion;
    private java.sql.Date fechaSalida;
    private int idEscuadron;
    private String nombreMago;

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

    public String getNombreMago() {
        return nombreMago;
    }

    public void setNombreMago(String nombreMago) {
        this.nombreMago = nombreMago;
    }

    public MagoMisionColectiva(java.sql.Date fechaUnion, java.sql.Date fechaSalida, int idEscuadron, String nombreMago)
    {
        this.fechaUnion = fechaUnion;
        this.fechaSalida = fechaSalida;
        this.idEscuadron = idEscuadron;
        this.nombreMago = nombreMago;
    }
}
