/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package actions;

import com.opensymphony.xwork2.ActionSupport;
import java.math.BigDecimal;
import modelo.Cliente;
import modelo.DAO.ReservaDAO;
import modelo.Habitacion;
import modelo.Reserva;

/**
 *
 * @author Manuel Revuelta
 */
public class accionReservar extends ActionSupport {

    private int idHotel;
    private Integer idReserva;
    private Cliente cliente;
    private Habitacion habitacion;
    private BigDecimal coste;
    private int duracion;

    public Integer getIdReserva() {
        return idReserva;
    }

    public void setIdReserva(Integer idReserva) {
        this.idReserva = idReserva;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public Habitacion getHabitacion() {
        return habitacion;
    }

    public void setHabitacion(Habitacion habitacion) {
        this.habitacion = habitacion;
    }

    public BigDecimal getCoste() {
        return coste;
    }

    public void setCoste(BigDecimal coste) {
        this.coste = coste;
    }

    public int getDuracion() {
        return duracion;
    }

    public void setDuracion(int duracion) {
        this.duracion = duracion;
    }

    public int getIdHotel() {
        return idHotel;
    }

    public void setIdHotel(int idHotel) {
        this.idHotel = idHotel;
    }

    public accionReservar() {
    }

    public String execute() throws Exception {
        ReservaDAO rdao = new ReservaDAO();
        System.out.println(this.getIdHotel());
        Reserva r = new Reserva(this.getCliente(), this.getHabitacion(), this.getCoste(), this.getDuracion());
        System.out.println(r);
        rdao.registrarReserva(r);
        return SUCCESS.toLowerCase();
    }

}
