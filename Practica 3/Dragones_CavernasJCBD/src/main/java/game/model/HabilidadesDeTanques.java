package game.model;

public class HabilidadesDeTanques {
    private String nombre;
    private String descripcion;

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public HabilidadesDeTanques(String nombre, String descripcion)
    {
        this.nombre = nombre;
        this.descripcion = descripcion;
    }
}
