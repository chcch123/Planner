package com.trip.planner.dto;

//T_plan Dto
public class PLDto {

    String p_city;
    String p_plan;
    
	public PLDto() {
		// TODO Auto-generated constructor stub
	}
	
	public PLDto(String p_city, String p_plan) {
		this.p_city = p_city;
		this.p_plan = p_plan;
	}
	public String getP_city() {
		return p_city;
	}
	public String getP_plan() {
		return p_plan;
	}
	public void setP_city(String p_city) {
		this.p_city = p_city;
	}
	public void setP_plan(String p_plan) {
		this.p_plan = p_plan;
	}
	
}
