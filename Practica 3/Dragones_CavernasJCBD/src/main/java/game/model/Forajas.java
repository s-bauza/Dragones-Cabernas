package game.model;

public class Forajas {
    private String nombre;
    private String nombreCiudad;

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getNombreCiudad() {
        return nombreCiudad;
    }

    public void setNombreCiudad(String nombreCiudad) {
        this.nombreCiudad = nombreCiudad;
    }

    public Forajas(String nombre, String nombreCiudad)
    {
        this.nombre = nombre;
        this.nombreCiudad = nombreCiudad;
    }
}
