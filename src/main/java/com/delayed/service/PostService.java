package com.delayed.service;

import java.util.List;

import com.delayed.model.PostModel;

public interface PostService {

	/**
	 * Insert data into database
	 * 
	 * @param post
	 * @return
	 */
	PostModel save(PostModel post);

	/**
	 * Find all data
	 * 
	 * @return
	 */
	List<PostModel> findAll();

	/**
	 * Update data by id
	 * 
	 * @param post
	 * @throws Exception
	 */
	void updateById(PostModel post) throws Exception;

	/**
	 * Delete multiple record by ids
	 * 
	 * @param ids
	 */
	void deleteByIds(String ids);
}
