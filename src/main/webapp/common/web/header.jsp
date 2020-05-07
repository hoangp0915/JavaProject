<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <!-- Navbar -->
  <nav id="navbar-main" class="navbar navbar-main navbar-expand-lg navbar-transparent navbar-light headroom" style="    background: linear-gradient(150deg, #281483 15%, #8f6ed5 70%, #d782d9 94%);">
    <div class="container">
      <a class="navbar-brand mr-lg-5" href="./index.html">
        <img src="./assets/img/brand/white.png">
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar_global"
        aria-controls="navbar_global" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="navbar-collapse collapse" id="navbar_global">
        <div class="navbar-collapse-header">
          <div class="row">
            <div class="col-6 collapse-brand">
              <a href="./index.html">
                <img src="./assets/img/brand/blue.png">
              </a>
            </div>
            <div class="col-6 collapse-close">
              <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbar_global"
                aria-controls="navbar_global" aria-expanded="false" aria-label="Toggle navigation">
                <span></span>
                <span></span>
              </button>
            </div>
          </div>
        </div>
        <ul class="navbar-nav navbar-nav-hover align-items-lg-center">
          <li class="nav-item dropdown">
            <a href="#" class="nav-link" data-toggle="dropdown" href="#" role="button">
              <i class="ni ni-collection d-lg-none"></i>
              <span class="nav-link-inner--text">Examples</span>
            </a>
            <div class="dropdown-menu">
              <a href="./examples/landing.html" class="dropdown-item">Landing</a>
              <a href="./examples/profile.html" class="dropdown-item">Profile</a>
              <a href="./examples/login.html" class="dropdown-item">Login</a>
              <a href="./examples/register.html" class="dropdown-item">Register</a>
            </div>
          </li>
        </ul>
        <ul class="navbar-nav align-items-lg-center ml-lg-auto">
          <li class="nav-item d-none d-lg-block ml-lg-4">
            <a href="https://www.creative-tim.com/product/argon-design-system" target="_blank" class="btn btn-neutral btn-icon">
              <span class="btn-inner--icon">
                <i class="fa fa-cloud-download mr-2"></i>
              </span>
              <span class="nav-link-inner--text">Đăng nhập</span>
            </a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <!-- End Navbar -->