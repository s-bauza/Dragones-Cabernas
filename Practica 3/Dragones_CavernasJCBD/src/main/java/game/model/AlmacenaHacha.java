package game.model;

import java.sql.Date;

public class AlmacenaHacha {
    private int codigoHachas;
    private String nombreTanque;
    private java.sql.Date fecha;

    public int getCodigoHachas() {
        return codigoHachas;
    }

    public void setCodigoHachas(int codigoHachas) {
        this.codigoHachas = codigoHachas;
    }

    public String getNombreTanque() {
        return nombreTanque;
    }

    public void setNombreTanque(String nombreTanque) {
        this.nombreTanque = nombreTanque;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public AlmacenaHacha(int codigoHachas, String nombreTanque, java.sql.Date fecha)
    {
        this.codigoHachas = codigoHachas;
        this.nombreTanque = nombreTanque;
        this.fecha = fecha;
    }
}
