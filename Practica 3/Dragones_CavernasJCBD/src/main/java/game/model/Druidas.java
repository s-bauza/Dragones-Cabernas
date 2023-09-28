package game.model;

public class Druidas {
    private int idDruida;
    private String nombre;

    public int getIdDruida() {
        return idDruida;
    }

    public void setIdDruida(int idDruida) {
        this.idDruida = idDruida;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Druidas(int idDruida, String nombre)
    {
        this.idDruida = idDruida;
        this.nombre = nombre;
    }
}
