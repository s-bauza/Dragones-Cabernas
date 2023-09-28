package game.model;

public class Dragones {
    private String nombre;
    private int vida;
    private String desbloqueaDragon;

        public String getNombre() {
            return nombre;
        }

        public int getVida() {
            return vida;
        }

        public String getDesbloqueaDragon() {
            return desbloqueaDragon;
        }

        public void setNombre(String nombre) {
            this.nombre = nombre;
        }

        public void setVida(int vida) {
            this.vida = vida;
        }

        public void setDesbloqueaDragon(String desbloqueaDragon) {
            this.desbloqueaDragon = desbloqueaDragon;
        }

        public Dragones(String nombre, int vida, String desbloqueaDragon)
        {
            this.nombre = nombre;
            this.vida = vida;
            this.desbloqueaDragon = desbloqueaDragon;
        }
}
