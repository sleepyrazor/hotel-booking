/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package actions;

import com.opensymphony.xwork2.ActionSupport;
import java.util.Arrays;
import java.util.List;
import modelo.DAO.HotelDAO;
import modelo.Hotel;

/**
 *
 * @author agarc
 */
public class accionRegistrarHotel extends ActionSupport {

    private String nombre;
    private String direccion;
    private Integer estrellas;
    private Hotel hotel; // Asegúrate de tener un objeto Hotel con getters y setters
      private List<String> listaEstrellas;

    public accionRegistrarHotel() {
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

    public Integer getEstrellas() {
        return estrellas;
    }

    public void setEstrellas(Integer estrellas) {
        this.estrellas = estrellas;
    }

    public Hotel getHotel() {
        return hotel;
    }

    public void setHotel(Hotel hotel) {
        this.hotel = hotel;
    }

    public String registrarHotel() {
        // Lógica para validar y guardar el nuevo hotel en la base de datos
        listaEstrellas = Arrays.asList("1 Estrella", "2 Estrellas", "3 Estrellas", "4 Estrellas", "5 Estrellas");
        HotelDAO hotelDao = new HotelDAO();
        hotelDao.guardarHotel(hotel);
        return SUCCESS;
    }

    public String execute() throws Exception {
      
        return SUCCESS;
    }
    public List<String> getListaEstrellas() {
        return listaEstrellas;
    }

}
