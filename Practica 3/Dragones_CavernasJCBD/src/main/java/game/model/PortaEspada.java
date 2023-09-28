package game.model;

import java.sql.Date;

public class PortaEspada {
    private int codigoEspada;
    private String nombreGuerrero;
    private java.sql.Date fecha;

    public int getCodigoEspada() {
        return codigoEspada;
    }

    public void setCodigoEspada(int codigoEspada) {
        this.codigoEspada = codigoEspada;
    }

    public String getNombreGuerrero() {
        return nombreGuerrero;
    }

    public void setNombreGuerrero(String nombreGuerrero) {
        this.nombreGuerrero = nombreGuerrero;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public PortaEspada(int codigoEspada, String nombreGuerrero, java.sql.Date fecha)
    {
        this.codigoEspada = codigoEspada;
        this.nombreGuerrero = nombreGuerrero;
        this.fecha = fecha;
    }
}
