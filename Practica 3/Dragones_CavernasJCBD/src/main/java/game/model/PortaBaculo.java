package game.model;

import java.sql.Date;

public class PortaBaculo {
    private int codigoBaculo;
    private String nombreMago;
    private java.sql.Date fecha;

    public int getCodigoBaculo() {
        return codigoBaculo;
    }

    public void setCodigoBaculo(int codigoBaculo) {
        this.codigoBaculo = codigoBaculo;
    }

    public String getNombreMago() {
        return nombreMago;
    }

    public void setNombreMago(String nombreMago) {
        this.nombreMago = nombreMago;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public PortaBaculo(int codigoBaculo, String nombreMago, java.sql.Date fecha)
    {
        this.codigoBaculo = codigoBaculo;
        this.nombreMago = nombreMago;
        this.fecha = fecha;
    }
}
