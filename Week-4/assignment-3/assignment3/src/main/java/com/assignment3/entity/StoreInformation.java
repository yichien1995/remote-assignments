package com.assignment3.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class StoreInformation {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer storeID;
	private String storeEmail;
	private String storePassword;

	public StoreInformation() {
	}

	public StoreInformation(String storeEmail, String storePassword) {
		this.storeEmail = storeEmail;
		this.storePassword = storePassword;
	}

	public Integer getStoreID() {
		return storeID;
	}

	public void setStoreID(Integer storeID) {
		this.storeID = storeID;
	}

	public String getStoreEmail() {
		return storeEmail;
	}

	public void setStoreEmail(String storeEmail) {
		this.storeEmail = storeEmail;
	}

	public String getStorePassword() {
		return storePassword;
	}

	public void setStorePassword(String storePassword) {
		this.storePassword = storePassword;
	}
}
