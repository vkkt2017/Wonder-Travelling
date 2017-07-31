/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package sessionbean;

import entities.TourBookedDetail;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author vahu
 */
@Stateless
public class TourBookedDetailFacade extends AbstractFacade<TourBookedDetail> implements TourBookedDetailFacadeLocal {
    @PersistenceContext(unitName = "Wonder_Travelling-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public TourBookedDetailFacade() {
        super(TourBookedDetail.class);
    }
    
}
