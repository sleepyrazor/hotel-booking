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
        tx.commit();
        return hoteles;
    }
    
    public List<Habitacion> listarHabitaciones(int idHotel) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        List<Habitacion> habitaciones = session.createQuery("FROM Habitacion WHERE idHotel='"+ idHotel +"'").list();
        tx.commit();
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
    
    public Habitacion getHabitacion(int idHabitacion){
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Query q = session.createQuery("FROM Habitacion WHERE idHabitacion ='"+ idHabitacion +"'");
        Habitacion c = (Habitacion) q.uniqueResult();
        tx.commit();
        return c;
    }
    
    public void actualizarHabitacion(Habitacion habitacion){
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        session.update(habitacion);
        tx.commit();
    }
    
    public void eliminarHabitacion(Habitacion habitacion){
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        session.delete(habitacion);
        tx.commit();
    }
    
    public void eliminarHotel(Hotel hotel){
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Query q = session.createQuery("DELETE FROM Habitacion WHERE idHotel ='"+ hotel.getIdHotel() +"'");
        q.executeUpdate();
        session.delete(hotel);
        tx.commit();
    }
    
    public void actualizarHotel(Hotel hotel){
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        session.update(hotel);
        tx.commit();
    }
}
