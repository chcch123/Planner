package com.trip.planner.dto;

public class CDto {
   int t_id; 
    int my_id;
    
    public  CDto() {
   }

   public CDto(int t_id, int my_id) {
      super();
      this.t_id = t_id;
      this.my_id = my_id;
   }

   public int getT_id() {
      return t_id;
   }

   public int getMy_id() {
      return my_id;
   }

   public void setT_id(int t_id) {
      this.t_id = t_id;
   }

   public void setMy_id(int my_id) {
      this.my_id = my_id;
   }
    
}
   