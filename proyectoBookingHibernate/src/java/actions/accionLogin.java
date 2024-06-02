/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package actions;

import com.opensymphony.xwork2.ActionSupport;
import javax.servlet.http.HttpSession;
import modelo.Cliente;
import modelo.DAO.ClienteDao;
import modelo.Rol;
import org.apache.struts2.ServletActionContext;

public class accionLogin extends ActionSupport {

    private String nombre;
    private String contrasena;
    private Rol idRol;
    private ClienteDao cDAO = new ClienteDao();
    private Cliente c;

    // Getters y Setters
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }

    public Rol getIdRol() {
        return idRol;
    }

    public void setIdRol(Rol idRol) {
        this.idRol = idRol;
    }

    @Override
    public String execute() throws Exception {
        if (this.getNombre() == null || this.getNombre().trim().isEmpty()) {
            addFieldError("nombre", "El nombre de usuario no puede estar vacío.");
            return INPUT;
        }

        if (this.getContrasena() == null || this.getContrasena().trim().isEmpty()) {
            addFieldError("contrasena", "El campo contraseña no puede estar vacío");
            return INPUT;
        }

        c = cDAO.comprobarLogin(this.getNombre(), this.getContrasena());

        if (c == null) {
            addActionError("Nombre de usuario o contraseña incorrectos.");
            return ERROR;
        } else {
            HttpSession httpSession = ServletActionContext.getRequest().getSession();
            httpSession.setAttribute("cliente", c);
            if (c.getRol().getIdRol() == 1) {
                return "admin";
            } else if (c.getRol().getIdRol() == 2) {
                return "cliente";
            } else {
                addActionError("Rol desconocido");
                return ERROR;
            }

        }
    }
}
