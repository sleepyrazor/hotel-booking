/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package actions;

import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import javax.servlet.http.HttpSession;
import modelo.DAO.HotelDAO;
import modelo.Habitacion;
import modelo.Hotel;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author Garrido
 */
public class accionCrearHabitacion extends ActionSupport {
    
    private String numero;
    private String piso;
    private String categoria;
    private List<Habitacion> listadoHabitaciones;
    
    public accionCrearHabitacion() {
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public String getPiso() {
        return piso;
    }

    public void setPiso(String piso) {
        this.piso = piso;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public List<Habitacion> getListadoHabitaciones() {
        return listadoHabitaciones;
    }

    public void setListadoHabitaciones(List<Habitacion> listadoHabitaciones) {
        this.listadoHabitaciones = listadoHabitaciones;
    }
    
    
    
    public String execute() throws Exception {
        HttpSession httpSession = ServletActionContext.getRequest().getSession();
        HotelDAO daoHotel = new HotelDAO();
        Hotel hotel = (Hotel) httpSession.getAttribute("hotelActual");
        if(numero.isEmpty() || piso.isEmpty() || categoria.isEmpty()){
            return ERROR;
        }else{
            Habitacion nuevaHabitacion = new Habitacion(hotel, Integer.parseInt(numero), Integer.parseInt(piso),categoria);
        daoHotel.guardarHabitacion(nuevaHabitacion);
        this.listadoHabitaciones = daoHotel.listarHabitaciones(hotel.getIdHotel());
        return SUCCESS;
        }
        
    }
    
}
