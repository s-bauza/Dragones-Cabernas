package main.java;

import game.model.Dragones;
import game.model.Espadas;
import game.model.Hachas;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class Main {
    // @TODO: Sustituya xxxx por los parámetros de su conexión

    private static final String DBSERVER = "localhost";

    private static final int DBPORT = 3306;

    private static final String DBNAME = "dragones&cavernas";

    private static final String DBUSER = "root";

    private static final String DBPASS = "root";

    private static Connection conn;



    public static void main(String[] args) throws Exception {

        Class.forName("com.mysql.cj.jdbc.Driver");

        String url = "jdbc:mysql://" + DBSERVER + ":" + DBPORT + "/" + DBNAME;
        conn = DriverManager.getConnection(url, DBUSER, DBPASS);

        // @TODO pruebe sus funcionesalmacenabaculo

        // Test1 insertar un nuevo dragon
            //nuevodragon("Viseryon"); // comprobar la tabla de dragones en la base de datos



        //Test2 lista de dragones derrotados por un escuadron
        /*
           List<Dragones> dragones = squadderrotadragones(1);
        if (dragones.size() == 0) {
            System.out.println("\nNo han derrotado a ningun dragon");
        } else {
            System.out.println("Dragones distintos derrotados por el escuadron 1:");
            for (Dragones dragon : dragones) {
                System.out.println(dragon.getNombre());
            }
        }
        */
        //Test3 lista de hachas que hayan sido fabricadas en la Forja de Tébez
        /*
        List<Hachas> hachas =mostrarhachas("Forja de Tébez");
        if (hachas.size() == 0) {
            System.out.println("\nNo ninguna hacha fabricada en la Forja de Tébez");
        } else {
            System.out.println("Hachas fabricadas en la Forja de Tébez:");
            for (Hachas hacha : hachas) {
                System.out.println(hacha.getNombre());
            }
        }
        */
        //Test4 lista de espadas que porta el guerrero Stanto
        /*
        List<Espadas> espadas =espadasportaguerrero("Stanto");
        if (espadas.size() == 0) {
            System.out.println("\nStanto no porta ninguna espada");
        } else
        {
            System.out.println("Espadas que porta Stanto:");
            for (Espadas espada : espadas) {
                System.out.println(espada.getNombre());
            }
        }
        */

        conn.close();
    }

    // @TODO resuelva las siguientes funciones...

    public static void nuevodragon(String nombre) throws SQLException {//public static void nuevodragon(String nombre)
        // @TODO: complete este método para que cree un nuevo dragón en la base de datos

        Dragones nombreDragon=new Dragones(null,0,null);

        PreparedStatement stmt = null;
        ResultSet rs = null;
        // Buscamos el ultimo dragon

        String query = " select * from dragones where desbloqueaDragon is null";
        stmt = conn.prepareStatement(query);
        rs = stmt.executeQuery(query);
        while (rs.next()){
            nombreDragon.setNombre(rs.getString(1));
            nombreDragon.setVida(rs.getInt(2));
            nombreDragon.setDesbloqueaDragon(rs.getString(3));
        }
        rs.close();

        // Insertamos el nuevo dragon

        String query1 = "insert into dragones(nombre,vida,desbloqueaDragon) values(?,?,?)";
        stmt = conn.prepareStatement(query1);
        stmt.setString(1,nombre);
        stmt.setInt(2,140000);
        stmt.setString(3,null);
        stmt.executeUpdate();

        // Actualizamos la tabla para que el ultimo dragon desbloque el nuevo dragon

        String query2 = "update dragones set desbloqueaDragon = ?  where nombre LIKE ? ";
        stmt = conn.prepareStatement(query2);
        stmt.setString(1, nombre);
        stmt.setString(2,nombreDragon.getNombre());
        stmt.executeUpdate();

    }

    public static List<Dragones> squadderrotadragones(int idsquad) throws SQLException {
        // @TODO: complete este método para que devuelva una lista de los dragones derrotados por el squad
        // Tenga en cuenta que la consulta a la base de datos le devolverá un ResultSet sobre el que deberá
        // ir iterando y creando un objeto dragon para cada uno de los dragones, y añadirlos a la lista
        PreparedStatement stmt = null;
        ResultSet rs = null;
        ArrayList<Dragones> lista = new ArrayList<>();
        String query = " select distinct dragones.* from dragones " +
                " inner join gana on gana.nombre = dragones.nombre" +
                " where gana.idEscuadron = ?";
        stmt = conn.prepareStatement(query);
        stmt.setInt(1,idsquad);
        rs = stmt.executeQuery();
        while (rs.next()){
            Dragones dragones = new Dragones(rs.getString(1),rs.getInt(2),rs.getString(3));
            lista.add(dragones);
        }
        rs.close();
        return lista;
    }

    public static List<Hachas> mostrarhachas(String nombreforja) throws SQLException {
        // @TODO: complete este método para que muestre por pantalla las hachas que pueden forjarse en "nombreforja"
        // Tenga en cuenta que la consulta a la base de datos le devolverá un ResultSet sobre el que deberá
        // ir iterando y creando un objeto con cada hacha disponible en esa forja, y añadirlos a la lista
        // Se modifica el enunciado para todas aquellas hachas que hayan sido fabricadas en la forja con "nombreforja"
        // Las armas no estan anclas a ninguna retriccion de lugar de fabricacion
        PreparedStatement stmt = null;
        ResultSet rs = null;
        ArrayList<Hachas> lista = new ArrayList<>();
        String query = "select distinct hachas.* from hachas " +
                "inner join fabrica_hacha on fabrica_hacha.codigoHacha = hachas.codigoHachas " +
                "where fabrica_hacha.nombreForja = ? ";
        stmt = conn.prepareStatement(query);
        stmt.setString(1,nombreforja);
        rs = stmt.executeQuery();
        while (rs.next()){
            Hachas hachas = new Hachas(rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getInt(4));
            lista.add(hachas);
        }
        rs.close();
        return lista;
    }

    public static List<Espadas> espadasportaguerrero(String nombreguerrero) throws SQLException {
        // @TODO: complete este método para que devuelva el nombre de la espada que porta el guerrero "nombreguerrero"
        // Se modifica el enunciado, ya que un guerrero puede tener equipado mas de una espada, deberra devolver una lista
        // de espadas que porte ese mismo guerrero
        PreparedStatement stmt = null;
        ResultSet rs = null;
        ArrayList<Espadas> lista = new ArrayList<>();
        String query = "select espadas.* from espadas " +
                "inner join porta_espada on porta_espada.codigoEspada = espadas.codigoEspadas " +
                "where porta_espada.nombreGuerrero = ?";
        stmt = conn.prepareStatement(query);
        stmt.setString(1,nombreguerrero);
        rs = stmt.executeQuery();
        while (rs.next()){
            Espadas espadas = new Espadas(rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getInt(4));
            lista.add(espadas);
        }
        rs.close();
        return lista;
    }

}
