package game.model;

import java.sql.Date;

public class DruidaRegalaMagoPocion {
    private java.sql.Date fecha;
    private int idDruida;
    private String nombreMago;

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

    public String getNombreMago() {
        return nombreMago;
    }

    public void setNombreMago(String nombreMago) {
        this.nombreMago = nombreMago;
    }

    public DruidaRegalaMagoPocion(java.sql.Date fecha, int idDruida, String nombreMago)
    {
        this.fecha = fecha;
        this.idDruida = idDruida;
        this.nombreMago = nombreMago;
    }
}
