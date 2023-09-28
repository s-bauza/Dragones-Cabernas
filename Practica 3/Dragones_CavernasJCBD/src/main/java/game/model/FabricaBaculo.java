package game.model;

import java.sql.Date;

public class FabricaBaculo {
    private int codigoBaculo;
    private String nombreMago;
    private String nombreForja;
    private String nombreCiudad;
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

    public FabricaBaculo(int codigoBaculo, String nombreMago, String nombreForja, String nombreCiudad, java.sql.Date fecha)
    {
        this.codigoBaculo = codigoBaculo;
        this.nombreMago = nombreMago;
        this.nombreForja = nombreForja;
        this.nombreCiudad = nombreCiudad;
        this.fecha = fecha;
    }
}
