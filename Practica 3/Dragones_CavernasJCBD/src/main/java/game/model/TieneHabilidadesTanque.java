package game.model;

public class TieneHabilidadesTanque {
    private String nombreTanque;
    private String nombreHabilidad;

    public String getNombreTanque() {
        return nombreTanque;
    }

    public void setNombreTanque(String nombreTanque) {
        this.nombreTanque = nombreTanque;
    }

    public String getNombreHabilidad() {
        return nombreHabilidad;
    }

    public void setNombreHabilidad(String nombreHabilidad) {
        this.nombreHabilidad = nombreHabilidad;
    }

    public TieneHabilidadesTanque(String nombreTanque, String nombreHabilidad)
    {
        this.nombreTanque = nombreTanque;
        this.nombreHabilidad = nombreHabilidad;
    }
}
