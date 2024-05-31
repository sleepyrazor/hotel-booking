/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package actions;

import static com.opensymphony.xwork2.Action.ERROR;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import entidades.Cliente;
import java.util.Map;
import web_service.clienteREST;

/**
 *
 * @author Garrido
 */
public class ARegistro extends ActionSupport {

    private String username;
    private String email;
    private String password;
    private String telefono;

    public ARegistro() {
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String execute() throws Exception {

        // Verificar que los campos no sean nulos
        if (username == null || password == null || email == null) {
            return ERROR;
        }

        return SUCCESS;
    }
}
