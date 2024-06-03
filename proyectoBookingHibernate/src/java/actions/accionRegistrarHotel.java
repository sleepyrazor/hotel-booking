/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package actions;

import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
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
    private Map<Integer, String> listaEstrellas;

    public accionRegistrarHotel(Map<Integer, String> listaEstrellas) {
        listaEstrellas = new HashMap<>();
        listaEstrellas.put(1, "1 Estrella");
        listaEstrellas.put(2, "2 Estrellas");
        listaEstrellas.put(3, "3 Estrellas");
        listaEstrellas.put(4, "4 Estrellas");
        listaEstrellas.put(5, "5 Estrellas");
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

    public Map<Integer, String> getListaEstrellas() {
        return listaEstrellas;
    }

    public void setListaEstrellas(Map<Integer, String> listaEstrellas) {
        this.listaEstrellas = listaEstrellas;
    }

    public String registrarHotel() {
        // Validar el número de estrellas
        if (estrellas == null || estrellas < 1 || estrellas > 5) {
            addActionError("El número de estrellas debe estar entre 1 y 5.");
            return INPUT;
        } else {
            // Crear un nuevo objeto Hotel
            Hotel hotel = new Hotel();
            hotel.setNombre(nombre);
            hotel.setDireccion(direccion);
            hotel.setEstrellas(estrellas);

            // Guardar el hotel en la base de datos
            HotelDAO hotelDao = new HotelDAO();
            hotelDao.guardarHotel(hotel);

            return SUCCESS;
        }
    }
}
