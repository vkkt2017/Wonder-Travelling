package entities;

import entities.Booked;
import entities.Tours;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.1.v20130918-rNA", date="2017-07-31T16:08:22")
@StaticMetamodel(TourBookedDetail.class)
public class TourBookedDetail_ { 

    public static volatile SingularAttribute<TourBookedDetail, Booked> bookedID;
    public static volatile SingularAttribute<TourBookedDetail, Short> numberOfPeople;
    public static volatile SingularAttribute<TourBookedDetail, Tours> tourID;
    public static volatile SingularAttribute<TourBookedDetail, String> tourBookedDetailID;
    public static volatile SingularAttribute<TourBookedDetail, Short> numberOfKid;
    public static volatile SingularAttribute<TourBookedDetail, Date> departureDate;
    public static volatile SingularAttribute<TourBookedDetail, Short> status;
    public static volatile SingularAttribute<TourBookedDetail, Short> numberOfBaby;
    public static volatile SingularAttribute<TourBookedDetail, Boolean> iSGroup;

}