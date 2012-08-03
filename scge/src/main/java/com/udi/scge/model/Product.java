/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.udi.scge.model;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author rledezma
 */
public class Product implements Serializable {

    private Long id;
    private Date created;
    private Date updated;
    private Long createdBy;
    private Long updatedBy;
    private Character isActive;
    private String description;
    private String name;
    private String sku;
    private Long priceBase;
    private Long priceMin;
    private Long priceMax;
	/**
	 * @return the id
	 */
	public Long getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * @return the created
	 */
	public Date getCreated() {
		return created;
	}
	/**
	 * @param created the created to set
	 */
	public void setCreated(Date created) {
		this.created = created;
	}
	/**
	 * @return the updated
	 */
	public Date getUpdated() {
		return updated;
	}
	/**
	 * @param updated the updated to set
	 */
	public void setUpdated(Date updated) {
		this.updated = updated;
	}
	/**
	 * @return the createdBy
	 */
	public Long getCreatedBy() {
		return createdBy;
	}
	/**
	 * @param createdBy the createdBy to set
	 */
	public void setCreatedBy(Long createdBy) {
		this.createdBy = createdBy;
	}
	/**
	 * @return the updatedBy
	 */
	public Long getUpdatedBy() {
		return updatedBy;
	}
	/**
	 * @param updatedBy the updatedBy to set
	 */
	public void setUpdatedBy(Long updatedBy) {
		this.updatedBy = updatedBy;
	}
	/**
	 * @return the isActive
	 */
	public Character getIsActive() {
		return isActive;
	}
	/**
	 * @param isActive the isActive to set
	 */
	public void setIsActive(Character isActive) {
		this.isActive = isActive;
	}
	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}
	/**
	 * @param description the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @return the sku
	 */
	public String getSku() {
		return sku;
	}
	/**
	 * @param sku the sku to set
	 */
	public void setSku(String sku) {
		this.sku = sku;
	}
	/**
	 * @return the priceBase
	 */
	public Long getPriceBase() {
		return priceBase;
	}
	/**
	 * @param priceBase the priceBase to set
	 */
	public void setPriceBase(Long priceBase) {
		this.priceBase = priceBase;
	}
	/**
	 * @return the priceMin
	 */
	public Long getPriceMin() {
		return priceMin;
	}
	/**
	 * @param priceMin the priceMin to set
	 */
	public void setPriceMin(Long priceMin) {
		this.priceMin = priceMin;
	}
	/**
	 * @return the priceMax
	 */
	public Long getPriceMax() {
		return priceMax;
	}
	/**
	 * @param priceMax the priceMax to set
	 */
	public void setPriceMax(Long priceMax) {
		this.priceMax = priceMax;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Product [id=" + id + ", created=" + created + ", updated="
				+ updated + ", createdBy=" + createdBy + ", updatedBy="
				+ updatedBy + ", isActive=" + isActive + ", description="
				+ description + ", name=" + name + ", sku=" + sku
				+ ", priceBase=" + priceBase + ", priceMin=" + priceMin
				+ ", priceMax=" + priceMax + "]";
	}  
   
    

    
}