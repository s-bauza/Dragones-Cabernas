package game.model;

import java.sql.Date;

public class GuerreroCompra {
    private int dagaId;
    private String nombreGuerrero;
    private String nombreTienda;
    private String nombreCiudad;
    private java.sql.Date fecha;

    public int getDagaId() {
        return dagaId;
    }

    public void setDagaId(int dagaId) {
        this.dagaId = dagaId;
    }

    public String getNombreGuerrero() {
        return nombreGuerrero;
    }

    public void setNombreGuerrero(String nombreGuerrero) {
        this.nombreGuerrero = nombreGuerrero;
    }

    public String getNombreTienda() {
        return nombreTienda;
    }

    public void setNombreTienda(String nombreTienda) {
        this.nombreTienda = nombreTienda;
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

    public GuerreroCompra(int dagaId, String nombreGuerrero, String nombreTienda, String nombreCiudad, java.sql.Date fecha)
    {
        this.dagaId = dagaId;
        this.nombreGuerrero = nombreGuerrero;
        this.nombreTienda = nombreTienda;
        this.nombreCiudad = nombreCiudad;
        this.fecha = fecha;
    }
}
