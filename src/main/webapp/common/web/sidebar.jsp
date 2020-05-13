<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!-- Sidebar -->
      <div class="col-lg-4">
        <h2 class="mb-4 border-bottom border-dark">
          <span>Trending </span>
        </h2>
        <c:forEach var="item" items="${views}" varStatus="loop">
          <div class="trend-entry d-flex">
            <div class="number align-self-start">0${loop.index + 1}</div>
            <!-- ${loop.index} -->
            <div class="trend-contents">
              <h4><a href="blog-single.html">${item.title}</a></h4>
              <div class="post-meta">
                <span class="d-block"><a href="#">${item.createdBy}</a> in <a href="#">News</a></span>
                <span class="date-read">${item.created} <span class="mx-1">&bullet;</span> 3 min read <span
                    class="icon-star2"></span></span>
              </div>
            </div>
          </div>
        </c:forEach>

        <p>
          <a href="#" class="more">See All Trends <span class="icon-keyboard_arrow_right"></span></a>
        </p>
      </div>