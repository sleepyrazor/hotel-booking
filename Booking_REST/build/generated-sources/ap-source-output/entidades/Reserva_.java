package entidades;

import entidades.Cliente;
import entidades.Habitacion;
import java.math.BigDecimal;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.6.1.v20150605-rNA", date="2024-05-31T17:32:54")
@StaticMetamodel(Reserva.class)
public class Reserva_ { 

    public static volatile SingularAttribute<Reserva, Cliente> idCliente;
    public static volatile SingularAttribute<Reserva, Integer> duracion;
    public static volatile SingularAttribute<Reserva, Habitacion> idHabitacion;
    public static volatile SingularAttribute<Reserva, Integer> idReserva;
    public static volatile SingularAttribute<Reserva, BigDecimal> coste;

}