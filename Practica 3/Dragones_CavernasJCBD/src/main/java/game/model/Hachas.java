package game.model;

public class Hachas {
    private int codigoHachas;
    private String nombre;
    private int daño;
    private int peso;

    public int getCodigoHachas() {
        return codigoHachas;
    }

    public void setCodigoHachas(int codigoHachas) {
        this.codigoHachas = codigoHachas;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getDaño() {
        return daño;
    }

    public void setDaño(int daño) {
        this.daño = daño;
    }

    public int getPeso() {
        return peso;
    }

    public void setPeso(int peso) {
        this.peso = peso;
    }

    public Hachas(int codigoHachas, String nombre, int daño, int peso)
    {
        this.codigoHachas = codigoHachas;
        this.nombre = nombre;
        this.daño = daño;
        this.peso = peso;
    }
}
