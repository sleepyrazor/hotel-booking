/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package actions;

import com.opensymphony.xwork2.ActionSupport;
import java.util.HashSet;
import java.util.Set;
import modelo.Rol;
    

import com.opensymphony.xwork2.ActionSupport;
import modelo.Cliente;
import modelo.DAO.ClienteDao;
/**
 *
 * @author agarc
 */


public class accionRegistro extends ActionSupport {

    private String nombre;
    private String contrasena;
    private String email;
    private String telefono;
    private ClienteDao cDAO = new ClienteDao();

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

    public String execute() throws Exception {
        // Validar si los campos están vacíos
        if (this.getNombre() == null || this.getNombre().trim().isEmpty()) {
            addFieldError("nombre", "El nombre de usuario no puede estar vacío.");
            return INPUT;
        }

        if (this.getContrasena() == null || this.getContrasena().trim().isEmpty()) {
            addFieldError("contrasena", "El campo contraseña no puede estar vacío");
            return INPUT;
        }

        if (this.getEmail() == null || this.getEmail().trim().isEmpty()) {
            addFieldError("email", "El campo email no puede estar vacío");
            return INPUT;
        }

        // Crear nuevo cliente
        Cliente nuevoCliente = new Cliente();
        nuevoCliente.setNombre(this.getNombre());
        nuevoCliente.setContrasena(this.getContrasena());
        nuevoCliente.setEmail(this.getEmail());
        nuevoCliente.setTelefono(this.getTelefono());

        // Guardar cliente en la base de datos
        if (cDAO.registrarCliente(nuevoCliente)) {
            return SUCCESS;
        } else {
            addActionError("Error al registrar el usuario. Intente nuevamente.");
            return ERROR;
        }
    }
}
