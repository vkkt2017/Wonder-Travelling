/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package sessionBean;

import entities.Booked;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author REY
 */
@Local
public interface BookedFacadeLocal {

    void create(Booked booked);

    void edit(Booked booked);

    void remove(Booked booked);

    Booked find(Object id);

    List<Booked> findAll();

    List<Booked> findRange(int[] range);

    int count();
    
}
