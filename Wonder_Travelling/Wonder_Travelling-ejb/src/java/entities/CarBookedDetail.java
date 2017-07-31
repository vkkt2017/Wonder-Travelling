/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package entities;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author vahu
 */
@Entity
@Table(name = "CarBookedDetail")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "CarBookedDetail.findAll", query = "SELECT c FROM CarBookedDetail c"),
    @NamedQuery(name = "CarBookedDetail.findByCarBookedDetailID", query = "SELECT c FROM CarBookedDetail c WHERE c.carBookedDetailID = :carBookedDetailID"),
    @NamedQuery(name = "CarBookedDetail.findByCarQuantity", query = "SELECT c FROM CarBookedDetail c WHERE c.carQuantity = :carQuantity"),
    @NamedQuery(name = "CarBookedDetail.findByCarRecieveDate", query = "SELECT c FROM CarBookedDetail c WHERE c.carRecieveDate = :carRecieveDate"),
    @NamedQuery(name = "CarBookedDetail.findByCarReturnCaDate", query = "SELECT c FROM CarBookedDetail c WHERE c.carReturnCaDate = :carReturnCaDate"),
    @NamedQuery(name = "CarBookedDetail.findByCarRealityDate", query = "SELECT c FROM CarBookedDetail c WHERE c.carRealityDate = :carRealityDate")})
public class CarBookedDetail implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "CarBookedDetailID")
    private Integer carBookedDetailID;
    @Column(name = "CarQuantity")
    private Short carQuantity;
    @Basic(optional = false)
    @NotNull
    @Column(name = "CarRecieveDate")
    @Temporal(TemporalType.TIMESTAMP)
    private Date carRecieveDate;
    @Basic(optional = false)
    @NotNull
    @Column(name = "CarReturnCaDate")
    @Temporal(TemporalType.TIMESTAMP)
    private Date carReturnCaDate;
    @Basic(optional = false)
    @NotNull
    @Column(name = "CarRealityDate")
    @Temporal(TemporalType.TIMESTAMP)
    private Date carRealityDate;
    @JoinColumn(name = "CarID", referencedColumnName = "CarID")
    @ManyToOne
    private Car carID;
    @JoinColumn(name = "BookedID", referencedColumnName = "BookedID")
    @ManyToOne
    private Booked bookedID;

    public CarBookedDetail() {
    }

    public CarBookedDetail(Integer carBookedDetailID) {
        this.carBookedDetailID = carBookedDetailID;
    }

    public CarBookedDetail(Integer carBookedDetailID, Date carRecieveDate, Date carReturnCaDate, Date carRealityDate) {
        this.carBookedDetailID = carBookedDetailID;
        this.carRecieveDate = carRecieveDate;
        this.carReturnCaDate = carReturnCaDate;
        this.carRealityDate = carRealityDate;
    }

    public Integer getCarBookedDetailID() {
        return carBookedDetailID;
    }

    public void setCarBookedDetailID(Integer carBookedDetailID) {
        this.carBookedDetailID = carBookedDetailID;
    }

    public Short getCarQuantity() {
        return carQuantity;
    }

    public void setCarQuantity(Short carQuantity) {
        this.carQuantity = carQuantity;
    }

    public Date getCarRecieveDate() {
        return carRecieveDate;
    }

    public void setCarRecieveDate(Date carRecieveDate) {
        this.carRecieveDate = carRecieveDate;
    }

    public Date getCarReturnCaDate() {
        return carReturnCaDate;
    }

    public void setCarReturnCaDate(Date carReturnCaDate) {
        this.carReturnCaDate = carReturnCaDate;
    }

    public Date getCarRealityDate() {
        return carRealityDate;
    }

    public void setCarRealityDate(Date carRealityDate) {
        this.carRealityDate = carRealityDate;
    }

    public Car getCarID() {
        return carID;
    }

    public void setCarID(Car carID) {
        this.carID = carID;
    }

    public Booked getBookedID() {
        return bookedID;
    }

    public void setBookedID(Booked bookedID) {
        this.bookedID = bookedID;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (carBookedDetailID != null ? carBookedDetailID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CarBookedDetail)) {
            return false;
        }
        CarBookedDetail other = (CarBookedDetail) object;
        if ((this.carBookedDetailID == null && other.carBookedDetailID != null) || (this.carBookedDetailID != null && !this.carBookedDetailID.equals(other.carBookedDetailID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.CarBookedDetail[ carBookedDetailID=" + carBookedDetailID + " ]";
    }
    
}
