package DAO;
// Generated 28-may-2024 20:31:18 by Hibernate Tools 4.3.1



/**
 * Habitacion generated by hbm2java
 */
public class Habitacion  implements java.io.Serializable {


     private Integer idHabitacion;
     private Hotel hotel;
     private int idHotel;
     private int idReserva;
     private int idCliente;
     private String numero;
     private String piso;
     private String categoria;
     private Reserva reserva;
     private Cliente cliente;

    public Habitacion() {
    }

	
    public Habitacion(Hotel hotel, int idHotel, int idReserva, int idCliente, String numero, String piso, String categoria) {
        this.hotel = hotel;
        this.idHotel = idHotel;
        this.idReserva = idReserva;
        this.idCliente = idCliente;
        this.numero = numero;
        this.piso = piso;
        this.categoria = categoria;
    }
    public Habitacion(Hotel hotel, int idHotel, int idReserva, int idCliente, String numero, String piso, String categoria, Reserva reserva, Cliente cliente) {
       this.hotel = hotel;
       this.idHotel = idHotel;
       this.idReserva = idReserva;
       this.idCliente = idCliente;
       this.numero = numero;
       this.piso = piso;
       this.categoria = categoria;
       this.reserva = reserva;
       this.cliente = cliente;
    }
   
    public Integer getIdHabitacion() {
        return this.idHabitacion;
    }
    
    public void setIdHabitacion(Integer idHabitacion) {
        this.idHabitacion = idHabitacion;
    }
    public Hotel getHotel() {
        return this.hotel;
    }
    
    public void setHotel(Hotel hotel) {
        this.hotel = hotel;
    }
    public int getIdHotel() {
        return this.idHotel;
    }
    
    public void setIdHotel(int idHotel) {
        this.idHotel = idHotel;
    }
    public int getIdReserva() {
        return this.idReserva;
    }
    
    public void setIdReserva(int idReserva) {
        this.idReserva = idReserva;
    }
    public int getIdCliente() {
        return this.idCliente;
    }
    
    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }
    public String getNumero() {
        return this.numero;
    }
    
    public void setNumero(String numero) {
        this.numero = numero;
    }
    public String getPiso() {
        return this.piso;
    }
    
    public void setPiso(String piso) {
        this.piso = piso;
    }
    public String getCategoria() {
        return this.categoria;
    }
    
    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }
    public Reserva getReserva() {
        return this.reserva;
    }
    
    public void setReserva(Reserva reserva) {
        this.reserva = reserva;
    }
    public Cliente getCliente() {
        return this.cliente;
    }
    
    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }




}


