package entities;

import entities.CarBookedDetail;
import entities.CustomerUser;
import entities.Promotion;
import entities.TourBookedDetail;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.1.v20130918-rNA", date="2017-07-31T16:08:22")
@StaticMetamodel(Booked.class)
public class Booked_ { 

    public static volatile SingularAttribute<Booked, String> bookedID;
    public static volatile SingularAttribute<Booked, Short> status;
    public static volatile ListAttribute<Booked, TourBookedDetail> tourBookedDetailList;
    public static volatile ListAttribute<Booked, CarBookedDetail> carBookedDetailList;
    public static volatile SingularAttribute<Booked, CustomerUser> customerID;
    public static volatile SingularAttribute<Booked, Date> createdDate;
    public static volatile SingularAttribute<Booked, Promotion> promotionID;

}