/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package sessionBean;

import entities.Booked;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author REY
 */
@Stateless
public class BookedFacade extends AbstractFacade<Booked> implements BookedFacadeLocal {
    @PersistenceContext(unitName = "WonderTraveling-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public BookedFacade() {
        super(Booked.class);
    }
    
}
