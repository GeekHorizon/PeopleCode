package com.peoplecode.blog.presentation.controller.web;

import java.util.Date;
import java.util.List;

import javax.validation.Valid;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.peoplecode.blog.domain.model.entity.Post;
import com.peoplecode.blog.infrastructure.dao.PostDao;

/**
 * post controller
 * @author hyeokcheol
 *
 */
@Controller
@RequestMapping("/post")
public class PostController {

	/**
	 * postDao 
	 */
	@Autowired
	private PostDao postDao;

	/**
	 * post list
	 * @param model
	 * @return
	 */
	@GetMapping("")
	public String list(Model model) {
		List<Post> postList = postDao.findAll();
		model.addAttribute("postList", postList);
		return "blog";
	}
	
	/**
	 * post write 
	 * @param post
	 * @return
	 */
	@GetMapping("/new")
	public String form(Post post) {
		return "form";
	}
	
	/**
	 * creat a new post
	 * @param post
	 * @param bindingResult
	 * @return
	 */
	@PostMapping("")
	public String newPost(@Valid Post post, BindingResult bindingResult) {
		if (bindingResult.hasErrors()) {
			return "form";
		}
		
		post.setRegDate(new Date());
		return "redirect:/post/" + postDao.save(post).getId();
	}
	
	/**
	 * 게시글 상세보기
	 * @param model
	 * @param id
	 * @return
	 */
	@GetMapping("/{id}")
	public String view(Model model, @PathVariable int id) {
		Post post = postDao.findOne(id);
		model.addAttribute("post", post);
		return "post";
	}
	
	/**
	 * post editing
	 * @param model
	 * @param id
	 * @param password
	 * @return
	 */
	@GetMapping("/{id}/edit")
	public String edit(Model model, @PathVariable int id) {
		Post post = postDao.getOne(id);
		model.addAttribute("post", post);
		return "form";
	}
	
	/**
	 * post 수정
	 * @param model
	 * @param id
	 * @param password
	 * @return
	 */
	@RequestMapping(value = "/{id}", method = {RequestMethod.PUT, RequestMethod.POST})
	public String editor(@PathVariable int id, @RequestParam(value = "password", required = true) String password, @Valid Post editPost) {
		Post post = postDao.getOne(id);
		
		if (post != null) {
			if (StringUtils.equals(post.getPassword(), password)) {
				post.setContent(editPost.getContent());
				return "redirect:/post/" + postDao.save(post).getId();
			}
			
			return "redirect:/post";
		}
		return "redirect:/post";
	}
	
	/**
	 * 게시글제거
	 * @param id
	 * @param password
	 * @return
	 */
	@DeleteMapping("/{id}")
	public String delete(@PathVariable int id, @RequestParam(value = "password", required = true) String password, BindingResult bindingResult) {
		Post post = postDao.findOne(id);
		
		if (post != null) {
			if (StringUtils.equals(post.getPassword(), password)) {
				postDao.delete(id);
				return "redirect:/post";
			}
			
			return "redirect:/post/" + id;
		} else {
			return "redirect:/post/write";
		}
		
	}
}
