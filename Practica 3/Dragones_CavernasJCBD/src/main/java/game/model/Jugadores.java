package game.model;
public class Jugadores
{
    private int jugadorId;
    public int getjugadorId()
    {
        return this.jugadorId;
    }
    public void setjugadorId(int value)
    {
        this.jugadorId = value;
    }

    private String nombre;
    public String getnombre()
    {
        return this.nombre;
    }
    public void setnombre(String value)
    {
        this.nombre = value;
    }

    public Jugadores(int jugadorId, String nombre)
    {
        this.jugadorId = jugadorId;
        this.nombre = nombre;
    }
}