package game.model;

public class Espadas {
    private int codigoEspadas;
    private String nombre;
    private int daño;
    private int peso;

    public int getCodigoEspadas() {
        return codigoEspadas;
    }

    public void setCodigoEspadas(int codigoEspadas) {
        this.codigoEspadas = codigoEspadas;
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

    public Espadas(int codigoEspadas, String nombre, int daño, int peso)
    {
        this.codigoEspadas = codigoEspadas;
        this.nombre = nombre;
        this.daño = daño;
        this.peso = peso;
    }
}
