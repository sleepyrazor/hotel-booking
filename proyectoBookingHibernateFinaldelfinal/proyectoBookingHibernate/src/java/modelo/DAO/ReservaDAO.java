/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.DAO;

import java.util.List;
import modelo.Cliente;
import modelo.HibernateUtil;
import modelo.Hotel;
import modelo.Reserva;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author Manuel Revuelta
 */
public class ReservaDAO {

    private Session session;

    public ReservaDAO() {
    }
    
    
    
    public ReservaDAO(Session session) {
        this.session = new Configuration().configure().buildSessionFactory().openSession();
    }

    // Método para registrar un nueva reserva
    public void registrarReserva(Reserva reserva) {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        session.save(reserva);
        tx.commit();
    }
    
    public List<Reserva> listarReservasCliente(String idCliente) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        List<Reserva> reservas = session.createQuery("FROM Reserva WHERE idCliente = '"+ idCliente +"'").list();
        tx.commit();
        return reservas;
    }
    
    public List<Reserva> listarReservas() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        List<Reserva> reservas = session.createQuery("FROM Reserva").list();
        tx.commit();
        return reservas;
    }
}
