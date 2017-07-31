/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package entities;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author vahu
 */
@Entity
@Table(name = "Booked")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Booked.findAll", query = "SELECT b FROM Booked b"),
    @NamedQuery(name = "Booked.findByBookedID", query = "SELECT b FROM Booked b WHERE b.bookedID = :bookedID"),
    @NamedQuery(name = "Booked.findByCreatedDate", query = "SELECT b FROM Booked b WHERE b.createdDate = :createdDate"),
    @NamedQuery(name = "Booked.findByStatus", query = "SELECT b FROM Booked b WHERE b.status = :status")})
public class Booked implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "BookedID")
    private String bookedID;
    @Column(name = "CreatedDate")
    @Temporal(TemporalType.TIMESTAMP)
    private Date createdDate;
    @Column(name = "Status")
    private Short status;
    @OneToMany(mappedBy = "bookedID")
    private List<TourBookedDetail> tourBookedDetailList;
    @OneToMany(mappedBy = "bookedID")
    private List<CarBookedDetail> carBookedDetailList;
    @JoinColumn(name = "PromotionID", referencedColumnName = "PromotionID")
    @ManyToOne
    private Promotion promotionID;
    @JoinColumn(name = "CustomerID", referencedColumnName = "CustomerID")
    @ManyToOne
    private CustomerUser customerID;

    public Booked() {
    }

    public Booked(String bookedID) {
        this.bookedID = bookedID;
    }

    public String getBookedID() {
        return bookedID;
    }

    public void setBookedID(String bookedID) {
        this.bookedID = bookedID;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public Short getStatus() {
        return status;
    }

    public void setStatus(Short status) {
        this.status = status;
    }

    @XmlTransient
    public List<TourBookedDetail> getTourBookedDetailList() {
        return tourBookedDetailList;
    }

    public void setTourBookedDetailList(List<TourBookedDetail> tourBookedDetailList) {
        this.tourBookedDetailList = tourBookedDetailList;
    }

    @XmlTransient
    public List<CarBookedDetail> getCarBookedDetailList() {
        return carBookedDetailList;
    }

    public void setCarBookedDetailList(List<CarBookedDetail> carBookedDetailList) {
        this.carBookedDetailList = carBookedDetailList;
    }

    public Promotion getPromotionID() {
        return promotionID;
    }

    public void setPromotionID(Promotion promotionID) {
        this.promotionID = promotionID;
    }

    public CustomerUser getCustomerID() {
        return customerID;
    }

    public void setCustomerID(CustomerUser customerID) {
        this.customerID = customerID;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (bookedID != null ? bookedID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Booked)) {
            return false;
        }
        Booked other = (Booked) object;
        if ((this.bookedID == null && other.bookedID != null) || (this.bookedID != null && !this.bookedID.equals(other.bookedID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.Booked[ bookedID=" + bookedID + " ]";
    }
    
}
