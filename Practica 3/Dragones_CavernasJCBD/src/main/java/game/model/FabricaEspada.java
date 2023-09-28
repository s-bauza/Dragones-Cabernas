package game.model;

import java.sql.Date;

public class FabricaEspada {
    private int codigoEspada;
    private String nombreGuerrero;
    private String nombreForja;
    private String nombreCiudad;
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

    public String getNombreForja() {
        return nombreForja;
    }

    public void setNombreForja(String nombreForja) {
        this.nombreForja = nombreForja;
    }

    public String getNombreCiudad() {
        return nombreCiudad;
    }

    public void setNombreCiudad(String nombreCiudad) {
        this.nombreCiudad = nombreCiudad;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public FabricaEspada(int codigoEspada, String nombreGuerrero, String nombreForja, String nombreCiudad, java.sql.Date fecha)
    {
        this.codigoEspada = codigoEspada;
        this.nombreGuerrero = nombreGuerrero;
        this.nombreForja = nombreForja;
        this.nombreCiudad = nombreCiudad;
        this.fecha = fecha;
    }
}
