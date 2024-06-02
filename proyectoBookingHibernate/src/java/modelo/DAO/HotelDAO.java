/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.DAO;

import java.util.List;
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
        Query q = session.createQuery("FROM Hotel");
        return q.list();
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
}
