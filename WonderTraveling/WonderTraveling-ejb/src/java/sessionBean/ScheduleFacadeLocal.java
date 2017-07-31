/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package sessionBean;

import entities.Schedule;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author REY
 */
@Local
public interface ScheduleFacadeLocal {

    void create(Schedule schedule);

    void edit(Schedule schedule);

    void remove(Schedule schedule);

    Schedule find(Object id);

    List<Schedule> findAll();

    List<Schedule> findRange(int[] range);

    int count();
    
}
