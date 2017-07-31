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
 * @author dieut
 */
@Entity
@Table(name = "Car")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Car.findAll", query = "SELECT c FROM Car c"),
    @NamedQuery(name = "Car.findByCarID", query = "SELECT c FROM Car c WHERE c.carID = :carID"),
    @NamedQuery(name = "Car.findByCarName", query = "SELECT c FROM Car c WHERE c.carName = :carName"),
    @NamedQuery(name = "Car.findByCarImage", query = "SELECT c FROM Car c WHERE c.carImage = :carImage"),
    @NamedQuery(name = "Car.findByCarTrasmission", query = "SELECT c FROM Car c WHERE c.carTrasmission = :carTrasmission"),
    @NamedQuery(name = "Car.findByCarAirConditioning", query = "SELECT c FROM Car c WHERE c.carAirConditioning = :carAirConditioning"),
    @NamedQuery(name = "Car.findByCarDoors", query = "SELECT c FROM Car c WHERE c.carDoors = :carDoors"),
    @NamedQuery(name = "Car.findByCarSeats", query = "SELECT c FROM Car c WHERE c.carSeats = :carSeats"),
    @NamedQuery(name = "Car.findByCarStatus", query = "SELECT c FROM Car c WHERE c.carStatus = :carStatus"),
    @NamedQuery(name = "Car.findByCarPrice", query = "SELECT c FROM Car c WHERE c.carPrice = :carPrice"),
    @NamedQuery(name = "Car.findByCarGPS", query = "SELECT c FROM Car c WHERE c.carGPS = :carGPS"),
    @NamedQuery(name = "Car.findByCarPushChair", query = "SELECT c FROM Car c WHERE c.carPushChair = :carPushChair")})
public class Car implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "CarID")
    private Integer carID;
    @Size(max = 50)
    @Column(name = "CarName")
    private String carName;
    @Size(max = 100)
    @Column(name = "CarImage")
    private String carImage;
    @Size(max = 100)
    @Column(name = "CarTrasmission")
    private String carTrasmission;
    @Column(name = "CarAirConditioning")
    private Boolean carAirConditioning;
    @Column(name = "CarDoors")
    private Short carDoors;
    @Column(name = "CarSeats")
    private Short carSeats;
    @Column(name = "CarStatus")
    private Boolean carStatus;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "CarPrice")
    private Double carPrice;
    @Column(name = "CarGPS")
    private Boolean carGPS;
    @Column(name = "CarPushChair")
    private Boolean carPushChair;
    @OneToMany(mappedBy = "carID")
    private List<ReviewDetail> reviewDetailList;
    @OneToMany(mappedBy = "carID")
    private List<CarBookedDetail> carBookedDetailList;

    public Car() {
    }

    public Car(Integer carID) {
        this.carID = carID;
    }

    public Integer getCarID() {
        return carID;
    }

    public void setCarID(Integer carID) {
        this.carID = carID;
    }

    public String getCarName() {
        return carName;
    }

    public void setCarName(String carName) {
        this.carName = carName;
    }

    public String getCarImage() {
        return carImage;
    }

    public void setCarImage(String carImage) {
        this.carImage = carImage;
    }

    public String getCarTrasmission() {
        return carTrasmission;
    }

    public void setCarTrasmission(String carTrasmission) {
        this.carTrasmission = carTrasmission;
    }

    public Boolean getCarAirConditioning() {
        return carAirConditioning;
    }

    public void setCarAirConditioning(Boolean carAirConditioning) {
        this.carAirConditioning = carAirConditioning;
    }

    public Short getCarDoors() {
        return carDoors;
    }

    public void setCarDoors(Short carDoors) {
        this.carDoors = carDoors;
    }

    public Short getCarSeats() {
        return carSeats;
    }

    public void setCarSeats(Short carSeats) {
        this.carSeats = carSeats;
    }

    public Boolean getCarStatus() {
        return carStatus;
    }

    public void setCarStatus(Boolean carStatus) {
        this.carStatus = carStatus;
    }

    public Double getCarPrice() {
        return carPrice;
    }

    public void setCarPrice(Double carPrice) {
        this.carPrice = carPrice;
    }

    public Boolean getCarGPS() {
        return carGPS;
    }

    public void setCarGPS(Boolean carGPS) {
        this.carGPS = carGPS;
    }

    public Boolean getCarPushChair() {
        return carPushChair;
    }

    public void setCarPushChair(Boolean carPushChair) {
        this.carPushChair = carPushChair;
    }

    @XmlTransient
    public List<ReviewDetail> getReviewDetailList() {
        return reviewDetailList;
    }

    public void setReviewDetailList(List<ReviewDetail> reviewDetailList) {
        this.reviewDetailList = reviewDetailList;
    }

    @XmlTransient
    public List<CarBookedDetail> getCarBookedDetailList() {
        return carBookedDetailList;
    }

    public void setCarBookedDetailList(List<CarBookedDetail> carBookedDetailList) {
        this.carBookedDetailList = carBookedDetailList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (carID != null ? carID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Car)) {
            return false;
        }
        Car other = (Car) object;
        if ((this.carID == null && other.carID != null) || (this.carID != null && !this.carID.equals(other.carID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.Car[ carID=" + carID + " ]";
    }
    
}
