/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package actions;



import com.opensymphony.xwork2.ActionSupport;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import modelo.Cliente;
import modelo.DAO.ClienteDao;
import modelo.DAO.RolDAO;
import modelo.Rol;

/**
 *
 * @author agarc
 */


public class accionRegistro extends ActionSupport {

    private String nombre;
    private String email;
    private String telefono;
    private String contrasena;
    private int idRol;
    private List<Rol> roles;

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }

    public int getIdRol() {
        return idRol;
    }

    public void setIdRol(int idRol) {
        this.idRol = idRol;
    }

    public List<Rol> getRoles() {
        return roles;
    }

    public void setRoles(List<Rol> roles) {
        this.roles = roles;
    }

    @Override
    public String execute() throws Exception {
        RolDAO rolDao = new RolDAO();
        roles = rolDao.listarRoles();
        
        if (nombre != null && email != null && contrasena != null) {
            ClienteDao cDAO = new ClienteDao();
            Cliente nuevoCliente = new Cliente();
            nuevoCliente.setNombre(nombre);
            nuevoCliente.setEmail(email);
            nuevoCliente.setTelefono(telefono);
            nuevoCliente.setContrasena(contrasena);

            Rol rol = rolDao.obtenerRolPorId(idRol);
            nuevoCliente.setRol(rol);

            cDAO.registrarCliente(nuevoCliente);
            return SUCCESS.toLowerCase();
        }
        
        return INPUT;
    }
}

