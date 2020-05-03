package com.delayed.model;

public class PostModel extends BaseModel<PostModel>{
	private String title;
	private String description;
	private String content;
	/**
	 * @return the title
	 */
	public String getTitle() {
		return title;
	}
	/**
	 * the title to set
	 * @param title the title to set
	 */
	public void setTitle(String title) {
		this.title = title;
	}
	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}
	/**
	 * the description to set
	 * @param description the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}
	/**
	 * @return the content
	 */
	public String getContent() {
		return content;
	}
	/**
	 * the content to set
	 * @param content the content to set
	 */
	public void setContent(String content) {
		this.content = content;
	}

	
}
