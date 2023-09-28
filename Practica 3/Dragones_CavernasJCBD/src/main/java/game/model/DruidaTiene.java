package game.model;

public class DruidaTiene {
    private int idDruida;
    private int codigoPocion;

    public int getIdDruida() {
        return idDruida;
    }

    public void setIdDruida(int idDruida) {
        this.idDruida = idDruida;
    }

    public int getCodigoPocion() {
        return codigoPocion;
    }

    public void setCodigoPocion(int codigoPocion) {
        this.codigoPocion = codigoPocion;
    }

    public DruidaTiene(int idDruida, int codigoPocion)
    {
        this.idDruida = idDruida;
        this.codigoPocion = codigoPocion;
    }
}
