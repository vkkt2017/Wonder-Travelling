/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package sessionBean;

import entities.Tours;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author REY
 */
@Local
public interface ToursFacadeLocal {

    void create(Tours tours);

    void edit(Tours tours);

    void remove(Tours tours);

    Tours find(Object id);

    List<Tours> findAll();

    List<Tours> findRange(int[] range);

    int count();
    
}
