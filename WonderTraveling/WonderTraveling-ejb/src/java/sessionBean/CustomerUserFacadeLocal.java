/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package sessionBean;

import entities.CustomerUser;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author REY
 */
@Local
public interface CustomerUserFacadeLocal {

    void create(CustomerUser customerUser);

    void edit(CustomerUser customerUser);

    void remove(CustomerUser customerUser);

    CustomerUser find(Object id);

    List<CustomerUser> findAll();

    List<CustomerUser> findRange(int[] range);

    int count();
    
}
