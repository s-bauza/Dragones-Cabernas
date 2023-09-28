package game.model;

public class Pociones {
    private int codigoPocion;
    private int mana;
    private int vida;

    public int getCodigoPocion() {
        return codigoPocion;
    }

    public void setCodigoPocion(int codigoPocion) {
        this.codigoPocion = codigoPocion;
    }

    public int getMana() {
        return mana;
    }

    public void setMana(int mana) {
        this.mana = mana;
    }

    public int getVida() {
        return vida;
    }

    public void setVida(int vida) {
        this.vida = vida;
    }

    public Pociones(int codigoPocion, int mana, int vida)
    {
        this.codigoPocion = codigoPocion;
        this.mana = mana;
        this.vida = vida;
    }
}
