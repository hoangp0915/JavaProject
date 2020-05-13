<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<div class="section section-components py-4" style="margin-top: 80px;"
	id="section-components">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-lg-8 single-content">

				<p class="mb-5">
					<img src="${postDetail.thumbnail}" alt="Image" class="img-fluid">
				</p>
				<h1 class="mb-4">${postDetail.title}</h1>
				<div class="post-meta d-flex mb-5">
					<div class="bio-pic mr-3">
						<img src="${postDetail.thumbnail}" alt="Image" class="img-fluidid">
					</div>
					<div class="vcard">
						<span class="d-block"><a href="#">${postDetail.created}</a>
							in <a href="#">News</a></span> <span class="date-read">${postDetail.createdBy}
							<span class="mx-1">&bullet;</span> 3 min read <span
							class="icon-star2"></span>
						</span>
					</div>
				</div>
				<div>${postDetail.content}</div>
				<div class="pt-5">
					<p>
						Categories: <a href="#">Design</a>, <a href="#">Events</a> Tags: <a
							href="#">#html</a>, <a href="#">#trends</a>
					</p>
				</div>


				<div class="pt-5">
					<div class="section-title">
						<h2 class="mb-5">6 Comments</h2>
					</div>
					<ul class="comment-list">
						<li class="comment">
							<div class="vcard bio">
								<img src="assets/img/big_img_1.jpg" alt="Image placeholder">
							</div>
							<div class="comment-body">
								<h3>Jean Doe</h3>
								<div class="meta">January 9, 2018 at 2:21pm</div>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Pariatur quidem laborum necessitatibus, ipsam impedit vitae
									autem, eum officia, fugiat saepe enim sapiente iste iure! Quam
									voluptas earum impedit necessitatibus, nihil?</p>
								<p>
									<a href="#" class="reply">Reply</a>
								</p>
							</div>
						</li>

						<li class="comment">
							<div class="vcard bio">
								<img src="assets/img/big_img_1.jpg" alt="Image placeholder">
							</div>
							<div class="comment-body">
								<h3>Jean Doe</h3>
								<div class="meta">January 9, 2018 at 2:21pm</div>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Pariatur quidem laborum necessitatibus, ipsam impedit vitae
									autem, eum officia, fugiat saepe enim sapiente iste iure! Quam
									voluptas earum impedit necessitatibus, nihil?</p>
								<p>
									<a href="#" class="reply">Reply</a>
								</p>
							</div>

							<ul class="children">
								<li class="comment">
									<div class="vcard bio">
										<img src="assets/img/big_img_1.jpg" alt="Image placeholder">
									</div>
									<div class="comment-body">
										<h3>Jean Doe</h3>
										<div class="meta">January 9, 2018 at 2:21pm</div>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit. Pariatur quidem laborum necessitatibus, ipsam impedit
											vitae autem, eum officia, fugiat saepe enim sapiente iste
											iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
										<p>
											<a href="#" class="reply">Reply</a>
										</p>
									</div>


									<ul class="children">
										<li class="comment">
											<div class="vcard bio">
												<img src="assets/img/big_img_1.jpg" alt="Image placeholder">
											</div>
											<div class="comment-body">
												<h3>Jean Doe</h3>
												<div class="meta">January 9, 2018 at 2:21pm</div>
												<p>Lorem ipsum dolor sit amet, consectetur adipisicing
													elit. Pariatur quidem laborum necessitatibus, ipsam impedit
													vitae autem, eum officia, fugiat saepe enim sapiente iste
													iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
												<p>
													<a href="#" class="reply">Reply</a>
												</p>
											</div>

											<ul class="children">
												<li class="comment">
													<div class="vcard bio">
														<img src="assets/img/big_img_1.jpg"
															alt="Image placeholder">
													</div>
													<div class="comment-body">
														<h3>Jean Doe</h3>
														<div class="meta">January 9, 2018 at 2:21pm</div>
														<p>Lorem ipsum dolor sit amet, consectetur adipisicing
															elit. Pariatur quidem laborum necessitatibus, ipsam
															impedit vitae autem, eum officia, fugiat saepe enim
															sapiente iste iure! Quam voluptas earum impedit
															necessitatibus, nihil?</p>
														<p>
															<a href="#" class="reply">Reply</a>
														</p>
													</div>
												</li>
											</ul>
										</li>
									</ul>
								</li>
							</ul>
						</li>

						<li class="comment">
							<div class="vcard bio">
								<img src="assets/img/big_img_1.jpg" alt="Image placeholder">
							</div>
							<div class="comment-body">
								<h3>Jean Doe</h3>
								<div class="meta">January 9, 2018 at 2:21pm</div>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Pariatur quidem laborum necessitatibus, ipsam impedit vitae
									autem, eum officia, fugiat saepe enim sapiente iste iure! Quam
									voluptas earum impedit necessitatibus, nihil?</p>
								<p>
									<a href="#" class="reply">Reply</a>
								</p>
							</div>
						</li>
					</ul>
					<!-- END comment-list -->
				</div>
			</div>

			<!-- Sidebar -->
			<div class="col-lg-3 ml-auto">
				<h2 class="mb-4">
					<span>Trending </span>
				</h2>
				<c:forEach var="item" items="${views}" varStatus="loop">
					<div class="trend-entry d-flex">
						<div class="number align-self-start">0${loop.index + 1}</div>
						<!-- ${loop.index} -->
						<div class="trend-contents">
							<h4>
								<a href="<c:url value="/post?id=${item.id}"/>">${item.title}</a>
							</h4>
							<div class="post-meta">
								<span class="d-block"><a href="#">${item.createdBy}</a>
									in <a href="#">News</a></span> <span class="date-read">${item.created}
									<span class="mx-1">&bullet;</span> 3 min read <span
									class="icon-star2"></span>
								</span>
							</div>
						</div>
					</div>
				</c:forEach>

				<p>
					<a href="#" class="more">See All Trends <span
						class="icon-keyboard_arrow_right"></span></a>
				</p>
			</div>
		</div>
	</div>
</div>