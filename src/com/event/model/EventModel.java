package com.event.model;




public class EventModel {
	private String userName;
	private String name;
     private int eventId;  
     private String eventType;  
     private String deco; 
     private String entertain ;
     private String location;
     private String quantity;
   
    private String contact;
    private String edate;
    
    public String getName() {
    	return name;
    }
    
    public void setName(String name) {
    	this.name=name;
    }
    public String getContact() {
    	return contact;
    }
    public void setContact(String contact) {
    	this.contact=contact;
    }
     public int getEventId() {  
          return eventId;  
     }  
     public void setEventId(int eventId) {  
          this.eventId =eventId;  
     }  
     public String getEventType() {  
          return eventType;  
     }  
     public void setEventType(String eventType) {  
          this.eventType = eventType;  
     }  
     public String getDeco() {  
          return deco;  
     }  
     public void setDeco(String deco) {  
          this.deco = deco;  
     }  
     public String getEntertain() {
   	  return entertain;
     }
     public void setEntertain(String ent) {
   	  //for(int i = 0; i < ent.length; i++ ) {
   	  
   		  this.entertain= ent;
    
   	  }
     public String getLocation() {  
         return location;  
    }  
    public void setLocation(String location) {  
         this.location = location;  
    }

   public String getQuantity() {  
       return quantity;  
  }  
  public void setQuantity(String quantity) {  
       this.quantity = quantity;  
  } 
  public String getDate() {
	  return edate;
  }
  public void setDate(String edate) {
	  this.edate=edate;
  }

public String getUserName() {
	return userName;
}

public void setUserName(String userName) {
	this.userName = userName;
}
 }  

