package ormRPGgame;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import ormRPGgame.model.Dagas;
import ormRPGgame.model.Magos;

import java.sql.SQLException;


/**
 * Controlador de la aplicación. Por favor, revise detenidamente la clase y complete las partes omitidas
 * atendiendo a los comentarios indicados mediante @TODO
 */
public class Controller {

    private Session session;

    /**
     * Crea un nuevo controlador
     */
    public Controller () {

        StandardServiceRegistry registry = new StandardServiceRegistryBuilder()
                .configure()
                .build();

        SessionFactory sessionFactory = new MetadataSources(registry)
                .buildMetadata()
                .buildSessionFactory();

        this.session = sessionFactory.openSession();
    }

    /*
     * Crea un nuevo mago
     * param nickname nombre de usuario
     * @return el nuevo usuario creado
     * @throws SQLException
     */
    public Dagas createDaga(String nombre) throws SQLException {
        // @TODO complete este metodo para crear de forma presistente una daga
        Dagas daga = new Dagas(nombre);
        session.beginTransaction();
        session.save(daga);
        session.getTransaction().commit();
        return daga;

    }

    public Magos createMago(String magician, Dagas daga) throws SQLException {
        // @TODO complete este metodo para crear de forma presistente un mago
        Magos mago = new Magos(magician,1,daga,100,1,500,100,"M",4);
        mago.setDagaId(daga.getDagaId());
        session.beginTransaction();
        session.save(mago);
        session.getTransaction().commit();
        return mago;
    }



}
