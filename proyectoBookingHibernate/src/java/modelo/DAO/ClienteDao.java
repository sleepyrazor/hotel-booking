/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.DAO;

import org.hibernate.Session;
import org.hibernate.Transaction;
import java.util.List;
import modelo.Cliente;
import modelo.HibernateUtil;
import modelo.Rol;
import org.hibernate.cfg.Configuration;
import org.hibernate.Query;

/**
 *
 * @author agarc
 */
public class ClienteDao {

    private Session session;

    public ClienteDao() {

    }

    public ClienteDao(Session session) {
        this.session = new Configuration().configure().buildSessionFactory().openSession();
    }

    public Cliente comprobarLogin(String username, String password) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Query q = session.createQuery("FROM Cliente c JOIN FETCH c.rol WHERE c.nombre = :username AND c.contrasena = :password");
        q.setParameter("username", username);
        q.setParameter("password", password);
        Cliente c = (Cliente) q.uniqueResult();
        tx.commit();
        return c;
    }

    // Método para registrar un nuevo usuario
    public void registrarCliente(Cliente cliente) {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        session.save(cliente);
        tx.commit();
    }
}
