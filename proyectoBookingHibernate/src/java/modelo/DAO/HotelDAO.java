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
}
