package game.model;

import java.sql.Date;

public class MagoExtermina {
    private int codigo;
    private String nombreMago;
    private java.sql.Date fecha;
    private int oro;

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
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

    public int getOro() {
        return oro;
    }

    public void setOro(int oro) {
        this.oro = oro;
    }

    public MagoExtermina(int codigo, String nombreMago, java.sql.Date fecha, int oro)
    {
        this.codigo = codigo;
        this.nombreMago = nombreMago;
        this.fecha = fecha;
        this.oro = oro;
    }
}
