/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.DAO;

import java.util.List;
import modelo.Habitacion;
import modelo.HibernateUtil;
import modelo.Hotel;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author agarc
 */
public class HotelDAO {

    private Session session;

    public HotelDAO() {
    }

    public HotelDAO(Session session) {
        this.session = new Configuration().configure().buildSessionFactory().openSession();
    }

    public List<Hotel> listarHoteles() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        List<Hotel> hoteles = session.createQuery("FROM Hotel").list();
        return hoteles;
    }
    
    public List<Habitacion> listarHabitaciones(int idHotel) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        List<Habitacion> habitaciones = session.createQuery("FROM Habitacion WHERE idHotel='"+ idHotel +"'").list();
        return habitaciones;
    }
    

    public void guardarHotel(Hotel hotel) {
        Session session = null;
        Transaction transaction = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            transaction = session.beginTransaction();
            session.save(hotel); // Guardar el hotel en la base de datos
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            if (session != null) {
                session.close();
            }
        }
    }
    
    public void guardarHabitacion(Habitacion habitacion) {
        Session session = null;
        Transaction transaction = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            transaction = session.beginTransaction();
            session.save(habitacion); // Guardar el hotel en la base de datos
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            if (session != null) {
                session.close();
            }
        }
    }
    
    
    public Hotel getHotel(int idHotel){
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Query q = session.createQuery("FROM Hotel WHERE idHotel ='"+ idHotel +"'");
        Hotel c = (Hotel) q.uniqueResult();
        tx.commit();
        return c;

    }
}
