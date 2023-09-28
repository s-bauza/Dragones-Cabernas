package game.model;

public class TieneHabilidadesMago {
    private String nombreMago;
    private String nombreHabilidad;

    public String getNombreMago() {
        return nombreMago;
    }

    public void setNombreMago(String nombreMago) {
        this.nombreMago = nombreMago;
    }

    public String getNombreHabilidad() {
        return nombreHabilidad;
    }

    public void setNombreHabilidad(String nombreHabilidad) {
        this.nombreHabilidad = nombreHabilidad;
    }

    public TieneHabilidadesMago(String nombreMago, String nombreHabilidad)
    {
        this.nombreMago = nombreMago;
        this.nombreHabilidad = nombreHabilidad;
    }
}
