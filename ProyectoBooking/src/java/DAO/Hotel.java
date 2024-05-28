package DAO;
// Generated 28-may-2024 20:31:18 by Hibernate Tools 4.3.1



/**
 * Hotel generated by hbm2java
 */
public class Hotel  implements java.io.Serializable {


     private Integer idHotel;
     private String nombre;
     private String direccion;
     private int idHabitacion;
     private int idTrabajador;
     private Habitacion habitacion;

    public Hotel() {
    }

	
    public Hotel(String nombre, String direccion, int idHabitacion, int idTrabajador) {
        this.nombre = nombre;
        this.direccion = direccion;
        this.idHabitacion = idHabitacion;
        this.idTrabajador = idTrabajador;
    }
    public Hotel(String nombre, String direccion, int idHabitacion, int idTrabajador, Habitacion habitacion) {
       this.nombre = nombre;
       this.direccion = direccion;
       this.idHabitacion = idHabitacion;
       this.idTrabajador = idTrabajador;
       this.habitacion = habitacion;
    }
   
    public Integer getIdHotel() {
        return this.idHotel;
    }
    
    public void setIdHotel(Integer idHotel) {
        this.idHotel = idHotel;
    }
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public String getDireccion() {
        return this.direccion;
    }
    
    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }
    public int getIdHabitacion() {
        return this.idHabitacion;
    }
    
    public void setIdHabitacion(int idHabitacion) {
        this.idHabitacion = idHabitacion;
    }
    public int getIdTrabajador() {
        return this.idTrabajador;
    }
    
    public void setIdTrabajador(int idTrabajador) {
        this.idTrabajador = idTrabajador;
    }
    public Habitacion getHabitacion() {
        return this.habitacion;
    }
    
    public void setHabitacion(Habitacion habitacion) {
        this.habitacion = habitacion;
    }




}


