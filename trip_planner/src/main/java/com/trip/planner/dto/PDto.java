package com.trip.planner.dto;

//T_myplan Dto
public class PDto {
	
	int my_id;
    int t_id;
    String my_name;
    String my_start;
    String my_place;
    String my_city;
    String city;
    
    
    
    public PDto() {
		// TODO Auto-generated constructor stub
	}

	public PDto(int my_id, int t_id, String my_name, String my_start, String my_city,
			String my_place,String city) {
		this.my_id = my_id;
		this.t_id = t_id;
		this.my_name = my_name;
		this.my_start = my_start;
		this.my_city = my_city;
		this.my_place = my_place;
		this.city = city;
	}
    
	public int getMy_id() {
		return my_id;
	}
	public int getT_id() {
		return t_id;
	}
	public String getMy_name() {
		return my_name;
	}
	public String getMy_start() {
		return my_start;
	}
	public String getMy_city() {
		return my_city;
	}
	public String getMy_place() {
		return my_place;
	}
	public void setMy_id(int my_id) {
		this.my_id = my_id;
	}
	public void setT_id(int t_id) {
		this.t_id = t_id;
	}
	public void setMy_name(String my_name) {
		this.my_name = my_name;
	}
	public void setMy_start(String my_start) {
		this.my_start = my_start;
	}
	public void setMy_city(String my_city) {
		this.my_city = my_city;
	}
	public void setMy_place(String my_place) {
		this.my_place = my_place;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}
    
}
