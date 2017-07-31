package entities;

import entities.Tours;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.1.v20130918-rNA", date="2017-07-31T16:08:22")
@StaticMetamodel(TourCategory.class)
public class TourCategory_ { 

    public static volatile SingularAttribute<TourCategory, String> tourCategoryName;
    public static volatile SingularAttribute<TourCategory, String> tourCategoryID;
    public static volatile SingularAttribute<TourCategory, String> destination;
    public static volatile ListAttribute<TourCategory, Tours> toursList;

}