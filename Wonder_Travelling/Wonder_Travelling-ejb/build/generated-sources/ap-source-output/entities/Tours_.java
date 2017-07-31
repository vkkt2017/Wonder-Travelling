package entities;

import entities.ReviewDetail;
import entities.Schedule;
import entities.TourBookedDetail;
import entities.TourCategory;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.1.v20130918-rNA", date="2017-07-31T16:08:22")
@StaticMetamodel(Tours.class)
public class Tours_ { 

    public static volatile SingularAttribute<Tours, Boolean> status;
    public static volatile ListAttribute<Tours, Schedule> scheduleList;
    public static volatile ListAttribute<Tours, ReviewDetail> reviewDetailList;
    public static volatile SingularAttribute<Tours, Double> oddTourPrice;
    public static volatile SingularAttribute<Tours, Short> transportation;
    public static volatile SingularAttribute<Tours, String> depatureDay;
    public static volatile SingularAttribute<Tours, String> tourID;
    public static volatile SingularAttribute<Tours, Short> duration;
    public static volatile ListAttribute<Tours, TourBookedDetail> tourBookedDetailList;
    public static volatile SingularAttribute<Tours, Short> hotelRank;
    public static volatile SingularAttribute<Tours, String> depaturePoint;
    public static volatile SingularAttribute<Tours, String> tourTitle;
    public static volatile SingularAttribute<Tours, Double> evenTourPrice;
    public static volatile SingularAttribute<Tours, Short> tickets;
    public static volatile SingularAttribute<Tours, TourCategory> tourCategoryID;

}