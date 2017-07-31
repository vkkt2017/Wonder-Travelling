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
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author vahu
 */
@Entity
@Table(name = "TourBookedDetail")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TourBookedDetail.findAll", query = "SELECT t FROM TourBookedDetail t"),
    @NamedQuery(name = "TourBookedDetail.findByTourBookedDetailID", query = "SELECT t FROM TourBookedDetail t WHERE t.tourBookedDetailID = :tourBookedDetailID"),
    @NamedQuery(name = "TourBookedDetail.findByISGroup", query = "SELECT t FROM TourBookedDetail t WHERE t.iSGroup = :iSGroup"),
    @NamedQuery(name = "TourBookedDetail.findByDepartureDate", query = "SELECT t FROM TourBookedDetail t WHERE t.departureDate = :departureDate"),
    @NamedQuery(name = "TourBookedDetail.findByNumberOfKid", query = "SELECT t FROM TourBookedDetail t WHERE t.numberOfKid = :numberOfKid"),
    @NamedQuery(name = "TourBookedDetail.findByNumberOfBaby", query = "SELECT t FROM TourBookedDetail t WHERE t.numberOfBaby = :numberOfBaby"),
    @NamedQuery(name = "TourBookedDetail.findByNumberOfPeople", query = "SELECT t FROM TourBookedDetail t WHERE t.numberOfPeople = :numberOfPeople"),
    @NamedQuery(name = "TourBookedDetail.findByStatus", query = "SELECT t FROM TourBookedDetail t WHERE t.status = :status")})
public class TourBookedDetail implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "TourBookedDetailID")
    private String tourBookedDetailID;
    @Column(name = "ISGroup")
    private Boolean iSGroup;
    @Column(name = "DepartureDate")
    @Temporal(TemporalType.TIMESTAMP)
    private Date departureDate;
    @Column(name = "NumberOfKid")
    private Short numberOfKid;
    @Column(name = "NumberOfBaby")
    private Short numberOfBaby;
    @Column(name = "NumberOfPeople")
    private Short numberOfPeople;
    @Column(name = "Status")
    private Short status;
    @JoinColumn(name = "TourID", referencedColumnName = "TourID")
    @ManyToOne
    private Tours tourID;
    @JoinColumn(name = "BookedID", referencedColumnName = "BookedID")
    @ManyToOne
    private Booked bookedID;

    public TourBookedDetail() {
    }

    public TourBookedDetail(String tourBookedDetailID) {
        this.tourBookedDetailID = tourBookedDetailID;
    }

    public String getTourBookedDetailID() {
        return tourBookedDetailID;
    }

    public void setTourBookedDetailID(String tourBookedDetailID) {
        this.tourBookedDetailID = tourBookedDetailID;
    }

    public Boolean getISGroup() {
        return iSGroup;
    }

    public void setISGroup(Boolean iSGroup) {
        this.iSGroup = iSGroup;
    }

    public Date getDepartureDate() {
        return departureDate;
    }

    public void setDepartureDate(Date departureDate) {
        this.departureDate = departureDate;
    }

    public Short getNumberOfKid() {
        return numberOfKid;
    }

    public void setNumberOfKid(Short numberOfKid) {
        this.numberOfKid = numberOfKid;
    }

    public Short getNumberOfBaby() {
        return numberOfBaby;
    }

    public void setNumberOfBaby(Short numberOfBaby) {
        this.numberOfBaby = numberOfBaby;
    }

    public Short getNumberOfPeople() {
        return numberOfPeople;
    }

    public void setNumberOfPeople(Short numberOfPeople) {
        this.numberOfPeople = numberOfPeople;
    }

    public Short getStatus() {
        return status;
    }

    public void setStatus(Short status) {
        this.status = status;
    }

    public Tours getTourID() {
        return tourID;
    }

    public void setTourID(Tours tourID) {
        this.tourID = tourID;
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
        hash += (tourBookedDetailID != null ? tourBookedDetailID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TourBookedDetail)) {
            return false;
        }
        TourBookedDetail other = (TourBookedDetail) object;
        if ((this.tourBookedDetailID == null && other.tourBookedDetailID != null) || (this.tourBookedDetailID != null && !this.tourBookedDetailID.equals(other.tourBookedDetailID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.TourBookedDetail[ tourBookedDetailID=" + tourBookedDetailID + " ]";
    }
    
}
