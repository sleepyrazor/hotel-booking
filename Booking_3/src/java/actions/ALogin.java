/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package actions;

import com.opensymphony.xwork2.ActionSupport;
import entidades.Cliente;
import java.util.ArrayList;
import java.util.List;
import javax.ws.rs.core.GenericType;
import web_service.clienteREST;

/**
 *
 * @author Garrido
 */
public class ALogin extends ActionSupport {
    
    private String nombre;
    private String contrasenya;
    
    public ALogin() {
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getContrasenya() {
        return contrasenya;
    }

    public void setContrasenya(String contrasenya) {
        this.contrasenya = contrasenya;
    }
    
    
    public String execute() throws Exception {
        String resultado = "success";
      /*  clienteREST rest = new clienteREST();
        Cliente clienteLogueado = null;
        GenericType<List<Cliente>> genericType = new GenericType<List<Cliente>>() {
            };
        List<Cliente> listadoClientes = new ArrayList<Cliente>();
        listadoClientes = rest.findAll_XML(genericType);
        if(listadoClientes != null){
            for(Cliente c: listadoClientes){
                if(c.getNombre() == this.nombre && c.getContrasena() == this.contrasenya){
                    clienteLogueado = c;
                    resultado = "success";
                }
            }
        }
        
        */
        
        return resultado;
    }
    
}
