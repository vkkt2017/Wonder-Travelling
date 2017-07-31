package entities;

import entities.Booked;
import entities.Car;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.1.v20130918-rNA", date="2017-07-31T16:08:22")
@StaticMetamodel(CarBookedDetail.class)
public class CarBookedDetail_ { 

    public static volatile SingularAttribute<CarBookedDetail, Booked> bookedID;
    public static volatile SingularAttribute<CarBookedDetail, Car> carID;
    public static volatile SingularAttribute<CarBookedDetail, Integer> carBookedDetailID;
    public static volatile SingularAttribute<CarBookedDetail, Date> carRecieveDate;
    public static volatile SingularAttribute<CarBookedDetail, Short> carQuantity;
    public static volatile SingularAttribute<CarBookedDetail, Date> carRealityDate;
    public static volatile SingularAttribute<CarBookedDetail, Date> carReturnCaDate;

}