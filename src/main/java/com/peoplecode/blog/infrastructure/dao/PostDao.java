package com.peoplecode.blog.infrastructure.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.peoplecode.blog.domain.model.entity.Post;

public interface PostDao extends JpaRepository<Post, Integer> {
}
