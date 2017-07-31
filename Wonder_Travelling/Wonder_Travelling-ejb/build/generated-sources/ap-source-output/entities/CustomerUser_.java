package entities;

import entities.Booked;
import entities.CustomerUser;
import entities.Review;
import entities.Role;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.1.v20130918-rNA", date="2017-07-31T16:08:22")
@StaticMetamodel(CustomerUser.class)
public class CustomerUser_ { 

    public static volatile SingularAttribute<CustomerUser, String> phone;
    public static volatile ListAttribute<CustomerUser, Review> reviewList;
    public static volatile SingularAttribute<CustomerUser, String> email;
    public static volatile SingularAttribute<CustomerUser, Boolean> status;
    public static volatile ListAttribute<CustomerUser, CustomerUser> customerUserList;
    public static volatile SingularAttribute<CustomerUser, String> customerUsername;
    public static volatile SingularAttribute<CustomerUser, CustomerUser> representativeID;
    public static volatile SingularAttribute<CustomerUser, String> fullName;
    public static volatile SingularAttribute<CustomerUser, Integer> customerID;
    public static volatile ListAttribute<CustomerUser, Booked> bookedList;
    public static volatile SingularAttribute<CustomerUser, Role> roleID;
    public static volatile SingularAttribute<CustomerUser, String> password;

}