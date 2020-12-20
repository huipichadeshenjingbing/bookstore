package com.liuhao.controller.home;

import com.liuhao.domain.admin.Book;
import com.liuhao.domain.admin.BookCategory;
import com.liuhao.domain.admin.Comment;
import com.liuhao.page.admin.Page;
import com.liuhao.service.admin.BookCategoryService;
import com.liuhao.service.admin.BookService;
import com.liuhao.service.admin.CommentService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * 前台书籍控制器
 *
 */
@RequestMapping("/book")
@Controller
public class HomeBookController {

	@Autowired
	private BookCategoryService bookCategoryService;

	@Autowired
	private BookService bookService;

	@Autowired
	private CommentService commentService;


	/**
	 * 查看书籍详情
	 */
	@RequestMapping(value="/detail",method=RequestMethod.GET)
	public ModelAndView detail(ModelAndView model, Long id){
		model.addObject("bookCategoryList", bookCategoryService.findAll());
		Book book = bookService.find(id);
		model.addObject("book", book);
		model.addObject("title", book.getTitle());
		model.addObject("tags", book.getTags().split(","));
		model.setViewName("home/book/detail");
		//查看数加1
		bookService.updateViewNumber(id);
		return model;
	}

	/**
	 * 按照分类显示书籍列表
	 * @param model
	 * @param cid
	 * @return
	 */
	@RequestMapping(value="/category_list",method=RequestMethod.GET)
	public ModelAndView categoryList(ModelAndView model,
									 @RequestParam(name="cid",required=true) Long cid,
									 Page page
	){
		Map<String, Object> queryMap = new HashMap<String, Object>();
		queryMap.put("offset", 0);
		queryMap.put("pageSize", 10);
		queryMap.put("categoryId", cid);
		model.addObject("bookCategoryList", bookCategoryService.findAll());
		model.addObject("bookList", bookService.findList(queryMap));
		BookCategory bookCategory = bookCategoryService.find(cid);
		model.addObject("bookCategory", bookCategory);
		model.addObject("title", bookCategory.getName() + "分类下的书籍信息");
		model.setViewName("home/book/category_list");
		return model;
	}

	/**
	 * 获取按评论数排序的最新n条信息
	 * @return
	 */
	@RequestMapping(value="/last_comment_list",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> lastCommentList(){
		Map<String, Object> ret = new HashMap<String, Object>();
		ret.put("type", "success");
		ret.put("bookList", bookService.findLastCommentList(10));
		return ret;
	}


	/**
	 * 分页获取某个分类下的文章
	 * @param page
	 * @param cid
	 * @return
	 */
	@RequestMapping(value="/get_category_list",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> getCategoryList(Page page,
											   @RequestParam(name="cid",required=true) Long cid
	){
		Map<String, Object> ret = new HashMap<String, Object>();
		Map<String, Object> queryMap = new HashMap<String, Object>();
		queryMap.put("offset", page.getOffset());
		queryMap.put("pageSize", page.getRows());
		queryMap.put("categoryId", cid);
		ret.put("type", "success");
		ret.put("bookList", bookService.findList(queryMap));
		return ret;
	}

	/**
	 * 获取搜索列表
	 * @param model
	 * @param keyword
	 * @param page
	 * @return
	 */
	@RequestMapping(value="/search_list",method=RequestMethod.GET)
	public ModelAndView searchList(ModelAndView model,
								   @RequestParam(name="keyword",required=false,defaultValue="") String keyword,
								   Page page
	){
		Map<String, Object> queryMap = new HashMap<String, Object>();
		queryMap.put("offset", 0);
		queryMap.put("pageSize", 10);
		queryMap.put("title", keyword);
		model.addObject("bookCategoryList", bookCategoryService.findAll());
		model.addObject("bookList", bookService.findList(queryMap));
		model.addObject("title", keyword + "关键字下的书籍信息");
		model.addObject("keyword", keyword);
		model.setViewName("home/book/search_list");
		return model;
	}

	/**
	 * 分页加载搜索列表
	 * @param page
	 * @param keyword
	 * @return
	 */
	@RequestMapping(value="/get_search_list",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> getSearchList(Page page,
											 @RequestParam(name="keyword",required=false,defaultValue="") String keyword
	){
		Map<String, Object> ret = new HashMap<String, Object>();
		Map<String, Object> queryMap = new HashMap<String, Object>();
		queryMap.put("offset", page.getOffset());
		queryMap.put("pageSize", page.getRows());
		queryMap.put("title", keyword);
		ret.put("type", "success");
		ret.put("bookList", bookService.findList(queryMap));
		return ret;
	}

	/**
	 * 添加评论
	 * @param comment
	 * @return
	 */
	@RequestMapping(value="/comment_book",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> commentBook(Comment comment){
		Map<String, Object> ret = new HashMap<String, Object>();
		if(comment == null){
			ret.put("type", "error");
			ret.put("msg", "请填写完整的评论信息！");
			return ret;
		}
		if(comment.getBookId() == null){
			ret.put("type", "error");
			ret.put("msg", "请选择一个文章进行评论！");
			return ret;
		}
		if(StringUtils.isEmpty(comment.getNickname())){
			ret.put("type", "error");
			ret.put("msg", "请填写昵称！");
			return ret;
		}
		if(StringUtils.isEmpty(comment.getContent())){
			ret.put("type", "error");
			ret.put("msg", "请填写评论内容！");
			return ret;
		}
		comment.setCreateTime(new Date());
		if(commentService.add(comment) <= 0){
			ret.put("type", "error");
			ret.put("msg", "评论失败，请联系管理员！");
			return ret;
		}
		//文章评论数加1
		bookService.updateCommentNumber(comment.getBookId());
		ret.put("type", "success");
		ret.put("createTime", comment.getCreateTime());
		return ret;
	}

	/**
	 * 分页获取某一文章的评论
	 * @param page
	 * @return
	 */
	@RequestMapping(value="/get_comment_list",method= RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> getCommentList(Page page, Long bookId){
		Map<String, Object> ret = new HashMap<String, Object>();
		Map<String, Object> queryMap = new HashMap<String, Object>();
		queryMap.put("offset", page.getOffset());
		queryMap.put("pageSize", page.getRows());
		queryMap.put("bookId", bookId);
		ret.put("type", "success");
		ret.put("commentList", commentService.findList(queryMap));
		return ret;
	}
}
