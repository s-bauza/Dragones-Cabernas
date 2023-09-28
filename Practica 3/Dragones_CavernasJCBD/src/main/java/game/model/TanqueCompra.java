package game.model;

import java.sql.Date;

public class TanqueCompra {
    private int dagaId;
    private String nombreTanque;
    private String nombreTienda;
    private String nombreCiudad;
    private java.sql.Date fecha;

    public int getDagaId() {
        return dagaId;
    }

    public void setDagaId(int dagaId) {
        this.dagaId = dagaId;
    }

    public String getNombreTanque() {
        return nombreTanque;
    }

    public void setNombreTanque(String nombreTanque) {
        this.nombreTanque = nombreTanque;
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

    public TanqueCompra(int dagaId, String nombreTanque, String nombreTienda, String nombreCiudad, java.sql.Date fecha)
    {
        this.dagaId = dagaId;
        this.nombreTanque = nombreTanque;
        this.nombreTienda = nombreTienda;
        this.nombreCiudad = nombreCiudad;
        this.fecha = fecha;
    }
}
