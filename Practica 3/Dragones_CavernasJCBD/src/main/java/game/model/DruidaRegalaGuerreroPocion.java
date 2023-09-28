package game.model;

public class DruidaRegalaGuerreroPocion {

    private java.sql.Date fecha;
    private int idDruida;
    private String nombreGuerrero;

    public DruidaRegalaGuerreroPocion(java.sql.Date fecha, int idDruida, String nombreGuerrero)
    {
        this.fecha = fecha;
        this.idDruida = idDruida;
        this.nombreGuerrero = nombreGuerrero;
    }
}
