package com.peoplecode.blog.presentation.controller.rest;

import java.util.Date;
import java.util.List;

import org.apache.commons.codec.binary.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import com.peoplecode.blog.domain.model.entity.Comment;
import com.peoplecode.blog.infrastructure.dao.CommentDao;
import com.peoplecode.blog.infrastructure.dao.PostDao;

/**
 * @author hyeokcheol
 *
 */
@RestController
@RequestMapping("/comments")
public class CommentController {

	@Autowired
	private CommentDao commentDao;
	
	@RequestMapping(method = RequestMethod.GET)
	public List<Comment> list(@RequestParam(value = "postId", required = true) int postId) {
		return commentDao.findByPostId(postId);
	}
	
	@RequestMapping(method = RequestMethod.POST)
	@ResponseStatus(HttpStatus.CREATED)
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
	
	@RequestMapping(value="/{id}", method = RequestMethod.DELETE)
	@ResponseStatus(HttpStatus.NO_CONTENT)
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
