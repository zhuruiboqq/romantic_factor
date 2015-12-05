package com.romantic.factor.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.romantic.factor.entity.Dress;
import com.romantic.factor.entity.MakeupMakeer;
import com.romantic.factor.entity.MakeupWorks;
import com.romantic.factor.entity.Photoer;
import com.romantic.factor.entity.PhotoerWorks;
import com.romantic.factor.service.DressService;
import com.romantic.factor.service.MakeupMakeerService;
import com.romantic.factor.service.MakeupWorksService;
import com.romantic.factor.service.PhotoerService;
import com.romantic.factor.service.PhotoerWorksService;
import com.romantic.factor.service.WeddingParamService;

@Controller
@RequestMapping(value = "/")
public class DisplayController {
	private static Logger logger=LoggerFactory.getLogger(DisplayController.class);
	
	@Autowired
	private WeddingParamService weddingParamService;
	@Autowired
	private PhotoerService photoerService;
	@Autowired
	private PhotoerWorksService photoerWorksService;
	@Autowired
	private MakeupMakeerService makeupMakeerService;
	@Autowired
	private MakeupWorksService makeupWorksService;
	@Autowired
	private DressService dressService;
	
//	private List<WeddingParam> sortList(List<WeddingParam> list){
//		List<WeddingParam> list_return= new ArrayList<WeddingParam>();
//		Map<Integer,WeddingParam> map=new TreeMap<Integer,WeddingParam>();
//		//List<WeddingParam> list_unfinish= new ArrayList<WeddingParam>();
//		if(list==null||list.size()>0){
//			return null;
//		}
//		for(WeddingParam weddingParam:list){
//			map.put(weddingParam.getPriority(), weddingParam);
//		}
//		
//		List<Map.Entry<Integer,WeddingParam>> list1 = new ArrayList<Map.Entry<Integer,WeddingParam>>(map.entrySet());
//        //然后通过比较器来实现排序
//        Collections.sort(list1,new Comparator<Map.Entry<Integer,WeddingParam>>() {
//            //升序排序
//            public int compare(Entry<Integer,WeddingParam> o1,
//                    Entry<Integer,WeddingParam> o2) {
//                return o2.getKey().compareTo(o1.getKey());
//            }
//            
//        });
//        
//        for(Map.Entry<Integer,WeddingParam> mapping:list1){ 
//               //System.out.println(mapping.getKey()+":"+mapping.getValue()); 
//        	list_return.add(mapping.getValue());
//        } 
//		
//		return list_return;
//	}

	@RequestMapping(value = "/makeupMakeer.do")
	public String makeupMakeer(@RequestParam("page") Integer pageid,Model model) {
		try{
		if(pageid<1){
			return null;
		}
		MakeupMakeer makeupMakeer= new MakeupMakeer();
		makeupMakeer.setPageid((pageid-1)*12);
		makeupMakeer.setPageSize(12);
		List<MakeupMakeer> list=makeupMakeerService.selectMakeupMakeer(makeupMakeer);
		int pageCount=makeupMakeerService.countMakeupMakeer();
		int page=pageCount/12+1;
		model.addAttribute("makeupMakeerList", list);
		model.addAttribute("pageCount", page);
		model.addAttribute("pageid",pageid);
		pageHandle(pageid, model, page);
		
		
		//model.addAttribute("page", pageid);
		return "romantic_factor/makeup_makeer.jsp";
		}catch(Exception e){
			e.printStackTrace();
			return "romantic_factor/404.html";
		}
		
	}

	private void pageHandle(Integer pageid, Model model, int page) {
		if(pageid>=2&&page>3){
			model.addAttribute("page_first_ignore", true);
		}
		
		if(pageid<page-2&&page>3){
			model.addAttribute("page_last_ignore", true);
		}
		
		if(page==pageid&&page>2){
			model.addAttribute("page", pageid-2);
			model.addAttribute("page1", pageid-1);
			model.addAttribute("page2", pageid);
			model.addAttribute("nextPage", pageid);
		}else if(page-1==pageid&&page>2){
			model.addAttribute("page", pageid-1);
			model.addAttribute("page1", pageid);
			model.addAttribute("page2", pageid+1);
			model.addAttribute("nextPage", pageid+1);
		}else{
			if(page==1){
				model.addAttribute("page", 1);
				model.addAttribute("page1", 0);
				model.addAttribute("page2", 0);
				model.addAttribute("nextPage",1);
			}else if(page==2){
				model.addAttribute("page", 1);
				model.addAttribute("page1", 2);
				model.addAttribute("page2", 0);
				model.addAttribute("nextPage",2);
			}else{
				model.addAttribute("page", pageid);
				model.addAttribute("page1", pageid+1);
				model.addAttribute("page2", pageid+2);
				model.addAttribute("nextPage", pageid+3);
			}
		}
	}
	
	@RequestMapping(value = "/makeupWorks.do")
	public String makeupWorks(HttpServletRequest req,@RequestParam("page") Integer pageid,@RequestParam("makeer_id") Integer makeer_id,Model model) {
		try{
		if(makeer_id<1||pageid<1){
			return null;
		}
		MakeupWorks makeupWorks= new MakeupWorks();
		makeupWorks.setPageid((pageid-1)*12);
		makeupWorks.setPageSize(12);
		makeupWorks.setMakeer_id(makeer_id);
		List<MakeupWorks> list=makeupWorksService.selectMakeupWorks(makeupWorks);
		int pageCount=makeupWorksService.countMakeupWorks(makeer_id);
		int page=pageCount/12+1;
		//Photoer photoer = photoerService.selectPhotoerByid(makeer_id);
		MakeupMakeer makeupMakeer=makeupMakeerService.selectMakeupMakeerByid(makeer_id);
		model.addAttribute("makeupWorksList", list);
		model.addAttribute("pageCount", page);
		model.addAttribute("makeupMakeer", makeupMakeer);
		model.addAttribute("pageid",pageid);
		req.setAttribute("id", makeupMakeer.getId());
		req.setAttribute("name", makeupMakeer.getName());
		req.setAttribute("degree", makeupMakeer.getDegree());
		req.setAttribute("content", makeupMakeer.getContent());
		pageHandle(pageid, model, page);
		
		
		//model.addAttribute("page", pageid);
		return "romantic_factor/makeup_works.jsp";
		}catch(Exception e){
			e.printStackTrace();
			return "romantic_factor/404.html";
		}
		
	}
	
	@RequestMapping(value = "/photoer.do")
	public String photoer(@RequestParam("page") Integer pageid,Model model) {
		try{
		if(pageid<1){
			return null;
		}
		Photoer p= new Photoer();
		p.setPageid((pageid-1)*12);
		p.setPageSize(12);
		List<Photoer> list=photoerService.selectPhotoer(p);
		int pageCount=photoerService.countPhotoer();
		int page=pageCount/12+1;
		model.addAttribute("photoerList", list);
		model.addAttribute("pageCount", page);
		model.addAttribute("pageid",pageid);
		pageHandle(pageid, model, page);
		
		
		//model.addAttribute("page", pageid);
		return "romantic_factor/photoer.jsp";
		}catch(Exception e){
			e.printStackTrace();
			return "romantic_factor/404.html";
		}
		
	}
	
	@RequestMapping(value = "/photoerWorks.do")
	public String photoerWorks(HttpServletRequest req,@RequestParam("page") Integer pageid,@RequestParam("photoer_id") Integer photoer_id,Model model) {
		try{
		if(photoer_id<1||pageid<1){
			return null;
		}
		PhotoerWorks p= new PhotoerWorks();
		p.setPageid((pageid-1)*12);
		p.setPageSize(12);
		p.setPhotoer_id(photoer_id);
		List<PhotoerWorks> list=photoerWorksService.selectPhotoerWorks(p);
		int pageCount=photoerWorksService.countPhotoerWorks(p);
		int page=pageCount/12+1;
		Photoer photoer = photoerService.selectPhotoerByid(photoer_id);
		model.addAttribute("photoerWorksList", list);
		model.addAttribute("pageCount", page);
		model.addAttribute("photoer", photoer);
		model.addAttribute("pageid",pageid);
		req.setAttribute("name", photoer.getName());
		req.setAttribute("degree", photoer.getDegree());
		req.setAttribute("content", photoer.getContent());
		

		pageHandle(pageid, model, page);
		
		
		//model.addAttribute("page", pageid);
		return "romantic_factor/photoer_works.jsp";
		}catch(Exception e){
			e.printStackTrace();
			return "romantic_factor/404.html";
		}
		
	}
	
	@RequestMapping(value = "/dress.do")
	public String dress(HttpServletRequest req,@RequestParam("page") Integer pageid,@RequestParam("type") Integer type,Model model) {
		try{
		if(type<1||pageid<1){
			return null;
		}
		
		Dress p= new Dress();
		p.setPageid((pageid-1)*12);
		p.setPageSize(12);
		p.setType(type);
		List<Dress> list=dressService.selectDress(p);
		int pageCount=dressService.countDress(p);
		int page=pageCount/12+1;
		//Photoer photoer = photoerService.selectPhotoerByid(photoer_id);
		model.addAttribute("dressList", list);
		model.addAttribute("pageCount", page);
		model.addAttribute("type", type);
		model.addAttribute("pageid",pageid);
		//req.setAttribute("type", type);
		pageHandle(pageid, model, page);
		
			return "romantic_factor/dress_wedding.jsp";
		}catch(Exception e){
			e.printStackTrace();
			return "romantic_factor/404.html";
		}
		
	}
	
	@RequestMapping(value = "/clean.do")
	public void clean() {
		System.out.println("clean!");
		photoerWorksService.clean();
	}
	
	
	@RequestMapping(value = "/romanticFactor.do")
	public String romanticFactor() {
		return "romantic_factor/romantic_factor.html";
	}
	
	@RequestMapping(value = "/training.do")
	public String training() {
		return "romantic_factor/training.html";
	}
	
	@RequestMapping(value = "/mealTripInfo.do")
	public String mealTripInfo() {
		return "romantic_factor/meal_trip_info.html";
	}
	
	@RequestMapping(value = "/mealRecommendLocation.do")
	public String mealRecommendLocation() {
		return "romantic_factor/meal_recommend_location.html";
	}
	
	@RequestMapping(value = "/mealLeaveWords.do")
	public String mealLeaveWords() {
		return "romantic_factor/meal_leave_words.html";
	}
	
	
	@RequestMapping(value = "/mealIntroduce.do")
	public String mealIntroduce() {
		return "romantic_factor/meal_introduce.html";
	}
	
	@RequestMapping(value = "/brandStory.do")
	public String brandStory() {
		return "romantic_factor/brand_story.html";
	}
	
	@RequestMapping(value = "/brandPromise.do")
	public String brandPromise() {
		return "romantic_factor/brand_promise.html";
	}
	
	@RequestMapping(value = "/brandCharacteristic.do")
	public String brandCharacteristic() {
		return "romantic_factor/brand_characteristic.html";
	}
	
	@RequestMapping(value = "/brandAboutUs.do")
	public String brandAboutUs() {
		return "romantic_factor/brand_about_us.html";
	}
	
	@RequestMapping(value = "/brandAboutPrivacy.do")
	public String brandAboutPrivacy() {
		return "romantic_factor/brand_about_privacy.html";
	}
	
}