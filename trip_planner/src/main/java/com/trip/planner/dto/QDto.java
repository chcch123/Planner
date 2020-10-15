package com.trip.planner.dto;

import java.sql.Timestamp;


public class QDto {

    int q_id;
    String t_id;
    Timestamp q_date;
    String q_title;
    String q_content;
    int q_hit;
    
	
	public QDto() {
		
	}

	public QDto(int q_id, String t_id, Timestamp q_date, String q_title, String q_content,int q_hit) {
		this.q_id=q_id;
		this.t_id=t_id;
		this.q_date=q_date;
		this.q_title=q_title;
		this.q_content=q_content;
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

	public Timestamp getQ_date() {
		return q_date;
	}

	public void setQ_date(Timestamp q_date) {
		this.q_date = q_date;
	}

	public String getQ_title() {
		return q_title;
	}

	public void setQ_title(String q_title) {
		this.q_title = q_title;
	}

	public String getQ_content() {
		return q_content;
	}

	public void setQ_content(String q_content) {
		this.q_content = q_content;
	}
	public int getQ_hit() {
		return q_hit;
	}

	public void setQ_hit(int q_hit) {
		this.q_hit = q_hit;
	}



}
