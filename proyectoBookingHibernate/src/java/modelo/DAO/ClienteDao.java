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
import org.hibernate.Query;
import org.hibernate.cfg.Configuration;

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
        Query q = session.createQuery("From Cliente where nombre = :username and contrasena = :password");
        q.setParameter("username", username);
        q.setParameter("password", password);
        Cliente c = (Cliente) q.uniqueResult();
        tx.commit();
        return c;
    }

    // Método para registrar un nuevo usuario
    public void registrarUsuario(String username, String password,String email) {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();

        // Crear nueva instancia de Cliente
        Cliente nuevoCliente = new Cliente();
        nuevoCliente.setNombre(username);
        nuevoCliente.setContrasena(password);
        nuevoCliente.setEmail(email);
        // Guardar el cliente en la base de datos
        session.save(nuevoCliente);

        // Commit de la transacción
        tx.commit();
    }
    
    public boolean registrarCliente(Cliente cliente) {
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            session.save(cliente);
            tx.commit();
            return true;
        } catch (Exception e) {
            if (tx != null) tx.rollback();
            e.printStackTrace();
            return false;
        }
    }
}

