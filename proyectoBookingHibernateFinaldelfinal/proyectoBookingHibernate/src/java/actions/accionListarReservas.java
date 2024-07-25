/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package actions;

import com.opensymphony.xwork2.ActionSupport;
import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import java.util.List;
import javax.servlet.http.HttpSession;
import modelo.Cliente;
import modelo.DAO.ReservaDAO;
import modelo.Reserva;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author Garrido
 */
public class accionListarReservas extends ActionSupport {
    
    private List<Reserva> listadoReservas;
    
    public accionListarReservas() {
    }

    public List<Reserva> getListadoReservas() {
        return listadoReservas;
    }

    public void setListadoReservas(List<Reserva> listadoReservas) {
        this.listadoReservas = listadoReservas;
    }
    
    
    
    public String execute() throws Exception {
        HttpSession httpSession = ServletActionContext.getRequest().getSession();
        Cliente clienteReserva = (Cliente) httpSession.getAttribute("cliente");
        ReservaDAO daoReserva = new ReservaDAO();
        
        if(clienteReserva.getRol().getNombreRol().equals("Usuario")){
            this.listadoReservas = daoReserva.listarReservasCliente(String.valueOf(clienteReserva.getIdCliente()));
        }else if(clienteReserva.getRol().getNombreRol().equals("Administrador")){
            this.listadoReservas = daoReserva.listarReservas();
        }
        
        httpSession.setAttribute("listadoReservas", listadoReservas);
        return SUCCESS;
    }
    
}
