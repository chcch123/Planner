package com.trip.planner.dto;

import java.sql.Timestamp;

public class QDto_C {
	
	int q_id;
	String t_id;
	String c_comment;
	Timestamp c_date;
	
	public Timestamp getC_date() {
		return c_date;
	}

	public void setC_date(Timestamp c_date) {
		this.c_date = c_date;
	}

	public QDto_C(){
		
	}
	
	public QDto_C(int q_id, String t_id, String c_comment, Timestamp c_date) {
		this.q_id=q_id;
		this.t_id=t_id;
		this.c_comment=c_comment;
		this.c_date=c_date;
	}
	
	public int getQ_id() {
		return q_id;
	}
	public void setQ_id(int q_id) {
		this.q_id = q_id;
	}
	public String getT_id() {
		return t_id;
	}
	public void setT_id(String t_id) {
		this.t_id = t_id;
	}
	public String getC_comment() {
		return c_comment;
	}
	public void setC_comment(String c_comment) {
		this.c_comment = c_comment;
	}
	
	
}
