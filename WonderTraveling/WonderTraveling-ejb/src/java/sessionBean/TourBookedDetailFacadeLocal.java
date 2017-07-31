/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package sessionBean;

import entities.TourBookedDetail;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author REY
 */
@Local
public interface TourBookedDetailFacadeLocal {

    void create(TourBookedDetail tourBookedDetail);

    void edit(TourBookedDetail tourBookedDetail);

    void remove(TourBookedDetail tourBookedDetail);

    TourBookedDetail find(Object id);

    List<TourBookedDetail> findAll();

    List<TourBookedDetail> findRange(int[] range);

    int count();
    
}
