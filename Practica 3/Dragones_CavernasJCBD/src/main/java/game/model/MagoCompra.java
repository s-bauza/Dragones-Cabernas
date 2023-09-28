package game.model;

import java.sql.Date;

public class MagoCompra {
    private int dagaId;
    private String nombreMago;
    private String nombreTienda;
    private String nombreCiudad;
    private java.sql.Date fecha;

    public int getDagaId() {
        return dagaId;
    }

    public void setDagaId(int dagaId) {
        this.dagaId = dagaId;
    }

    public String getNombreMago() {
        return nombreMago;
    }

    public void setNombreMago(String nombreMago) {
        this.nombreMago = nombreMago;
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

    public MagoCompra(int dagaId, String nombreMago, String nombreTienda, String nombreCiudad, java.sql.Date fecha)
    {
        this.dagaId = dagaId;
        this.nombreMago = nombreMago;
        this.nombreTienda = nombreTienda;
        this.nombreCiudad = nombreCiudad;
        this.fecha = fecha;
    }
}
