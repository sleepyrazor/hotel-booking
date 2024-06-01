package modelo.entidades;
// Generated 01-jun-2024 12:11:23 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Cliente generated by hbm2java
 */
public class Cliente  implements java.io.Serializable {


     private Integer idCliente;
     private Rol rol;
     private String nombre;
     private String email;
     private String telefono;
     private String contrasena;
     private Set reservas = new HashSet(0);

    public Cliente() {
    }

	
    public Cliente(String nombre, String email) {
        this.nombre = nombre;
        this.email = email;
    }
    public Cliente(Rol rol, String nombre, String email, String telefono, String contrasena, Set reservas) {
       this.rol = rol;
       this.nombre = nombre;
       this.email = email;
       this.telefono = telefono;
       this.contrasena = contrasena;
       this.reservas = reservas;
    }
   
    public Integer getIdCliente() {
        return this.idCliente;
    }
    
    public void setIdCliente(Integer idCliente) {
        this.idCliente = idCliente;
    }
    public Rol getRol() {
        return this.rol;
    }
    
    public void setRol(Rol rol) {
        this.rol = rol;
    }
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    public String getTelefono() {
        return this.telefono;
    }
    
    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }
    public String getContrasena() {
        return this.contrasena;
    }
    
    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }
    public Set getReservas() {
        return this.reservas;
    }
    
    public void setReservas(Set reservas) {
        this.reservas = reservas;
    }




}

