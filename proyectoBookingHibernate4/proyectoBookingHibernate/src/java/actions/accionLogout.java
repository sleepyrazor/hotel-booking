/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package actions;

import javax.servlet.http.HttpSession;
import com.opensymphony.xwork2.ActionSupport;
import modelo.HibernateUtil;
import org.hibernate.Session;

public class accionLogout extends ActionSupport {

    @Override
    public String execute() throws Exception {
        // Invalidar la sesión
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        if (session != null) {
            session.close();
        }
        // Redirigir al usuario a la página de inicio de sesión
        return "login"; // Aquí "login" es el nombre lógico de la página de inicio de sesión en tu archivo struts.xml
    }
}


