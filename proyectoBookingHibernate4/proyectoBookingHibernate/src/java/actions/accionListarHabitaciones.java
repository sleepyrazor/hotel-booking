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
 * @author Manuel Revuelta
 */
public class accionListarHabitaciones extends ActionSupport {

    private String idHotel;
    private String reservar;
    private List<Habitacion> listadoHabitaciones;

    public String getIdHotel() {
        return idHotel;
    }

    public void setIdHotel(String idHotel) {
        this.idHotel = idHotel;
    }

    public List<Habitacion> getListadoHabitaciones() {
        return listadoHabitaciones;
    }

    public void setListadoHabitaciones(List<Habitacion> listadoHabitaciones) {
        this.listadoHabitaciones = listadoHabitaciones;
    }


    public String getReservar() {
        return reservar;
    }

    public void setReservar(String reservar) {
        this.reservar = reservar;
    }
    
    

    @Override
    public String execute() throws Exception {
        HotelDAO dao = new HotelDAO();
        HttpSession httpSession = ServletActionContext.getRequest().getSession();
        Hotel hotelAct = dao.getHotel(Integer.parseInt(idHotel));
        httpSession.setAttribute("hotelActual", hotelAct);
        this.listadoHabitaciones = dao.listarHabitaciones(Integer.parseInt(idHotel));
        return SUCCESS;
    }

}
