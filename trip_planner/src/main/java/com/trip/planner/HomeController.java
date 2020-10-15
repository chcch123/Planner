package com.trip.planner;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.trip.planner.dao.IDao;
import com.trip.planner.dto.MDto;
import com.trip.planner.dto.PDto;
import com.trip.planner.dto.PageDto;
import com.trip.planner.dto.YDto;
import com.trip.planner.dto.yplanpaging_Dto;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
   
   @Autowired
   private SqlSession sqlSession;

   @Autowired
   private HttpSession session;
   /**
    * Simply selects the home view to render by returning its name.
    */
   @RequestMapping(value = "/", method = RequestMethod.GET)
   public String home(HttpServletRequest request, Model model) {   
        if(session.getAttribute("loginCheck")!=null){
           model.addAttribute("id",session.getAttribute("id"));
        }
        return "home";
   }
   @RequestMapping(value = "/home_log", method = RequestMethod.POST)
   public String home_log(HttpServletRequest request, Model model) {   
         try {
             request.setCharacterEncoding("UTF-8");
          } catch (UnsupportedEncodingException e) {
             // TODO Auto-generated catch block
             e.printStackTrace();
          }
      String id=request.getParameter("id");
      String referer = request.getHeader("Referer");
      IDao dao = sqlSession.getMapper(IDao.class);
      String t_id=dao.ij_get_tid(id);
        session.setAttribute("loginCheck",true);
        session.setAttribute("id",id);
        session.setAttribute("t_id",t_id);
        session.setAttribute("icon","/planner/resources/f2.jpg");
        model.addAttribute("id",id);
        model.addAttribute("icon","/planner/resources/f2.jpg");
        return "redirect:"+ referer;
   }
   
   @RequestMapping(value = "/ij_kakao_login", method = RequestMethod.POST)
   public String ij_kakao_login(HttpServletRequest request, Model model) {   
         try {
             request.setCharacterEncoding("UTF-8");
          } catch (UnsupportedEncodingException e) {
             // TODO Auto-generated catch block
             e.printStackTrace();
          }
       String referer = request.getHeader("Referer");
      String id=request.getParameter("nickname");
      String icon=request.getParameter("icon");
      IDao dao = sqlSession.getMapper(IDao.class);
      if(dao.ij_get_tid(id) == null) {
         dao.ij_sign_up(id, "kakao", id, "kakao",  "kakao", "kakao", "kakao","kakao");
      }
      String t_id=dao.ij_get_tid(id);
      
        session.setAttribute("loginCheck",true);
        session.setAttribute("id",id);
        session.setAttribute("t_id",t_id);
        session.setAttribute("icon",icon);
        model.addAttribute("id",id);
        model.addAttribute("icon",icon);
        return "redirect:"+ referer;
   }

   @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout() {
        session.setAttribute("loginCheck",null);
        session.setAttribute("id",null);
        session.setAttribute("icon",null);
        return "home";
    }

   @RequestMapping(value = "/hj_plan", method = RequestMethod.GET)
   public String hj_plan(HttpServletRequest request, Model model) {   

        if(session.getAttribute("loginCheck")!=null){
           model.addAttribute("id",session.getAttribute("id"));
           model.addAttribute("icon",session.getAttribute("icon"));
            return "hj_plan";
        }
        return "hj_log";


   }

   @RequestMapping(value = "/submit_myplan", method = RequestMethod.GET)
   public String submit_myplan(HttpServletRequest request, Model model) {   
        if(session.getAttribute("loginCheck")!=null){
           model.addAttribute("id",session.getAttribute("id"));
           model.addAttribute("t_id",session.getAttribute("t_id"));
           model.addAttribute("icon",session.getAttribute("icon"));
        }

      String my_name=request.getParameter("my_name");
      String my_start=request.getParameter("my_start");
      String my_lat=request.getParameter("my_lat");
      String my_lng=request.getParameter("my_lng");
      String my_city=request.getParameter("my_city");
      model.addAttribute("my_name",my_name);
      model.addAttribute("my_start",my_start);
      model.addAttribute("my_lat",my_lat);
      model.addAttribute("my_lng",my_lng);
      model.addAttribute("my_city",my_city);
      
      return "hj_plan2";
   }
   
   
   @RequestMapping(value = "/ij_sign_up", method = RequestMethod.POST)
   public String ij_sign_up(HttpServletRequest request, Model model) {
         try {
             request.setCharacterEncoding("UTF-8");
          } catch (UnsupportedEncodingException e) {
             // TODO Auto-generated catch block
             e.printStackTrace();
          }

      String id=request.getParameter("id");
      String pw=request.getParameter("pw");
      String email=request.getParameter("email");
      String name=request.getParameter("name");
      String years=request.getParameter("years");
      String address=request.getParameter("address");
      String gender=request.getParameter("gender");
      String mobile=request.getParameter("mobile");
      IDao dao = sqlSession.getMapper(IDao.class);
      dao.ij_sign_up(id, pw, name, gender,  years, mobile, email, address);
      String t_id=dao.ij_get_tid(id);
        session.setAttribute("loginCheck",true);
        session.setAttribute("id",id);
        session.setAttribute("t_id",t_id);
        session.setAttribute("icon","/planner/resources/f2.jpg");
        model.addAttribute("id",id);
        model.addAttribute("icon","/planner/resources/f2.jpg");
      return "redirect:hj_log";
   }
   
   @RequestMapping(value = "/ij_sign_update", method = RequestMethod.POST)
   public String ij_sign_update(HttpServletRequest request, Model model) {   
         try {
             request.setCharacterEncoding("UTF-8");
          } catch (UnsupportedEncodingException e) {
             // TODO Auto-generated catch block
             e.printStackTrace();
          }
      String id=request.getParameter("id");
      String pw=request.getParameter("pw");
      String email=request.getParameter("email");
      String name=request.getParameter("name");
      String years=request.getParameter("years");
      String address=request.getParameter("address");
      String gender=request.getParameter("gender");
      String mobile=request.getParameter("mobile");
      IDao dao = sqlSession.getMapper(IDao.class);
      dao.ij_sign_update(id, pw, name, gender,  years,  mobile, email, address);
      return "ij_show_my_plan";
   }
   
   @RequestMapping(value = "/ij_login", method = RequestMethod.GET, produces="text/plain;charset=UTF-8")
   public @ResponseBody String ij_login(HttpServletRequest request, Model model) {   
      String id=request.getParameter("id");
      String pw=request.getParameter("pw");
      IDao dao = sqlSession.getMapper(IDao.class);
      ArrayList<MDto> log_ok=dao.ij_login(id,pw);
      Gson gson=new Gson();
      String logok=gson.toJson(log_ok);
      return logok;
   }

   @RequestMapping(value = "/ij_id_check", method = RequestMethod.GET, produces="text/plain;charset=UTF-8")
   public @ResponseBody String ij_id_check(HttpServletRequest request, Model model) {   
      String id=request.getParameter("id");
      IDao dao = sqlSession.getMapper(IDao.class);
      ArrayList<MDto> id_ok=dao.ij_id_check(id);
      Gson gson=new Gson();
      String idok=gson.toJson(id_ok);
      return idok;
   }
   
   @RequestMapping(value = "/ij_save_my_plan", method = RequestMethod.POST)
   public @ResponseBody void ij_save_my_plan(HttpServletRequest request, Model model) {   
      try {
         request.setCharacterEncoding("UTF-8");
      } catch (UnsupportedEncodingException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }
      String t_id=request.getParameter("t_id");
      String my_name=request.getParameter("my_name");
      String my_start=request.getParameter("my_start");
      String my_place=request.getParameter("my_place");
      String my_city=request.getParameter("my_city");
      IDao dao = sqlSession.getMapper(IDao.class);
      dao.ij_save_my_plan(t_id, my_name, my_start,my_city, my_place);
   }
   
   @RequestMapping(value = "/ij_my_plan_page", method = RequestMethod.GET)
   public String ij_my_plan_page(HttpServletRequest request, Model model) {   
       if(session.getAttribute("loginCheck")!=null){
          model.addAttribute("id",session.getAttribute("id"));
          model.addAttribute("t_id",session.getAttribute("t_id"));
          model.addAttribute("icon",session.getAttribute("icon"));
       }

      return "ij_show_my_plan";
   }
   
   
   
   @RequestMapping(value = "/ij_show_my_plan", method = RequestMethod.GET, produces="text/plain;charset=UTF-8")
   public @ResponseBody String ij_show_my_plan(HttpServletRequest request, Model model) {   
       if(session.getAttribute("loginCheck")!=null){
          model.addAttribute("id",session.getAttribute("id"));
          model.addAttribute("t_id",session.getAttribute("t_id"));
          model.addAttribute("icon",session.getAttribute("icon"));
       }
      String t_id=request.getParameter("t_id");
      IDao dao = sqlSession.getMapper(IDao.class);

      ArrayList<PDto> plans=dao.ij_show_my_plan(t_id);
      Gson gson=new Gson();
      String planslist=gson.toJson(plans);
      return planslist;
   }
   
   @RequestMapping(value = "/ij_show_my_city_photo", method = RequestMethod.GET, produces="text/plain;charset=UTF-8")
   public @ResponseBody String ij_show_my_city_photo(HttpServletRequest request, Model model) {   

      IDao dao = sqlSession.getMapper(IDao.class);
      String my_city=request.getParameter("my_city");
      System.out.println(my_city);
      String city_img=dao.hj_yplan2(my_city);
     
      return city_img;
   }
   @RequestMapping(value = "/ij_show_photo", method = RequestMethod.GET, produces="text/plain;charset=UTF-8")
   public @ResponseBody String ij_show_photo(HttpServletRequest request, Model model) {   

      IDao dao = sqlSession.getMapper(IDao.class);
      
      String show_img=dao.ij_show_photo();
      return show_img;
   }
   
   @RequestMapping(value = "/ij_show_day_plan", method = RequestMethod.GET, produces="text/plain;charset=UTF-8")
   public @ResponseBody String ij_show_day_plan(HttpServletRequest request, Model model) { 
      String plan_id=request.getParameter("plan_id");
      IDao dao = sqlSession.getMapper(IDao.class);
      ArrayList<PDto> plans=dao.ij_show_day_plan(plan_id);
      Gson gson=new Gson();
      String planslist=gson.toJson(plans);
      return planslist;
   }
   
   @RequestMapping(value = "/ij_delete_my_plan", method = RequestMethod.GET)
   public @ResponseBody void ij_delete_my_plan(HttpServletRequest request, Model model) {   
      String plan_id=request.getParameter("plan_id");
      IDao dao = sqlSession.getMapper(IDao.class);
      dao.ij_delete_my_plan(plan_id);
   }
   
   @RequestMapping(value = "/ij_saved_plan", method = RequestMethod.GET, produces="text/plain;charset=UTF-8")
   public String ij_saved_plan(HttpServletRequest request, Model model) {   
       if(session.getAttribute("loginCheck")!=null){
          model.addAttribute("id",session.getAttribute("id"));
          model.addAttribute("t_id",session.getAttribute("t_id"));
          model.addAttribute("icon",session.getAttribute("icon"));
       }
      String plan_id=request.getParameter("plan_id");
      model.addAttribute("plan_id",plan_id);
      return "ij_saved_plan";
   }
   @RequestMapping(value = "/ij_sign_page", method = RequestMethod.GET)
   public String ij_sign_page(HttpServletRequest request, Model model) {   
      return "ij_sign_page";
   }
   @RequestMapping(value = "/ij_update_my_plan", method = RequestMethod.POST)
   public String ij_update_my_plan(HttpServletRequest request, Model model) {   
      try {
         request.setCharacterEncoding("UTF-8");
      } catch (UnsupportedEncodingException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }
      String t_id=request.getParameter("t_id");
      String my_name=request.getParameter("my_name");
      String my_start=request.getParameter("my_start");
      String my_place=request.getParameter("my_place");
      String my_city=request.getParameter("my_city");
      String plan_id=request.getParameter("plan_id");
      IDao dao = sqlSession.getMapper(IDao.class);
      dao.ij_update_my_plan(t_id, my_name, my_start,my_city, my_place,plan_id);
      return "ij_show_my_plan";
   }

   @RequestMapping(value ="/hj_yplan", method = RequestMethod.GET)
   public String hj_yplan(yplanpaging_Dto  yPgDto, Model model,
         @RequestParam(value="nowPage", required=false)String nowPage,
         @RequestParam(value="cntPerPage", required=false)String cntPerPage) {
       if(session.getAttribute("loginCheck")!=null){
          model.addAttribute("id",session.getAttribute("id"));
          model.addAttribute("t_id",session.getAttribute("t_id"));
          model.addAttribute("icon",session.getAttribute("icon"));
       }
      System.out.println("/hj_yplan");
      IDao dao = sqlSession.getMapper(IDao.class);
      int total = dao.yplan_listCnt();
      if(nowPage==null && cntPerPage==null) {
         nowPage="1";
         cntPerPage="5";
      } else if (nowPage==null) {
         nowPage="1";
      } else if (cntPerPage==null) {
         cntPerPage="5";
      }
      
      yPgDto = new yplanpaging_Dto(total, Integer.parseInt(nowPage),Integer.parseInt(cntPerPage));
      model.addAttribute("ypaging", yPgDto);
      model.addAttribute("hj_yplan",dao.yplanpaging_Dao(yPgDto));
       System.out.println(yPgDto);
       System.out.println(dao.yplanpaging_Dao(yPgDto));
       System.out.println(dao.yplan_listCnt());
      return "hj_yplan";
      
   }
   
   @RequestMapping(value = "/hj_yplan_submit", method = RequestMethod.GET)
   public String hj_yplan_submit(HttpServletRequest request, Model model) {   
       if(session.getAttribute("loginCheck")!=null){
          model.addAttribute("id",session.getAttribute("id"));
          model.addAttribute("t_id",session.getAttribute("t_id"));
          model.addAttribute("icon",session.getAttribute("icon"));
       }
      String my_id=request.getParameter("my_id");
      String my_city=request.getParameter("my_city");
      System.out.println(my_city);
      IDao dao = sqlSession.getMapper(IDao.class);
      String city_img=dao.hj_yplan2(my_city);
      
      model.addAttribute("my_id",my_id);
      model.addAttribute("city_img",city_img);
      return "hj_yplan2";
      
   }
   @RequestMapping(value = "/hj_yplan_clip", method = RequestMethod.GET)
   public @ResponseBody void hj_yplan_clip(HttpServletRequest request, Model model) {
      System.out.println("/clip");
      String t_id = request.getParameter("t_id");
      String my_id = request.getParameter("my_id");
      IDao dao = sqlSession.getMapper(IDao.class);
      dao.hj_yplan_clip(request.getParameter("t_id"), request.getParameter("my_id"));
   }

   @RequestMapping(value = "/ij_show_my_plan2", method = RequestMethod.GET)
      public String ij_show_my_plan2(HttpServletRequest request, Model model) {   
           if(session.getAttribute("loginCheck")!=null){
              model.addAttribute("id",session.getAttribute("id"));
              model.addAttribute("t_id",session.getAttribute("t_id"));
              model.addAttribute("icon",session.getAttribute("icon"));
              String t_id=(String) session.getAttribute("t_id");
              IDao dao = sqlSession.getMapper(IDao.class);
            model.addAttribute("ij_show_my_plan2",dao.ij_show_my_plan2(t_id));

              return "ij_show_my_plan2";
           }
           return "hj_log";
      }
   @RequestMapping(value = "/hj_delete_clip", method = RequestMethod.GET)
   public @ResponseBody void hj_delete_clip(HttpServletRequest request, Model model) {
      String plan_id = request.getParameter("plan_id");
      String t_id=(String) session.getAttribute("t_id");
      IDao dao = sqlSession.getMapper(IDao.class);
      dao.hj_delete_clip(plan_id,t_id);
   }
   
   @RequestMapping(value = "/hj_my", method = RequestMethod.GET)
   public String hj_my(HttpServletRequest request, Model model) {   
       if(session.getAttribute("loginCheck")!=null){
             model.addAttribute("id",session.getAttribute("id"));
             model.addAttribute("t_id",session.getAttribute("t_id"));
             model.addAttribute("icon",session.getAttribute("icon"));
            return "ij_show_my_plan";
          }
        return "hj_log";
   }

   
   @RequestMapping(value = "/ij_show_my_plan3", method = RequestMethod.GET)
   public String ij_show_my_plan3(HttpServletRequest request, Model model) {   
       if(session.getAttribute("loginCheck")!=null){
             model.addAttribute("id",session.getAttribute("id"));
             model.addAttribute("t_id",session.getAttribute("t_id"));
             model.addAttribute("icon",session.getAttribute("icon"));
            return "ij_show_my_plan3";
          }
        return "hj_log";
   }
   
   @RequestMapping(value = "/ij_show_my_plan4", method={RequestMethod.GET, RequestMethod.POST})
   public String ij_show_my_plan4(PageDto PgDto, Model model,
								  @RequestParam(value="nowPage", required=false)String nowPage,
								  @RequestParam(value="cntPerPage", required=false)String cntPerPage) {   
	   System.out.println("myQna");
       IDao dao = sqlSession.getMapper(IDao.class);
	   String id=(String) session.getAttribute("id");
	   int total = dao.myQnaCnt(id);
       if(nowPage==null && cntPerPage==null) {
          nowPage="1";
          cntPerPage="5";
       } else if (nowPage==null) {
          nowPage="1";
       } else if (cntPerPage==null) {
          cntPerPage="5";
       }
       dao.myQna(id);
       PgDto = new PageDto(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
       model.addAttribute("paging", PgDto);
       model.addAttribute("list",dao.myQna(id));
       System.out.println(dao.myQna(id));
       System.out.println(id);
       System.out.println(dao.myQnaCnt(id));
       
       
       return "/ij_show_my_plan4";	   
   }
   
   @RequestMapping(value = "/ij_show_my_plan5", method = RequestMethod.GET)
   public String ij_show_my_plan5(HttpServletRequest request, Model model) {   
         if(session.getAttribute("loginCheck")!=null){
               model.addAttribute("id",session.getAttribute("id"));
               model.addAttribute("t_id",session.getAttribute("t_id"));
               model.addAttribute("icon",session.getAttribute("icon"));
              return "ij_show_my_plan5";
          }
        return "hj_log";
   }
   
   @RequestMapping(value = "/hj_log", method = RequestMethod.GET)
   public String hj_log(HttpServletRequest request, Model model) {   
       if(session.getAttribute("loginCheck")!=null){
             model.addAttribute("id",session.getAttribute("id"));
             model.addAttribute("t_id",session.getAttribute("t_id"));
             model.addAttribute("icon",session.getAttribute("icon"));
            return "home";
          }
        return "hj_log";
   }
   @RequestMapping(value = "/review_submit", method = RequestMethod.POST)
   public @ResponseBody void review_submit(HttpServletRequest request, Model model) {   
      try {
          request.setCharacterEncoding("UTF-8");
       } catch (UnsupportedEncodingException e) {
          // TODO Auto-generated catch block
          e.printStackTrace();
       }
      System.out.println("review_submit()");
      IDao dao = sqlSession.getMapper(IDao.class);
      dao.review_submit(request.getParameter("t_id"),request.getParameter("m_id"),request.getParameter("my_id"),
                      request.getParameter("y_review"));
   }
   
   @RequestMapping(value = "/review_list", method = RequestMethod.GET, produces="text/plain;charset=UTF-8")
   public @ResponseBody String review_list(HttpServletRequest request, Model model) {   
      System.out.println("review_list()");
      String my_id=request.getParameter("my_id");
      IDao dao = sqlSession.getMapper(IDao.class);
      ArrayList<YDto> review_list=dao.review_list(my_id);
       Gson gson=new Gson();
       String reviewlist=gson.toJson(review_list);
       return reviewlist;

   }
   
   
   
   @RequestMapping(value="/tripInfo",method=RequestMethod.GET)
    public String main (Locale locale,Model model) {
       if(session.getAttribute("loginCheck")!=null){
             model.addAttribute("id",session.getAttribute("id"));
             model.addAttribute("t_id",session.getAttribute("t_id"));
             model.addAttribute("icon",session.getAttribute("icon"));
          }
       return "TR_main";
    }
      /**
       * Simply selects the home view to render by returning its name.
       */
   
    //아시아
   
    @RequestMapping(value = "/cities", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
    public String cities(HttpServletRequest request, Model model) {
        try {
            request.setCharacterEncoding("UTF-8");
         } catch (UnsupportedEncodingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         }
      if(session.getAttribute("loginCheck")!=null){
            model.addAttribute("id",session.getAttribute("id"));
            model.addAttribute("t_id",session.getAttribute("t_id"));
            model.addAttribute("icon",session.getAttribute("icon"));
       }
       String lat = request.getParameter("lat");
       String kor = request.getParameter("kor");
       String link = request.getParameter("link");
       String money = request.getParameter("money");
       String change = request.getParameter("change");
       IDao dao = sqlSession.getMapper(IDao.class);
       model.addAttribute("list", dao.list(kor));
       model.addAttribute("lat",lat);
       model.addAttribute("kor",kor);
       model.addAttribute("link",link);
       model.addAttribute("money",money);
       model.addAttribute("change",change);
       return "TR_World";
    }
       
       @RequestMapping(value = "/qnaList", method = {RequestMethod.POST,RequestMethod.GET}, produces = "text/plain;charset=UTF-8")
      public String qnaList(PageDto PgDto, Model model,
    		  				@RequestParam(value="nowPage", required=false)String nowPage,
    		  				@RequestParam(value="cntPerPage", required=false)String cntPerPage) {
      if(session.getAttribute("loginCheck")!=null){
            model.addAttribute("id",session.getAttribute("id"));
            model.addAttribute("t_id",session.getAttribute("t_id"));
            model.addAttribute("icon",session.getAttribute("icon"));
          }
         System.out.println("list");
         IDao dao = sqlSession.getMapper(IDao.class);
         int total = dao.listCnt();
         if(nowPage==null && cntPerPage==null) {
            nowPage="1";
            cntPerPage="5";
         } else if (nowPage==null) {
            nowPage="1";
         } else if (cntPerPage==null) {
            cntPerPage="5";
         }
         
         PgDto = new PageDto(total, Integer.parseInt(nowPage),Integer.parseInt(cntPerPage));
         model.addAttribute("paging", PgDto);
         model.addAttribute("list",dao.PageDao(PgDto));
         System.out.println(dao.PageDao(PgDto));
         System.out.println(dao.listCnt());
         return "/qnaList";
         
      }
       
   @RequestMapping("/qnaContent_write")
   public String write_view(Model model) {
      if(session.getAttribute("loginCheck")!=null){
            model.addAttribute("id",session.getAttribute("id"));
            model.addAttribute("t_id",session.getAttribute("t_id"));
            model.addAttribute("icon",session.getAttribute("icon"));
       } else {
    	   return "hj_log";
       }
      System.out.println("write_view");
      return "/qnaContent_write";
   }
   
    @RequestMapping(value = "/write", method = {RequestMethod.POST,RequestMethod.GET}, produces = "text/plain;charset=UTF-8")
   public String write(HttpServletRequest request,Model model) {
        try {
            request.setCharacterEncoding("UTF-8");
         } catch (UnsupportedEncodingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         }
      System.out.println("write");
      
      IDao dao=sqlSession.getMapper(IDao.class);
      dao.write(request.getParameter("id"), request.getParameter("title"), request.getParameter("content"));
      System.out.println(request.getParameter("id"));
      System.out.println(request.getParameter("title"));
      System.out.println(request.getParameter("content"));
      return "redirect:qnaList";
   }
   
    @RequestMapping(value = "/qnaContent_view", method = RequestMethod.GET, produces = "text/plain;charset=UTF-8")
   public String content_view(HttpServletRequest request, Model model) {
       if(session.getAttribute("loginCheck")!=null){
            model.addAttribute("id",session.getAttribute("id"));
            model.addAttribute("t_id",session.getAttribute("t_id"));
            model.addAttribute("icon",session.getAttribute("icon"));
       }
      System.out.println("content_view");
      String q_id=request.getParameter("q_id");
      IDao dao=sqlSession.getMapper(IDao.class);
      dao.hitPlus(q_id);
      model.addAttribute("dto",dao.content_view(q_id));
      model.addAttribute("comment",dao.comment(q_id));
      
      
      return "qnaContent_view";
   }
   
   @RequestMapping(value = "/comment_write", method = {RequestMethod.POST,RequestMethod.GET}, produces = "text/plain;charset=UTF-8")
   public String Comment_wirte(HttpServletRequest request, Model model) {
      if(session.getAttribute("loginCheck")!=null){
            model.addAttribute("id",session.getAttribute("id"));
            model.addAttribute("t_id",session.getAttribute("t_id"));
            model.addAttribute("icon",session.getAttribute("icon"));
       }
        try {
            request.setCharacterEncoding("UTF-8");
         } catch (UnsupportedEncodingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         }
      IDao dao=sqlSession.getMapper(IDao.class);
      System.out.println(request.getParameter("q_id"));
      System.out.println(request.getParameter("comment"));
      String q_id=request.getParameter("q_id");
      dao.comment_write(q_id, request.getParameter("id"), request.getParameter("comment"));
      
      model.addAttribute("dto",dao.content_view(q_id));
      model.addAttribute("comment",dao.comment(q_id));
      
      return "qnaContent_view";
   }
   
   
   
}