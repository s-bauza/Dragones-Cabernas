package game.model;

import java.sql.Date;

public class GuerreroExtermina {
    private int codigo;
    private String nombreGuerrero;
    private java.sql.Date fecha;
    private int oro;

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNombreGuerrero() {
        return nombreGuerrero;
    }

    public void setNombreGuerrero(String nombreGuerrero) {
        this.nombreGuerrero = nombreGuerrero;
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

    public GuerreroExtermina(int codigo, String nombreGuerrero, java.sql.Date fecha, int oro)
    {
        this.codigo = codigo;
        this.nombreGuerrero = nombreGuerrero;
        this.fecha = fecha;
        this.oro = oro;
    }
}
