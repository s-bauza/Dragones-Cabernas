package game.model;

public class Baculos {
    private int codigoBaculos;
    private String nombre;
    private int daño;
    private int peso;

    public int getCodigoBaculos() {
        return codigoBaculos;
    }

    public void setCodigoBaculos(int codigoBaculos) {
        this.codigoBaculos = codigoBaculos;
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

    public Baculos(int codigoBaculos, String nombre, int daño, int peso)
    {
        this.codigoBaculos = codigoBaculos;
        this.nombre = nombre;
        this.daño = daño;
        this.peso = peso;
    }
}
