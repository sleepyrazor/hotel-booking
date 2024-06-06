/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package actions;

import static com.opensymphony.xwork2.Action.SUCCESS;
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
public class accionEliminarHotel extends ActionSupport {
    
    private String idHotel;
    private List<Hotel> hoteles;
    
    
    public accionEliminarHotel() {
    }

    public String getIdHotel() {
        return idHotel;
    }

    public void setIdHotel(String idHotel) {
        this.idHotel = idHotel;
    }

    public List<Hotel> getHoteles() {
        return hoteles;
    }

    public void setHoteles(List<Hotel> hoteles) {
        this.hoteles = hoteles;
    }
    
    
    
    public String execute() throws Exception {
        HotelDAO dao = new HotelDAO();
        HttpSession httpSession = ServletActionContext.getRequest().getSession();
        Hotel hotelActual = dao.getHotel(Integer.parseInt(idHotel));
        dao.eliminarHotel(hotelActual);
        this.hoteles = dao.listarHoteles();
        return SUCCESS;
    }
    
}
