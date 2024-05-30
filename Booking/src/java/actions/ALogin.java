/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package actions;

import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import entidades.Cliente;
import entidades.service.ClienteFacadeREST;

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
        /*ClienteFacadeREST rest = new ClienteFacadeREST();
        Cliente clienteLogueado = null;
        List<Cliente> listadoClientes = rest.findAll();
        
        for(Cliente c: listadoClientes){
            if(c.getNombre() == this.nombre && c.getContrasena() == this.contrasenya){
                clienteLogueado = c;
                resultado = "success";
            }
        }
        */
        
        return resultado;
    }
    
}
