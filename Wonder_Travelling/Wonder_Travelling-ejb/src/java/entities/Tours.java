/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package entities;

import java.io.Serializable;
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
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author vahu
 */
@Entity
@Table(name = "Tours")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Tours.findAll", query = "SELECT t FROM Tours t"),
    @NamedQuery(name = "Tours.findByTourID", query = "SELECT t FROM Tours t WHERE t.tourID = :tourID"),
    @NamedQuery(name = "Tours.findByTourTitle", query = "SELECT t FROM Tours t WHERE t.tourTitle = :tourTitle"),
    @NamedQuery(name = "Tours.findByEvenTourPrice", query = "SELECT t FROM Tours t WHERE t.evenTourPrice = :evenTourPrice"),
    @NamedQuery(name = "Tours.findByOddTourPrice", query = "SELECT t FROM Tours t WHERE t.oddTourPrice = :oddTourPrice"),
    @NamedQuery(name = "Tours.findByDepatureDay", query = "SELECT t FROM Tours t WHERE t.depatureDay = :depatureDay"),
    @NamedQuery(name = "Tours.findByHotelRank", query = "SELECT t FROM Tours t WHERE t.hotelRank = :hotelRank"),
    @NamedQuery(name = "Tours.findByDepaturePoint", query = "SELECT t FROM Tours t WHERE t.depaturePoint = :depaturePoint"),
    @NamedQuery(name = "Tours.findByTransportation", query = "SELECT t FROM Tours t WHERE t.transportation = :transportation"),
    @NamedQuery(name = "Tours.findByDuration", query = "SELECT t FROM Tours t WHERE t.duration = :duration"),
    @NamedQuery(name = "Tours.findByTickets", query = "SELECT t FROM Tours t WHERE t.tickets = :tickets"),
    @NamedQuery(name = "Tours.findByStatus", query = "SELECT t FROM Tours t WHERE t.status = :status")})
public class Tours implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "TourID")
    private String tourID;
    @Size(max = 50)
    @Column(name = "TourTitle")
    private String tourTitle;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "EvenTourPrice")
    private Double evenTourPrice;
    @Column(name = "OddTourPrice")
    private Double oddTourPrice;
    @Size(max = 50)
    @Column(name = "DepatureDay")
    private String depatureDay;
    @Column(name = "HotelRank")
    private Short hotelRank;
    @Size(max = 100)
    @Column(name = "DepaturePoint")
    private String depaturePoint;
    @Column(name = "Transportation")
    private Short transportation;
    @Column(name = "Duration")
    private Short duration;
    @Column(name = "Tickets")
    private Short tickets;
    @Column(name = "Status")
    private Boolean status;
    @OneToMany(mappedBy = "tourID")
    private List<ReviewDetail> reviewDetailList;
    @OneToMany(mappedBy = "tourID")
    private List<Schedule> scheduleList;
    @OneToMany(mappedBy = "tourID")
    private List<TourBookedDetail> tourBookedDetailList;
    @JoinColumn(name = "TourCategoryID", referencedColumnName = "TourCategoryID")
    @ManyToOne
    private TourCategory tourCategoryID;

    public Tours() {
    }

    public Tours(String tourID) {
        this.tourID = tourID;
    }

    public String getTourID() {
        return tourID;
    }

    public void setTourID(String tourID) {
        this.tourID = tourID;
    }

    public String getTourTitle() {
        return tourTitle;
    }

    public void setTourTitle(String tourTitle) {
        this.tourTitle = tourTitle;
    }

    public Double getEvenTourPrice() {
        return evenTourPrice;
    }

    public void setEvenTourPrice(Double evenTourPrice) {
        this.evenTourPrice = evenTourPrice;
    }

    public Double getOddTourPrice() {
        return oddTourPrice;
    }

    public void setOddTourPrice(Double oddTourPrice) {
        this.oddTourPrice = oddTourPrice;
    }

    public String getDepatureDay() {
        return depatureDay;
    }

    public void setDepatureDay(String depatureDay) {
        this.depatureDay = depatureDay;
    }

    public Short getHotelRank() {
        return hotelRank;
    }

    public void setHotelRank(Short hotelRank) {
        this.hotelRank = hotelRank;
    }

    public String getDepaturePoint() {
        return depaturePoint;
    }

    public void setDepaturePoint(String depaturePoint) {
        this.depaturePoint = depaturePoint;
    }

    public Short getTransportation() {
        return transportation;
    }

    public void setTransportation(Short transportation) {
        this.transportation = transportation;
    }

    public Short getDuration() {
        return duration;
    }

    public void setDuration(Short duration) {
        this.duration = duration;
    }

    public Short getTickets() {
        return tickets;
    }

    public void setTickets(Short tickets) {
        this.tickets = tickets;
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }

    @XmlTransient
    public List<ReviewDetail> getReviewDetailList() {
        return reviewDetailList;
    }

    public void setReviewDetailList(List<ReviewDetail> reviewDetailList) {
        this.reviewDetailList = reviewDetailList;
    }

    @XmlTransient
    public List<Schedule> getScheduleList() {
        return scheduleList;
    }

    public void setScheduleList(List<Schedule> scheduleList) {
        this.scheduleList = scheduleList;
    }

    @XmlTransient
    public List<TourBookedDetail> getTourBookedDetailList() {
        return tourBookedDetailList;
    }

    public void setTourBookedDetailList(List<TourBookedDetail> tourBookedDetailList) {
        this.tourBookedDetailList = tourBookedDetailList;
    }

    public TourCategory getTourCategoryID() {
        return tourCategoryID;
    }

    public void setTourCategoryID(TourCategory tourCategoryID) {
        this.tourCategoryID = tourCategoryID;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (tourID != null ? tourID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Tours)) {
            return false;
        }
        Tours other = (Tours) object;
        if ((this.tourID == null && other.tourID != null) || (this.tourID != null && !this.tourID.equals(other.tourID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.Tours[ tourID=" + tourID + " ]";
    }
    
}
