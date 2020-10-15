package com.trip.planner.dao;

import java.util.ArrayList;

import com.trip.planner.dto.CDto;
import com.trip.planner.dto.MDto;
import com.trip.planner.dto.PDto;
import com.trip.planner.dto.PageDto;
import com.trip.planner.dto.QDto;
import com.trip.planner.dto.QDto_C;
import com.trip.planner.dto.TR_Dto;
import com.trip.planner.dto.YDto;
import com.trip.planner.dto.yplanpaging_Dto;

public interface IDao {
   //최태란 여행정보
   public ArrayList<TR_Dto> list(String name);
   
   //최정민 q&a
//   public ArrayList<QDto> listDao();
   public void write(String name, String title, String Content);
   public QDto content_view(String q_id);
   public void hitPlus(String q_id);
   public ArrayList<QDto_C> comment(String q_id); 
   public void comment_write(String q_id, String t_id, String c_comment);
   public int listCnt();
   public ArrayList<QDto> PageDao(PageDto PgDto);
   
   public int myQnaCnt(String id);
   public ArrayList<QDto> myQna(String id);
   
   //고이준 
   public void ij_save_my_plan(String t_id, String my_name, String my_start, String my_city, String my_place);
   public ArrayList<PDto> ij_show_my_plan(String t_id);
   public void ij_delete_my_plan(String t_id);
   public ArrayList<PDto> ij_show_day_plan(String t_id);
   public void ij_sign_up(String id,String pw,String name,String gender,String years, String mobile,String email,String address);
   public void ij_sign_update(String id,String pw,String name,String gender,String years, String mobile,String email,String address);
   public ArrayList<MDto>    ij_id_check(String id);
   public ArrayList<MDto>    ij_login(String id, String pw);
   public String ij_get_tid(String id);
   public void ij_update_my_plan(String t_id, String my_name, String my_start, String my_city, String my_place, String plan_id);
   

   
   //안하정
   public ArrayList<PDto> hj_yplan();
   public String hj_yplan2(String my_city);
   
   public ArrayList<YDto> review_list(String my_id);

   public void review_submit(String t_id, String m_id,String my_id, String y_review);
   public String ij_show_photo();
    public int yplan_listCnt();
    public ArrayList<PDto> yplanpaging_Dao(yplanpaging_Dto  yPgDto);
    
    public void hj_yplan_clip(String t_id, String my_id);

    public ArrayList<PDto> ij_show_my_plan2(String t_id);

    public void hj_delete_clip(String plan_id, String t_id);
}
