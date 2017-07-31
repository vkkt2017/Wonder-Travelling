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
 * @author vahu
 */
@Entity
@Table(name = "TourCategory")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TourCategory.findAll", query = "SELECT t FROM TourCategory t"),
    @NamedQuery(name = "TourCategory.findByTourCategoryID", query = "SELECT t FROM TourCategory t WHERE t.tourCategoryID = :tourCategoryID"),
    @NamedQuery(name = "TourCategory.findByTourCategoryName", query = "SELECT t FROM TourCategory t WHERE t.tourCategoryName = :tourCategoryName"),
    @NamedQuery(name = "TourCategory.findByDestination", query = "SELECT t FROM TourCategory t WHERE t.destination = :destination")})
public class TourCategory implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "TourCategoryID")
    private String tourCategoryID;
    @Size(max = 50)
    @Column(name = "TourCategoryName")
    private String tourCategoryName;
    @Size(max = 1073741823)
    @Column(name = "Destination")
    private String destination;
    @OneToMany(mappedBy = "tourCategoryID")
    private List<Tours> toursList;

    public TourCategory() {
    }

    public TourCategory(String tourCategoryID) {
        this.tourCategoryID = tourCategoryID;
    }

    public String getTourCategoryID() {
        return tourCategoryID;
    }

    public void setTourCategoryID(String tourCategoryID) {
        this.tourCategoryID = tourCategoryID;
    }

    public String getTourCategoryName() {
        return tourCategoryName;
    }

    public void setTourCategoryName(String tourCategoryName) {
        this.tourCategoryName = tourCategoryName;
    }

    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }

    @XmlTransient
    public List<Tours> getToursList() {
        return toursList;
    }

    public void setToursList(List<Tours> toursList) {
        this.toursList = toursList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (tourCategoryID != null ? tourCategoryID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TourCategory)) {
            return false;
        }
        TourCategory other = (TourCategory) object;
        if ((this.tourCategoryID == null && other.tourCategoryID != null) || (this.tourCategoryID != null && !this.tourCategoryID.equals(other.tourCategoryID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.TourCategory[ tourCategoryID=" + tourCategoryID + " ]";
    }
    
}
