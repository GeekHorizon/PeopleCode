package com.peoplecode.blog.presentation.controller.rest;

import java.util.Date;
import java.util.List;

import org.apache.commons.codec.binary.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import com.peoplecode.blog.domain.model.entity.Comment;
import com.peoplecode.blog.infrastructure.dao.CommentDao;

/**
 * comment controller
 * @author hyeokcheol
 *
 */
@RestController
@RequestMapping("/comments")
public class CommentController {

	/**
	 * comment Dao
	 */
	@Autowired
	private CommentDao commentDao;
	
	/**
	 * post by comment list
	 * @param postId
	 * @return
	 */
	@GetMapping
	public List<Comment> list(@RequestParam(value = "postId", required = true) int postId) {
		return commentDao.findByPostId(postId);
	}
	
	/**
	 * create a new Comment
	 * @param postId
	 * @param content
	 * @param name
	 * @param password
	 * @return
	 */
	@ResponseStatus(HttpStatus.CREATED)
	@PostMapping
	public Comment save(@RequestParam(value = "postId", required = true) int postId,
			@RequestParam(value = "content", required = true) String content, 
			@RequestParam(value = "name", required = true) String name, 
			@RequestParam(value = "password", required = true) String password) {
		
		Comment comment = new Comment();
		comment.setPostId(postId);
		comment.setPassword(password);
		comment.setContent(content);
		comment.setRegDate(new Date());
		comment.setName(name);
		
		return commentDao.save(comment);
	}
	
	/**
	 * delete comment
	 * @param postId
	 * @param password
	 * @param id
	 */
	@ResponseStatus(HttpStatus.NO_CONTENT)
	@DeleteMapping("/{id}")
	public void delete(@RequestParam(value = "postId", required = true) int postId,
			@RequestParam(value = "password", required = true) String password,
			@PathVariable int id) {
		
		Comment comment = commentDao.getOne(id);
		
		if (StringUtils.equals(comment.getPassword(), password)) {
			commentDao.delete(id);
		} else {
			throw new RuntimeException();
		}
	}
}
