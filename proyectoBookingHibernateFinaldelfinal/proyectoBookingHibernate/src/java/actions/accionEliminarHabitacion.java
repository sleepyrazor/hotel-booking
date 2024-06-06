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
public class accionEliminarHabitacion extends ActionSupport {
    
    private String idHabitacion;
    private List<Habitacion> listadoHabitaciones;
    
    public accionEliminarHabitacion() {
    }

    public String getIdHabitacion() {
        return idHabitacion;
    }

    public void setIdHabitacion(String idHabitacion) {
        this.idHabitacion = idHabitacion;
    }

    public List<Habitacion> getListadoHabitaciones() {
        return listadoHabitaciones;
    }

    public void setListadoHabitaciones(List<Habitacion> listadoHabitaciones) {
        this.listadoHabitaciones = listadoHabitaciones;
    }
    
    
    
    public String execute() throws Exception {
        HotelDAO dao = new HotelDAO();
        HttpSession httpSession = ServletActionContext.getRequest().getSession();
        Habitacion habitActual = dao.getHabitacion(Integer.parseInt(idHabitacion));
        dao.eliminarHabitacion(habitActual);
        Hotel hotelActual = (Hotel) httpSession.getAttribute("hotelActual");
        this.listadoHabitaciones = dao.listarHabitaciones(hotelActual.getIdHotel());
        return SUCCESS;
    }
    
}
