package game.model;

import java.sql.Date;

public class TanqueAcaba {
    private int codigo;
    private String nombreTanque;
    private java.sql.Date fecha;
    private int oro;

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
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

    public int getOro() {
        return oro;
    }

    public void setOro(int oro) {
        this.oro = oro;
    }

    public TanqueAcaba(int codigo, String nombreTanque, java.sql.Date fecha, int oro)
    {
        this.codigo = codigo;
        this.nombreTanque = nombreTanque;
        this.fecha = fecha;
        this.oro = oro;
    }
}
