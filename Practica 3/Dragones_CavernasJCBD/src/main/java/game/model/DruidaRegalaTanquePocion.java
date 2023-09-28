package game.model;

import java.sql.Date;

public class DruidaRegalaTanquePocion {
    private java.sql.Date fecha;
    private int idDruida;
    private String nombreTanque;

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public int getIdDruida() {
        return idDruida;
    }

    public void setIdDruida(int idDruida) {
        this.idDruida = idDruida;
    }

    public String getNombreTanque() {
        return nombreTanque;
    }

    public void setNombreTanque(String nombreTanque) {
        this.nombreTanque = nombreTanque;
    }

    public DruidaRegalaTanquePocion(java.sql.Date fecha, int idDruida, String nombreTanque)
    {
        this.fecha = fecha;
        this.idDruida = idDruida;
        this.nombreTanque = nombreTanque;
    }
}
