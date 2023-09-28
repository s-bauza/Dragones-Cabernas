package game.model;

public class Magos
{
    private String nombre;
    public String getnombre()
    {
        return this.nombre;
    }
    public void setnombre(String value)
    {
        this.nombre = value;
    }

    private int jugadorId;
    public int getjugadorId()
    {
        return this.jugadorId;
    }
    public void setjugadorId(int value)
    {
        this.jugadorId = value;
    }

    private int dagaId;
    public int getdagaId()
    {
        return this.dagaId;
    }
    public void setdagaId(int value)
    {
        this.dagaId = value;
    }

    private int vida;
    public int getvida()
    {
        return this.vida;
    }
    public void setvida(int value)
    {
        this.vida = value;
    }

    private int nivel;
    public int getnivel()
    {
        return this.nivel;
    }
    public void setnivel(int value)
    {
        this.nivel = value;
    }

    private int oro;
    public int getoro()
    {
        return this.oro;
    }
    public void setoro(int value)
    {
        this.oro = value;
    }

    private int mana;
    public int getmana()
    {
        return this.mana;
    }
    public void setmana(int value)
    {
        this.mana = value;
    }

    private String apariencia;
    public String getapariencia()
    {
        return this.apariencia;
    }
    public void setapariencia(String value)
    {
        this.apariencia = value;
    }

    private int fuerza;
    public int getfuerza()
    {
        return this.fuerza;
    }
    public void setfuerza(int value)
    {
        this.fuerza = value;
    }


    public Magos(String nombre, int jugadorId, int dagaId, int vida, int nivel, int oro, int mana, String apariencia, int fuerza)
    {
        this.nombre = nombre;
        this.jugadorId = jugadorId;
        this.dagaId = dagaId;
        this.vida = vida;
        this.nivel = nivel;
        this.oro = oro;
        this.mana = mana;
        this.apariencia = apariencia;
        this.fuerza = fuerza;
    }
}
