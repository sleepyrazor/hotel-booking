/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


/**
 *
 * @author agarc
 */
package modelo.DAO;

import modelo.Rol;
import org.hibernate.Session;
import org.hibernate.Transaction;
import java.util.List;
import modelo.HibernateUtil;

public class RolDAO {

    public List<Rol> listarRoles() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        List<Rol> roles = null;

        try {
            tx = session.beginTransaction();
            roles = session.createQuery("FROM Rol").list();
            tx.commit();
        } catch (Exception e) {
            if (tx != null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }

        return roles;
    }

    public Rol obtenerRolPorId(int idRol) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Rol rol = null;

        try {
            rol = (Rol) session.get(Rol.class, idRol);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            session.close();
        }

        return rol;
    }
}

