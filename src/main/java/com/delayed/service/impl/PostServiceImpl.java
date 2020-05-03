package com.delayed.service.impl;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import com.delayed.dao.PostDao;
import com.delayed.model.PostModel;
import com.delayed.service.PostService;

public class PostServiceImpl implements PostService {

	@Inject
	private PostDao postDao;

	/**
	 * Insert record in to database {@inheritDoc}
	 * 
	 * @see com.delayed.service.PostService#save(com.delayed.model.PostModel)
	 */
	@Override
	public PostModel save(PostModel post) {
		post.setCreated(new Timestamp(System.currentTimeMillis()));
		Long id = postDao.save(post);
		return postDao.findOne(id);
	}

	/**
	 * Find all record in database {@inheritDoc}
	 * 
	 * @see com.delayed.service.PostService#findAll()
	 */
	@Override
	public List<PostModel> findAll() {
		return postDao.findAll();
	}

	/**
	 * Update record by id {@inheritDoc}
	 * 
	 * @see com.delayed.service.PostService#updateById(com.delayed.model.PostModel)
	 */
	@Override
	public void updateById(PostModel post) throws Exception {
		PostModel find = postDao.findOne(post.getId());
		if (find != null) {
			post.setUpdated(new Timestamp(System.currentTimeMillis()));
			postDao.update(post);
		} else {
			throw new Exception("Post not found.");
		}
	}

	/**
	 * Delete record by ids {@inheritDoc}
	 * 
	 * @see com.delayed.service.PostService#deleteById(java.lang.String)
	 */
	@Override
	public void deleteByIds(String ids) {
		postDao.deleteByIds(ids);
	}

}
