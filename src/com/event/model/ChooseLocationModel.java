package com.event.model;

public class ChooseLocationModel {
	private int eventLocId;
	private String locName;
	private int locQuantity;
	private String date;
	
	public int getEventLocId() {
		return eventLocId;
	}
	public void setEventLocId(int locId) {
		this.eventLocId=locId;
	}
	public String getLocName() {
		return locName;
	}
	public void setLocName(String locName) {
		this.locName=locName;
	}
	public int getLocQuantity() {
		return locQuantity;
	}
	public void setLocQuantity(int locQ) {
		this.locQuantity=locQ;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
}
