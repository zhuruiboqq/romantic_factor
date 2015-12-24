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

import com.romantic.factor.common.util.PageHandler;
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
	private static Logger logger = LoggerFactory.getLogger(DisplayController.class);

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
	public String makeupMakeer(@RequestParam("page") Integer pageid, Model model) {
		try {
			PageHandler pageHandler = new PageHandler();
			pageHandler.setCurPageIndex(pageid);
			if (pageHandler.getCurPageIndex() < 1) {
				return null;
			}

			List<MakeupMakeer> pageResultList = makeupMakeerService.selectMakeupMakeer(pageHandler);
			int totalRecordCount = makeupMakeerService.countMakeupMakeer();
			pageHandler.setTotalRecordCount(totalRecordCount);
			pageHandler.setCurPageResultList(pageResultList);
			pageHandler.processModel(model);

			return "romantic_factor/makeup_makeer.jsp";
		} catch (Exception e) {
			e.printStackTrace();
			return "romantic_factor/404.jsp";
		}

	}

	@RequestMapping(value = "/makeupWorks.do")
	public String makeupWorks(HttpServletRequest req, @RequestParam("page") Integer pageid, @RequestParam("artistID") Integer artistID, Model model) {
		try {
			PageHandler pageHandler = new PageHandler();
			pageHandler.setCurPageIndex(pageid);
			if (pageHandler.getCurPageIndex() < 1) {
				return null;
			}

			List<MakeupWorks> pageResultList = makeupWorksService.selectMakeupWorks(pageHandler, artistID);
			int totalRecordCount = makeupWorksService.countMakeupWorks(artistID);
			pageHandler.setTotalRecordCount(totalRecordCount);
			pageHandler.setCurPageResultList(pageResultList);
			pageHandler.processModel(model);

			MakeupMakeer artistInfo = makeupMakeerService.selectMakeupMakeerByid(artistID);
			model.addAttribute("artistInfo", artistInfo);
			return "romantic_factor/makeup_works.jsp";
		} catch (Exception e) {
			e.printStackTrace();
			return "romantic_factor/404.jsp";
		}

	}

	@RequestMapping(value = "/photoer.do")
	public String photoer(@RequestParam("page") Integer pageid, Model model) {
		try {
			PageHandler pageHandler = new PageHandler();
			pageHandler.setCurPageIndex(pageid);
			if (pageHandler.getCurPageIndex() < 1) {
				return null;
			}

			List<Photoer> pageResultList = photoerService.selectPhotoer(pageHandler);
			int totalRecordCount = photoerService.countPhotoer();
			pageHandler.setTotalRecordCount(totalRecordCount);
			pageHandler.setCurPageResultList(pageResultList);
			pageHandler.processModel(model);
			return "romantic_factor/photoer.jsp";
		} catch (Exception e) {
			e.printStackTrace();
			return "romantic_factor/404.jsp";
		}

	}

	@RequestMapping(value = "/photoerWorks.do")
	public String photoerWorks(HttpServletRequest req, @RequestParam("page") Integer pageid, @RequestParam("artistID") Integer artistID, Model model) {
		try {
			PageHandler pageHandler = new PageHandler();
			pageHandler.setCurPageIndex(pageid);
			if (pageHandler.getCurPageIndex() < 1) {
				return null;
			}

			List<PhotoerWorks> pageResultList = photoerWorksService.selectPhotoerWorks(pageHandler, artistID);
			int totalRecordCount = photoerWorksService.countPhotoerWorks(artistID);
			pageHandler.setTotalRecordCount(totalRecordCount);
			pageHandler.setCurPageResultList(pageResultList);
			pageHandler.processModel(model);

			Photoer artistInfo = photoerService.selectPhotoerByid(artistID);
			model.addAttribute("artistInfo", artistInfo);
			return "romantic_factor/photoer_works.jsp";
		} catch (Exception e) {
			e.printStackTrace();
			return "romantic_factor/404.jsp";
		}

	}

	@RequestMapping(value = "/dress.do")
	public String dress(HttpServletRequest req, @RequestParam("page") Integer pageid, @RequestParam("type") Integer type, Model model) {
		try {
			PageHandler pageHandler = new PageHandler();
			pageHandler.setCurPageIndex(pageid);
			if (pageHandler.getCurPageIndex() < 1) {
				return null;
			}

			List<Dress> pageResultList = dressService.selectDress(pageHandler, type);
			int totalRecordCount = dressService.countDress(type);
			pageHandler.setTotalRecordCount(totalRecordCount);
			pageHandler.setCurPageResultList(pageResultList);
			pageHandler.processModel(model);
			
			model.addAttribute("type", type);
			return "romantic_factor/dress_wedding.jsp";
		} catch (Exception e) {
			e.printStackTrace();
			return "romantic_factor/404.jsp";
		}

	}

	@RequestMapping(value = "/clean.do")
	public void clean() {
		System.out.println("clean!");
		photoerWorksService.clean();
	}

	@RequestMapping(value = "/romanticFactor.do")
	public String romanticFactor() {
		return "romantic_factor/romantic_factor.jsp";
	}

	@RequestMapping(value = "/training.do")
	public String training() {
		return "romantic_factor/training.jsp";
	}

	@RequestMapping(value = "/mealTripInfo.do")
	public String mealTripInfo() {
		return "romantic_factor/meal_trip_info.jsp";
	}

	@RequestMapping(value = "/mealRecommendLocation.do")
	public String mealRecommendLocation() {
		return "romantic_factor/meal_recommend_location.jsp";
	}

	@RequestMapping(value = "/mealLeaveWords.do")
	public String mealLeaveWords() {
		return "romantic_factor/meal_leave_words.jsp";
	}

	@RequestMapping(value = "/mealIntroduce.do")
	public String mealIntroduce() {
		return "romantic_factor/meal_introduce.jsp";
	}

	@RequestMapping(value = "/brandStory.do")
	public String brandStory() {
		return "romantic_factor/brand_story.jsp";
	}

	@RequestMapping(value = "/brandPromise.do")
	public String brandPromise() {
		return "romantic_factor/brand_promise.jsp";
	}

	@RequestMapping(value = "/brandCharacteristic.do")
	public String brandCharacteristic() {
		return "romantic_factor/brand_characteristic.jsp";
	}

	@RequestMapping(value = "/brandAboutUs.do")
	public String brandAboutUs() {
		return "romantic_factor/brand_about_us.jsp";
	}

	@RequestMapping(value = "/brandAboutPrivacy.do")
	public String brandAboutPrivacy() {
		return "romantic_factor/brand_about_privacy.jsp";
	}

	@RequestMapping(value = "/initImage.do")
	public void initImage(HttpServletRequest req, Model model) {
		
//		return "romantic_factor/brand_about_privacy.jsp";
	}
}