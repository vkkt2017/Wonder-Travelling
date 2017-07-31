/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package sessionBean;

import entities.CarBookedDetail;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author REY
 */
@Local
public interface CarBookedDetailFacadeLocal {

    void create(CarBookedDetail carBookedDetail);

    void edit(CarBookedDetail carBookedDetail);

    void remove(CarBookedDetail carBookedDetail);

    CarBookedDetail find(Object id);

    List<CarBookedDetail> findAll();

    List<CarBookedDetail> findRange(int[] range);

    int count();
    
}
