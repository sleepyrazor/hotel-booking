/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package actions;

import static com.opensymphony.xwork2.Action.ERROR;
import static com.opensymphony.xwork2.Action.SUCCESS;
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
public class accionModificarHotel extends ActionSupport {
    
    //primer form
    private String idHotel;
    
    //segundo form
    private String nombre;
    private String direccion;
    private String estrellas;
    
    public accionModificarHotel() {
    }

    public String getIdHotel() {
        return idHotel;
    }

    public void setIdHotel(String idHotel) {
        this.idHotel = idHotel;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getEstrellas() {
        return estrellas;
    }

    public void setEstrellas(String estrellas) {
        this.estrellas = estrellas;
    }
    
    
    public String mostrarPantalla(){
        
        HotelDAO dao = new HotelDAO();
        Hotel hotelActual = null;
        hotelActual = dao.getHotel(Integer.parseInt(idHotel));
        HttpSession httpSession = ServletActionContext.getRequest().getSession();
        httpSession.setAttribute("hotelActual", hotelActual);
        return SUCCESS;
    }
    
    public String execute() throws Exception {
                HotelDAO dao = new HotelDAO();
        
        if(nombre.isEmpty() || direccion.isEmpty() || estrellas.isEmpty()){
            return ERROR;
        }else{
        HttpSession httpSession = ServletActionContext.getRequest().getSession();
        Hotel hotelActual = (Hotel) httpSession.getAttribute("hotelActual");
        hotelActual.setDireccion(direccion);
        hotelActual.setEstrellas(Integer.parseInt(estrellas));
        hotelActual.setNombre(nombre);
        dao.actualizarHotel(hotelActual);
        return SUCCESS;
        }
    }
    
}
