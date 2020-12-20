package com.liuhao.controller.admin;

import com.liuhao.domain.admin.Book;
import com.liuhao.page.admin.Page;
import com.liuhao.service.admin.BookCategoryService;
import com.liuhao.service.admin.BookService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * 书籍控制器
 *
 */
@RequestMapping("/admin/news")
@Controller
public class BookController {

	@Autowired
	private BookCategoryService bookCategoryService;

	@Autowired
	private BookService bookService;

	/**
	 * 书籍列表页面
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/list",method= RequestMethod.GET)
	public ModelAndView list(ModelAndView model){
		model.addObject("bookCategoryList", bookCategoryService.findAll());
		model.setViewName("book/list");
		return model;
	}

	/**
	 * 书籍添加页面
	 */
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public ModelAndView add(ModelAndView model){
		model.addObject("bookCategoryList", bookCategoryService.findAll());
		model.setViewName("book/add");
		return model;
	}

	/**
	 * 书籍添加

	 */
	@RequestMapping(value="/add",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,String> add(Book book){
		Map<String,String> ret = new HashMap<String, String>();
		if(book == null){
			ret.put("type", "error");
			ret.put("msg", "请填写正确的信息！");
			return ret;
		}
		if(StringUtils.isEmpty(book.getTitle())){
			ret.put("type", "error");
			ret.put("msg", "书籍标题不能为空！");
			return ret;
		}
		if(book.getCategoryId() == null){
			ret.put("type", "error");
			ret.put("msg", "请选择书籍分类！");
			return ret;
		}
		if(StringUtils.isEmpty(book.getAbstrs())){
			ret.put("type", "error");
			ret.put("msg", "书籍摘要不能为空！");
			return ret;
		}
		if(StringUtils.isEmpty(book.getTags())){
			ret.put("type", "error");
			ret.put("msg", "书籍标签不能为空！");
			return ret;
		}
		if(StringUtils.isEmpty(book.getPhoto())){
			ret.put("type", "error");
			ret.put("msg", "书籍封面图片必须上传！");
			return ret;
		}
		if(StringUtils.isEmpty(book.getAuthor())){
			ret.put("type", "error");
			ret.put("msg", "书籍作者不能为空！");
			return ret;
		}
		if(StringUtils.isEmpty(book.getContent())){
			ret.put("type", "error");
			ret.put("msg", "书籍内容不能为空！");
			return ret;
		}
		book.setCreateTime(new Date());
		if(bookService.add(book) <= 0){
			ret.put("type", "error");
			ret.put("msg", "添加失败，请联系管理员！");
			return ret;
		}
		ret.put("type", "success");
		ret.put("msg", "添加成功！");
		return ret;
	}


	/**
	 * 书籍编辑页面
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/edit",method=RequestMethod.GET)
	public ModelAndView edit(ModelAndView model,Long id){
		model.addObject("bookCategoryList", bookCategoryService.findAll());
		model.addObject("book", bookService.find(id));
		model.setViewName("book/edit");
		return model;
	}

	/**
	 * 书籍信息编辑
	 * @param
	 * @return
	 */
	@RequestMapping(value="/edit",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,String> edit(Book book){
		Map<String,String> ret = new HashMap<String, String>();
		if(book == null){
			ret.put("type", "error");
			ret.put("msg", "请填写正确的信息！");
			return ret;
		}
		if(StringUtils.isEmpty(book.getTitle())){
			ret.put("type", "error");
			ret.put("msg", "书籍标题不能为空！");
			return ret;
		}
		if(book.getCategoryId() == null){
			ret.put("type", "error");
			ret.put("msg", "请选择书籍分类！");
			return ret;
		}
		if(StringUtils.isEmpty(book.getAbstrs())){
			ret.put("type", "error");
			ret.put("msg", "书籍摘要不能为空！");
			return ret;
		}
		if(StringUtils.isEmpty(book.getTags())){
			ret.put("type", "error");
			ret.put("msg", "书籍标签不能为空！");
			return ret;
		}
		if(StringUtils.isEmpty(book.getPhoto())){
			ret.put("type", "error");
			ret.put("msg", "书籍封面图片必须上传！");
			return ret;
		}
		if(StringUtils.isEmpty(book.getAuthor())){
			ret.put("type", "error");
			ret.put("msg", "书籍作者不能为空！");
			return ret;
		}
		if(StringUtils.isEmpty(book.getContent())){
			ret.put("type", "error");
			ret.put("msg", "书籍内容不能为空！");
			return ret;
		}
		if(bookService.edit(book) <= 0){
			ret.put("type", "error");
			ret.put("msg", "修改失败，请联系管理员！");
			return ret;
		}
		ret.put("type", "success");
		ret.put("msg", "修改成功！");
		return ret;
	}

	/**
	 * 删除书籍
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/delete",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,String> delete(Long id){
		Map<String,String> ret = new HashMap<String, String>();
		if(id == null){
			ret.put("type", "error");
			ret.put("msg", "请选择要删除的信息！");
			return ret;
		}
		try{
			if(bookService.delete(id) <= 0){
				ret.put("type", "error");
				ret.put("msg", "删除失败，请联系管理员！");
				return ret;
			}
		}catch(Exception e){
			ret.put("type", "error");
			ret.put("msg", "该书籍下有评论信息，不可删除！");
			return ret;
		}
		ret.put("type", "success");
		ret.put("msg", "删除成功！");
		return ret;
	}

	/**
	 * 分页模糊搜索查询列表
	 * @param
	 * @param page
	 * @return
	 */
	@RequestMapping(value="/list",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> getList(
			@RequestParam(name="title",required=false,defaultValue="") String title,
			@RequestParam(name="author",required=false,defaultValue="") String author,
			@RequestParam(name="categoryId",required=false) Long categoryId,
			Page page
	){
		Map<String,Object> ret = new HashMap<String, Object>();
		Map<String,Object> queryMap = new HashMap<String, Object>();
		queryMap.put("title", title);
		queryMap.put("author", author);
		if(categoryId != null && categoryId.longValue() != -1){
			queryMap.put("categoryId", categoryId);
		}
		queryMap.put("offset", page.getOffset());
		queryMap.put("pageSize", page.getRows());
		ret.put("rows", bookService.findList(queryMap));
		ret.put("total", bookService.getTotal(queryMap));
		return ret;
	}

	/**
	 * 上传图片
	 * @param photo
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/upload_photo",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> uploadPhoto(MultipartFile photo, HttpServletRequest request){
		Map<String, String> ret = new HashMap<String, String>();
		if(photo == null){
			ret.put("type", "error");
			ret.put("msg", "选择要上传的文件！");
			return ret;
		}
		if(photo.getSize() > 1024*1024*1024){
			ret.put("type", "error");
			ret.put("msg", "文件大小不能超过10M！");
			return ret;
		}
		//获取文件后缀
		String suffix = photo.getOriginalFilename().substring(photo.getOriginalFilename().lastIndexOf(".")+1,photo.getOriginalFilename().length());
		if(!"jpg,jpeg,gif,png".toUpperCase().contains(suffix.toUpperCase())){
			ret.put("type", "error");
			ret.put("msg", "请选择jpg,jpeg,gif,png格式的图片！");
			return ret;
		}
		String savePath = request.getServletContext().getRealPath("/") + "/resources/upload/";
		File savePathFile = new File(savePath);
		if(!savePathFile.exists()){
			//若不存在改目录，则创建目录
			savePathFile.mkdir();
		}
		String filename = new Date().getTime()+"."+suffix;
		try {
			//将文件保存至指定目录
			photo.transferTo(new File(savePath+filename));
		}catch (Exception e) {

			ret.put("type", "error");
			ret.put("msg", "保存文件异常！");
			e.printStackTrace();
			return ret;
		}
		ret.put("type", "success");
		ret.put("msg", "用户上传图片成功！");
		ret.put("filepath",request.getServletContext().getContextPath() + "/resources/upload/" + filename );
		return ret;
	}
}
