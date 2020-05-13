<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%@include file="/common/taglib.jsp"%>
<div class="wrapper">
  <div class="section-hero section-shaped pt-5">
    <div class="page-header">
      <div class="container shape-container d-flex align-items-center pt-5">
        <div class="row align-items-center justify-content-center">
          <div class="col-12 p-4 bg-white">
            <div class="row">
              <div class="col-md-6">
                <div class="post-entry-1">
                  <a href="<c:url value="/post?id=${views[0].id}"/>"><img src="${views[0].thumbnail}" alt="Image" class="img-fluid"></a>
                  <h2><a href="<c:url value="/post?id=${views[0].id}"/>">${views[0].title}</a></h2>
                  <p>${views[0].description}</p>
                  <div class="post-meta">
                    <span class="d-block"><a href="#">${views[0].createdBy}</a> in <a href="#">News</a></span>
                    <span class="date-read">${views[0].created} <span class="mx-1">&bullet;</span> 3 min read <span
                        class="icon-star2"></span></span>
                  </div>
                </div>
              </div>
              <div class="col-md-6">
                <c:forEach var="item" items="${views}" varStatus="loop">
                <div class="post-entry-2 d-flex ${loop.index == 0 ? 'bg-light' : ''}">
                  <div class="thumbnail" style="background-image: url('${item.thumbnail}')"></div>
                  <div class="contents">
                    <h2><a href="<c:url value="/post?id=${views[0].id}"/>">${item.title}</a></h2>
                    <div class="post-meta">
                      <span class="d-block"><a href="#">${item.createdBy}</a> in <a href="#">News</a></span>
                      <span class="date-read">${item.created} <span class="mx-1">&bullet;</span> 3 min read <span
                          class="icon-star2"></span></span>
                    </div>
                  </div>
                </div>
              </c:forEach>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="section section-components py-2" id="section-components">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-lg-8 mb-5">
        <h2 class="mb-4 border-bottom border-dark">
          <span>Bài viết mới</span>
        </h2>
        <div class="row">
          <div class="col-md-12">
            <div class="post-entry-2 d-flex" v-for="post in data">
              <div class="thumbnail order-md-1 pl-0"
                v-bind:style="{ 'background-image': 'url(' + post.thumbnail + ')' }"></div>
              <div class="contents order-md-2 ">
                <h2><a href="<c:url value="/post?id={{post.id}}"/>">{{post.title}}</a></h2>
                <p class="mb-3">{{post.description}}</p>
                <div class="post-meta">
                  <span class="d-block"><a href="#">{{post.createdBy}}</a> in <a href="#">News</a></span>
                  <span class="date-read">{{post.created}} <span class="mx-1">&bullet;</span> 3 min read <span
                      class="icon-star2"></span></span>
                </div>
              </div>
            </div>
            <!-- Animation -->
            <div class="row">
              <div class="col-lg-12 d-flex justify-content-center">
                <button v-if="!loading" type="button" class="btn btn-icon btn-3 btn-primary"  v-on:click="getPost">
                  <span class="btn-inner--icon"><i class="ni ni-bold-down"></i></span>
                  <span class="btn-inner--text">Xem thêm</span>
                </button>
                <button v-if="loading" type="button" class="btn btn-icon btn-3 btn-primary">
                  <span  class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>
                  <span  class="btn-inner--text">Vui lòng chờ...</span>
                </button>

              </div>
            </div>
          </div>
        </div>
      </div>

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
              <h4><a href="<c:url value="/post?id=${item.id}"/>">${item.title}</a></h4>
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
    </div>
  </div>
</div>
<script type="text/javascript">
  new Vue({
    el: "#section-components",
    data: {
      loading: false,
      data: [],
      pageable: {
    	  page: 1,
    	  size: 5
      }
    },
    mounted: function () {
      this.loading = true;
      axios
        .get('${pageContext.request.contextPath}/api/home?page=' + this.pageable.page + '&size=' + this.pageable.size)
        .then(response => {
          this.data = response.data
        })
        .catch(error => {
          console.log(error)
        })
        .finally(() => this.loading = false)
    },
    methods: {
      getPost: function () {
        this.loading = true;
        this.pageable.page++;
        axios
          .get('${pageContext.request.contextPath}/api/home?page=' + this.pageable.page + '&size=' + this.pageable.size)
          .then(response => {
            var result = response.data
            console.log("result", result)
            this.data.push(...result);
            console.log("this.data", this.data)
          })
          .catch(error => {
            console.log(error)
          })
          .finally(() => this.loading = false)
      }
    }
  })
</script>