/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.DAO;

import modelo.entidades.Cliente;
import org.hibernate.Session;
import org.hibernate.Transaction;
import java.util.List;
import org.hibernate.Query;

/**
 *
 * @author agarc
 */
public class ClienteDao {

    Session sesion = null;

    public Cliente comprobarLogin(String username, String password) {
        sesion = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = sesion.beginTransaction();
        Query q = sesion.createQuery("From cliente where nombre = :username and contrasena = :password");
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
}

