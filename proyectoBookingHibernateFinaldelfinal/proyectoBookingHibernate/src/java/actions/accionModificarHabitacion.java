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
public class accionModificarHabitacion extends ActionSupport {
    
    //primer form
    private String idHabitacion;

    
    //segundo form
    private String numero;
    private String piso;
    private String categoria;
    private String precioxnoche;
    private List<Habitacion> listadoHabitaciones;
    
    public accionModificarHabitacion() {
    }

    public String getIdHabitacion() {
        return idHabitacion;
    }

    public void setIdHabitacion(String idHabitacion) {
        this.idHabitacion = idHabitacion;
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

    public String getPrecioxnoche() {
        return precioxnoche;
    }

    public void setPrecioxnoche(String precioxnoche) {
        this.precioxnoche = precioxnoche;
    }

    public List<Habitacion> getListadoHabitaciones() {
        return listadoHabitaciones;
    }

    public void setListadoHabitaciones(List<Habitacion> listadoHabitaciones) {
        this.listadoHabitaciones = listadoHabitaciones;
    }
    
    
    
    public String mostrarPantalla(){
        
        HotelDAO dao = new HotelDAO();
        Habitacion habitacionActual = null;
        habitacionActual = dao.getHabitacion(Integer.parseInt(idHabitacion));
        HttpSession httpSession = ServletActionContext.getRequest().getSession();
        httpSession.setAttribute("habitacionActual", habitacionActual);
        return SUCCESS;
    }
    
    public String execute() throws Exception {
        HotelDAO dao = new HotelDAO();
        
        if(categoria.isEmpty() || piso.isEmpty() || numero.isEmpty() || precioxnoche.isEmpty()){
            return ERROR;
        }else{
        HttpSession httpSession = ServletActionContext.getRequest().getSession();
        Habitacion habitActual = (Habitacion) httpSession.getAttribute("habitacionActual");
        habitActual.setCategoria(categoria);
        habitActual.setNumero(Integer.parseInt(numero));
        habitActual.setPiso(Integer.parseInt(piso));
        BigDecimal numeroComoBigDecimal = new BigDecimal(precioxnoche);
        habitActual.setPrecioxnoche(numeroComoBigDecimal);
        dao.actualizarHabitacion(habitActual);
        
        
        Hotel hotelAct = (Hotel) httpSession.getAttribute("hotelActual");
        this.listadoHabitaciones = dao.listarHabitaciones(Integer.parseInt(String.valueOf(hotelAct.getIdHotel())));
        return SUCCESS;
        }

    }
    
}
