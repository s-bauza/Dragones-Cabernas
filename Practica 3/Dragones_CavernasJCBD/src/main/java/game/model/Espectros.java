package game.model;

public class Espectros {
    private int codigo;
    private String nombre;
    private int vida;

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getVida() {
        return vida;
    }

    public void setVida(int vida) {
        this.vida = vida;
    }

    public Espectros(int codigo, String nombre, int vida)
    {
        this.codigo = codigo;
        this.nombre = nombre;
        this.vida = vida;
    }
}
