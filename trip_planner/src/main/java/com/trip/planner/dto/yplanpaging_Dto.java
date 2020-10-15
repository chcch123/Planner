package com.trip.planner.dto;

public class yplanpaging_Dto {

   private int nowPage;
   private int startPage;
   private int endPage;
   private int total;
   private int cntPerPage;
   private int lastPage;
   
   private int start;
   private int end;
   
   private int cntPage=5;
   
   public yplanpaging_Dto() {   
   }
   
   
   public yplanpaging_Dto(int total, int nowPage, int cntPerPage) {
      setNowPage(nowPage);
      setCntPerPage(cntPerPage);
      setTotal(total);
      calcLastPage(getTotal(),getCntPerPage());
      calcStartEndPage(getNowPage(), getCntPage());
      calcStartEnd(getNowPage(), getCntPerPage());
   }
   //for DB
   private void calcStartEnd(int nowPage, int cntPerPage) {
      setEnd(nowPage*cntPerPage);
      setStart(getEnd()-cntPerPage+1);
      
   }
   
   private void calcStartEndPage(int nowPage, int cntPage) {
      setEndPage(((int)Math.ceil((double)nowPage / (double)cntPage)) * cntPage);
      if(getLastPage() < getEndPage()) {
         setEndPage(getLastPage());
      }
      setStartPage(getEndPage()-cntPage+1);
      if(getStartPage() < 1) {
         setStartPage(1);
      }
      
   }
   
   public void calcLastPage(int total, int cntPerPage) {
      setLastPage((int) Math.ceil((double)total / (double)cntPerPage));
   }
   
   

   public int getNowPage() {
      return nowPage;
   }

   public int getStartPage() {
      return startPage;
   }

   public int getEndPage() {
      return endPage;
   }

   public int getTotal() {
      return total;
   }

   public int getCntPerPage() {
      return cntPerPage;
   }

   public int getLastPage() {
      return lastPage;
   }

   public int getStart() {
      return start;
   }

   public int getEnd() {
      return end;
   }

   public int getCntPage() {
      return cntPage;
   }

   public void setNowPage(int nowPage) {
      this.nowPage = nowPage;
   }

   public void setStartPage(int startPage) {
      this.startPage = startPage;
   }

   public void setEndPage(int endPage) {
      this.endPage = endPage;
   }

   public void setTotal(int total) {
      this.total = total;
   }

   public void setCntPerPage(int cntPerPage) {
      this.cntPerPage = cntPerPage;
   }

   public void setLastPage(int lastPage) {
      this.lastPage = lastPage;
   }

   public void setStart(int start) {
      this.start = start;
   }

   public void setEnd(int end) {
      this.end = end;
   }

   public void setCntPage(int cntPage) {
      this.cntPage = cntPage;
   }


   @Override
   public String toString() {
      return "yplanpaging_Dto [nowPage=" + nowPage + ", startPage=" + startPage + ", endPage=" + endPage + ", total=" + total
            + ", cntPerPage=" + cntPerPage + ", lastPage=" + lastPage + ", start=" + start + ", end=" + end
            + ", cntPage=" + cntPage + "]";
   }
}