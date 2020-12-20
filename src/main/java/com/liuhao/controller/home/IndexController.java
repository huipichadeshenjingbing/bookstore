package com.liuhao.controller.home;


import com.liuhao.service.admin.BookCategoryService;
import com.liuhao.service.admin.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * 前台页面首页控制器
 *
 */
@RequestMapping("/index")
@Controller
public class IndexController {

	@Autowired
	private BookCategoryService bookCategoryService;

	@Autowired
	private BookService bookService;

	/**
	 * 系统首页
	 */
	@RequestMapping(value="/index",method= RequestMethod.GET)
	public ModelAndView index(ModelAndView model){
		Map<String, Object> queryMap = new HashMap<String, Object>();
		queryMap.put("offset", 0);
		queryMap.put("pageSize", 10);
		model.addObject("bookCategoryList", bookCategoryService.findAll());
		model.addObject("bookList", bookService.findList(queryMap));
		model.setViewName("home/index/index");
		//	model.setViewName("home1/index/index");
		return model;
	}

	/**
	 * 获取网站基本信息
	 * @return
	 */
	@RequestMapping(value="/get_site_info",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> getSiteInfo(){
		Map<String, Object> retMap = new HashMap<String, Object>();
		retMap.put("type", "success");
		Map<String, Object> queryMap = new HashMap<String, Object>();
		queryMap.put("offset", 0);
		queryMap.put("pageSize", 99999);
		retMap.put("totalArticle", bookService.getTotal(queryMap));
		retMap.put("siteDays", getDays("2020-03-22"));
		return retMap;
	}

	private long getDays(String data){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date startDate = null;
		try {
			startDate = sdf.parse(data);
		} catch (ParseException e) {

			e.printStackTrace();
		}
		Date endDate = new Date();
		long time = (endDate.getTime() - startDate.getTime())/1000/3600/24;
		return time;
	}
}
