/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package sessionbean;

import entities.CustomerUser;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author vahu
 */
@Stateless
public class CustomerUserFacade extends AbstractFacade<CustomerUser> implements CustomerUserFacadeLocal {
    @PersistenceContext(unitName = "Wonder_Travelling-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public CustomerUserFacade() {
        super(CustomerUser.class);
    }
    
}
