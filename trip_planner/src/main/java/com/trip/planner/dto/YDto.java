package com.trip.planner.dto;

import java.sql.Timestamp;

public class YDto {
	int t_id;
	String m_id;
	int my_id;
	Timestamp y_date;
	String y_review;
	
    public YDto() {
		// TODO Auto-generated constructor stub
	}
	
	public YDto(int t_id, String m_id, int my_id, Timestamp y_date, String y_review) {
		this.t_id = t_id;
		this.m_id = m_id;
		this.my_id = my_id;
		this.y_date = y_date;
		this.y_review = y_review;
	}
	
	public int getT_id() {
		return t_id;
	}

	public String getM_id() {
		return m_id;
	}

	public int getMy_id() {
		return my_id;
	}

	public Timestamp getY_date() {
		return y_date;
	}

	public String getY_review() {
		return y_review;
	}

	public void setT_id(int t_id) {
		this.t_id = t_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public void setMy_id(int my_id) {
		this.my_id = my_id;
	}

	public void setY_date(Timestamp y_date) {
		this.y_date = y_date;
	}

	public void setY_review(String y_review) {
		this.y_review = y_review;
	}

}
