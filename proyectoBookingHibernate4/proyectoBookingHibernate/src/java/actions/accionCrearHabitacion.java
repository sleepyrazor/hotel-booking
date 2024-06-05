/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package actions;

import com.opensymphony.xwork2.ActionSupport;
import java.math.BigDecimal;
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
    private String precioxnoche;
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

    public String getPrecioxnoche() {
        return precioxnoche;
    }

    public void setPrecioxnoche(String precioxnoche) {
        this.precioxnoche = precioxnoche;
    }
    
    
    
    public String execute() throws Exception {
        HttpSession httpSession = ServletActionContext.getRequest().getSession();
        HotelDAO daoHotel = new HotelDAO();
        Hotel hotel = (Hotel) httpSession.getAttribute("hotelActual");
        if(numero.isEmpty() || piso.isEmpty() || categoria.isEmpty() || precioxnoche.isEmpty()){
            return ERROR;
        }else{
            Habitacion nuevaHabitacion;
            BigDecimal bigDecimalprecio = new BigDecimal(this.precioxnoche);
            nuevaHabitacion = new Habitacion(hotel, Integer.parseInt(numero), Integer.parseInt(piso),categoria, false, bigDecimalprecio);
        daoHotel.guardarHabitacion(nuevaHabitacion);
        this.listadoHabitaciones = daoHotel.listarHabitaciones(hotel.getIdHotel());
        return SUCCESS;
        }
        
    }
    
}
