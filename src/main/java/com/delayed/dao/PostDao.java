package com.delayed.dao;

import java.util.List;

import com.delayed.model.PostModel;

public interface PostDao extends ConnectionDatabase<PostModel> {

	/**
	 * Find one record
	 * 
	 * @param id
	 * @return
	 */
	PostModel findOne(Integer id);

	/**
	 * Insert record into database
	 * 
	 * @param post
	 * @return
	 */
	Integer save(PostModel post);

	/**
	 * Find all record
	 * 
	 * @return
	 */
	List<PostModel> findAll();

	/**
	 * update record
	 * 
	 * @param post
	 */
	void update(PostModel post);

	/**
	 * delete multiple record by ids
	 * 
	 * @param ids
	 */
	void deleteByIds(String ids);
}
