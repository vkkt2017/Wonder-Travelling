package entities;

import entities.Booked;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.1.v20130918-rNA", date="2017-07-31T16:08:22")
@StaticMetamodel(Promotion.class)
public class Promotion_ { 

    public static volatile SingularAttribute<Promotion, Date> startDate;
    public static volatile SingularAttribute<Promotion, String> promotionCode;
    public static volatile SingularAttribute<Promotion, Date> endDate;
    public static volatile ListAttribute<Promotion, Booked> bookedList;
    public static volatile SingularAttribute<Promotion, Integer> promotionID;
    public static volatile SingularAttribute<Promotion, Date> createdDate;

}