package game.model;

public class TieneHabilidadesGuerrero {
    private String nombreGuerrero;
    private String nombreHabilidad;

    public String getNombreGuerrero() {
        return nombreGuerrero;
    }

    public void setNombreGuerrero(String nombreGuerrero) {
        this.nombreGuerrero = nombreGuerrero;
    }

    public String getNombreHabilidad() {
        return nombreHabilidad;
    }

    public void setNombreHabilidad(String nombreHabilidad) {
        this.nombreHabilidad = nombreHabilidad;
    }

    public TieneHabilidadesGuerrero(String nombreGuerrero, String nombreHabilidad)
    {
        this.nombreGuerrero = nombreGuerrero;
        this.nombreHabilidad = nombreHabilidad;
    }
}
