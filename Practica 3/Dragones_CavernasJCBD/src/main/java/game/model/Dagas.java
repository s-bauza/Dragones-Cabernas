package game.model;

public class Dagas {
    private int dagaId;
    private String nombre;

    public int getDagaId() {
        return dagaId;
    }

    public void setDagaId(int dagaId) {
        this.dagaId = dagaId;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Dagas(int dagaId, String nombre)
    {
        this.dagaId = dagaId;
        this.nombre = nombre;
    }
}
