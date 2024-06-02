/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package actions;

import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
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
    private Hotel hotel;

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
          System.out.println("Método registrarHotel llamado");
        if (this.estrellas == null || this.estrellas < 1 || this.estrellas > 5) {
            addActionError("El número de estrellas debe estar entre 1 y 5.");
            return INPUT;
        } else {
            hotel = new Hotel();
            hotel.setNombre(nombre);
            hotel.setDireccion(direccion);
            hotel.setEstrellas(estrellas);

            HotelDAO hotelDao = new HotelDAO();
            hotelDao.guardarHotel(hotel);

            return SUCCESS;
        }

    }
}
