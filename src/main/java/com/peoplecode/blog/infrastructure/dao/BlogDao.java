package com.peoplecode.blog.infrastructure.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.peoplecode.blog.domain.model.entity.Blog;

public interface BlogDao extends JpaRepository <Blog, Integer> {

}
