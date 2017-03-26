package com.peoplecode.blog.presentation.controller.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.peoplecode.blog.domain.model.entity.Blog;
import com.peoplecode.blog.domain.model.entity.Post;
import com.peoplecode.blog.infrastructure.dao.BlogDao;
import com.peoplecode.blog.infrastructure.dao.PostDao;

/**
 * 블로그 메인 페이지
 * @author hyeokcheol
 *
 */
@Controller
@RequestMapping("/")
public class BlogController {

	@Autowired
	private BlogDao blogDao;
	
	@Autowired
	private PostDao postDao;
	

	@RequestMapping("/add")
	public Blog add(Blog blog) {
		Blog BlogData = blogDao.save(blog);
		return BlogData;
	}

	@RequestMapping("/list")
	public List<Blog> list(Model model) {

		List<Blog> blogList = blogDao.findAll();
		return blogList;
	}

	@RequestMapping("/")
	public String front(Model model) {
		List<Post> postList = postDao.findAll();
		model.addAttribute("postList", postList);
		return "blog";
	}
}
