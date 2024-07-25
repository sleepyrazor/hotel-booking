/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package actions;

import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import java.math.BigDecimal;
import java.util.List;
import javax.servlet.http.HttpSession;
import modelo.Cliente;
import modelo.DAO.HotelDAO;
import modelo.DAO.ReservaDAO;
import modelo.Habitacion;
import modelo.Hotel;
import modelo.Reserva;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author Garrido
 */
public class accionCrearReserva extends ActionSupport {
    
    //primer form
    private String idHabitacion;
    
    //segundo form
    private String duracion;
    private String comentario;
    private List<Reserva> listadoReservas;
    
    public accionCrearReserva() {
    }

    public String getIdHabitacion() {
        return idHabitacion;
    }

    public void setIdHabitacion(String idHabitacion) {
        this.idHabitacion = idHabitacion;
    }

    public String getDuracion() {
        return duracion;
    }

    public void setDuracion(String duracion) {
        this.duracion = duracion;
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }

    public List<Reserva> getListadoReservas() {
        return listadoReservas;
    }

    public void setListadoReservas(List<Reserva> listadoReservas) {
        this.listadoReservas = listadoReservas;
    }
    
    
    
    public String mostrarPantalla(){    
        HttpSession httpSession = ServletActionContext.getRequest().getSession();
        HotelDAO dao = new HotelDAO();
        Habitacion habitacionActual = null;
        habitacionActual = dao.getHabitacion(Integer.parseInt(idHabitacion));
        httpSession.setAttribute("habitacionActual", habitacionActual);
        return SUCCESS;
    }
    
    public String execute() throws Exception {
        HttpSession httpSession = ServletActionContext.getRequest().getSession();
        Cliente clienteReserva = (Cliente) httpSession.getAttribute("cliente");
        Habitacion habitacionReserva = (Habitacion) httpSession.getAttribute("habitacionActual");
        if(duracion.isEmpty() || comentario.isEmpty()){
            return ERROR;
        }else{
            BigDecimal duracionBig = new BigDecimal(duracion);
            BigDecimal coste = duracionBig.multiply(habitacionReserva.getPrecioxnoche());
            Reserva reserva = new Reserva(clienteReserva, habitacionReserva, coste, Integer.parseInt(duracion), comentario);
            ReservaDAO daoReserva = new ReservaDAO();
            daoReserva.registrarReserva(reserva);
            this.listadoReservas = daoReserva.listarReservasCliente(String.valueOf(clienteReserva.getIdCliente()));
            HotelDAO daoHotel = new HotelDAO();
            habitacionReserva.setOcupado(true);
            daoHotel.actualizarHabitacion(habitacionReserva);
            
            return SUCCESS; 
        }
        
    }
    
}
