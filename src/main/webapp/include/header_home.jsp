<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>

<div id="demo" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
  
  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="${ctp}/images/1.jpg" width="100%" height="200px">
      <div class="carousel-caption" style="width:100%">
        <h4><b>텍스트가 흘러간다. 호롤롤</b></h4>
      </div>   
    </div>
    <div class="carousel-item">
      <img src="${ctp}/images/2.jpg" width="100%" height="200px">
      <div class="carousel-caption" style="width:100%">
        <h5><b>다 울었니? 그럼 과제를 하자. </b></h5>
      </div>   
    </div>
    <div class="carousel-item">
      <img src="${ctp}/images/3.jpg" width="100%" height="200px">
      <div class="carousel-caption" style="width:100%">
        <h4><b>일단 못하겠어도 앉아보자.</b></h4>
      </div>   
    </div>
  </div>
  
  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>
