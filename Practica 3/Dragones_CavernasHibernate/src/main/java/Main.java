import ormRPGgame.Controller;
import ormRPGgame.model.Dagas;
import ormRPGgame.model.Magos;

import java.sql.SQLException;

public class Main {

    public static void main (String [] args) {
        try {
            Controller controlador= new Controller();
            Dagas daga = controlador.createDaga("Daga De Madera");
            Magos mago = controlador.createMago("Ryze",daga);
            //@TODO añada las llamadas a las funciones de la clase Controller.java necesarias
            //para la creación de la daga y el mago.
            if(daga!=null && mago!=null)
                System.out.println("Se ha creado el mago "+mago.getNombre()+" de nivel 1 con la daga "+daga.getNombre());
        } catch(SQLException e) {
            System.err.println("Se ha producido un error en la conexión con la base de datos");
            e.printStackTrace();
        }
    }
}
