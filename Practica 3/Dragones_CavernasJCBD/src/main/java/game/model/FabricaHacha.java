package game.model;

import java.sql.Date;

public class FabricaHacha {
    private int codigoHacha;
    private String nombreTanque;
    private String nombreForja;
    private String nombreCiudad;
    private java.sql.Date fecha;

    public int getCodigoHacha() {
        return codigoHacha;
    }

    public void setCodigoHacha(int codigoHacha) {
        this.codigoHacha = codigoHacha;
    }

    public String getNombreTanque() {
        return nombreTanque;
    }

    public void setNombreTanque(String nombreTanque) {
        this.nombreTanque = nombreTanque;
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

    public FabricaHacha(int codigoHacha, String nombreTanque, String nombreForja, String nombreCiudad, java.sql.Date fecha)
    {
        this.codigoHacha = codigoHacha;
        this.nombreTanque = nombreTanque;
        this.nombreForja = nombreForja;
        this.nombreCiudad = nombreCiudad;
        this.fecha = fecha;
    }
}
