package modelo;
// Generated 06-jun-2024 0:27:44 by Hibernate Tools 4.3.1


import java.math.BigDecimal;

/**
 * Reserva generated by hbm2java
 */
public class Reserva  implements java.io.Serializable {


     private Integer idReserva;
     private Cliente cliente;
     private Habitacion habitacion;
     private BigDecimal coste;
     private int duracion;
     private String comentario;

    public Reserva() {
    }

	
    public Reserva(BigDecimal coste, int duracion) {
        this.coste = coste;
        this.duracion = duracion;
    }
    public Reserva(Cliente cliente, Habitacion habitacion, BigDecimal coste, int duracion, String comentario) {
       this.cliente = cliente;
       this.habitacion = habitacion;
       this.coste = coste;
       this.duracion = duracion;
       this.comentario = comentario;
    }
   
    public Integer getIdReserva() {
        return this.idReserva;
    }
    
    public void setIdReserva(Integer idReserva) {
        this.idReserva = idReserva;
    }
    public Cliente getCliente() {
        return this.cliente;
    }
    
    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }
    public Habitacion getHabitacion() {
        return this.habitacion;
    }
    
    public void setHabitacion(Habitacion habitacion) {
        this.habitacion = habitacion;
    }
    public BigDecimal getCoste() {
        return this.coste;
    }
    
    public void setCoste(BigDecimal coste) {
        this.coste = coste;
    }
    public int getDuracion() {
        return this.duracion;
    }
    
    public void setDuracion(int duracion) {
        this.duracion = duracion;
    }
    public String getComentario() {
        return this.comentario;
    }
    
    public void setComentario(String comentario) {
        this.comentario = comentario;
    }




}


