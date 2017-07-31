package entities;

import entities.CustomerUser;
import entities.ReviewDetail;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.1.v20130918-rNA", date="2017-07-31T16:08:22")
@StaticMetamodel(Review.class)
public class Review_ { 

    public static volatile SingularAttribute<Review, Integer> reviewID;
    public static volatile ListAttribute<Review, ReviewDetail> reviewDetailList;
    public static volatile SingularAttribute<Review, CustomerUser> customerID;
    public static volatile SingularAttribute<Review, Date> createdDate;

}