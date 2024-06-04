/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package actions;

import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import modelo.DAO.HotelDAO;
import modelo.Hotel;


import java.util.List;

public class accionListarHoteles extends ActionSupport {
    private List<Hotel> hoteles;

    public List<Hotel> getHoteles() {
        return hoteles;
    }

    public String execute() throws Exception {
        HotelDAO hotelDao = new HotelDAO();
        hoteles = hotelDao.listarHoteles();
        return SUCCESS;
    }
}

