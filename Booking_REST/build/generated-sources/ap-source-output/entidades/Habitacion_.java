package entidades;

import entidades.Hotel;
import entidades.Reserva;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.6.1.v20150605-rNA", date="2024-05-31T17:32:54")
@StaticMetamodel(Habitacion.class)
public class Habitacion_ { 

    public static volatile SingularAttribute<Habitacion, Integer> piso;
    public static volatile SingularAttribute<Habitacion, Integer> numero;
    public static volatile SingularAttribute<Habitacion, Hotel> idHotel;
    public static volatile SingularAttribute<Habitacion, String> categoria;
    public static volatile CollectionAttribute<Habitacion, Reserva> reservaCollection;
    public static volatile SingularAttribute<Habitacion, Integer> idHabitacion;

}