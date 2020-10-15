package com.trip.planner.dto;

// T_member Dto
public class MDto {
	
    int t_id;
    String m_id;
    String m_pw;
    String m_name;
    String m_gender;
    String m_bir;
    String m_mob;
    String m_email;
    String m_add;
    
	public MDto() {
		// TODO Auto-generated constructor stub
	}

	public MDto(int t_id, String m_id, String m_pw, String m_name,
			String m_gender, String m_bir, String m_mob, String m_email,
			String m_add) {
		this.t_id = t_id;
		this.m_id = m_id;
		this.m_pw = m_pw;
		this.m_name = m_name;
		this.m_gender = m_gender;
		this.m_bir = m_bir;
		this.m_mob = m_mob;
		this.m_email = m_email;
		this.m_add = m_add;
	}

	public int getT_id() {
		return t_id;
	}

	public String getM_id() {
		return m_id;
	}

	public String getM_pw() {
		return m_pw;
	}

	public String getM_name() {
		return m_name;
	}

	public String getM_gender() {
		return m_gender;
	}

	public String getM_bir() {
		return m_bir;
	}

	public String getM_mob() {
		return m_mob;
	}

	public String getM_email() {
		return m_email;
	}

	public String getM_add() {
		return m_add;
	}

	public void setT_id(int t_id) {
		this.t_id = t_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public void setM_pw(String m_pw) {
		this.m_pw = m_pw;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public void setM_gender(String m_gender) {
		this.m_gender = m_gender;
	}

	public void setM_bir(String m_bir) {
		this.m_bir = m_bir;
	}

	public void setM_mob(String m_mob) {
		this.m_mob = m_mob;
	}

	public void setM_email(String m_email) {
		this.m_email = m_email;
	}

	public void setM_add(String m_add) {
		this.m_add = m_add;
	}

}
