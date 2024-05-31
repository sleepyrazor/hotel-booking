package entidades;

import entidades.Habitacion;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.6.1.v20150605-rNA", date="2024-05-31T18:00:44")
@StaticMetamodel(Hotel.class)
public class Hotel_ { 

    public static volatile SingularAttribute<Hotel, Integer> idHotel;
    public static volatile CollectionAttribute<Hotel, Habitacion> habitacionCollection;
    public static volatile SingularAttribute<Hotel, String> direccion;
    public static volatile SingularAttribute<Hotel, String> nombre;
    public static volatile SingularAttribute<Hotel, Integer> estrellas;

}