<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<!-- <link rel="stylesheet" href="resources/css/assets/bootstrap.css"> -->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>


<body class="board-body">
<!-- 헤더시작 -->
<header>
   <%@include file="../Header.jsp" %>
</header>
<!-- 헤더끝 --> 

<div class="wrap">
<!-- 상단영역 -->
<div class="section section-bg-gray layout-md section-itemview-top">
    <div class="container">
        <!-- 펀드제목 -->
        <div class="row">
            <!-- 타이틀 -->
            <div class="col-xs-12 col-sm-12 section-header-sm section-itemview-top-title">
                                <h1 class="section-title center">팜팜 공지사항</h1>
                <h3 class="section-subtitle center">팜팜의 공지사항입니다.</h3>
                            </div>
        </div>
    </div>
</div>
<!-- 상단영역 -->

<!-- 하단영역 -->
<div class="section section-bg-white layout-md section-itemview-bottom">
    <div class="container">
                 <div id="vertical-timeline" class="vertical-container dark-timeline">
                        <div class="vertical-timeline-block">
                <div class="vertical-timeline-icon navy-bg">
                    <i class="fa fa-briefcase"><img src="resources/images/bag.png"></i>
                </div>

                <div class="vertical-timeline-content">
                  <h2><a href="/board/story/6206">팜팜 이벤트 소식 알림 신청</a></h2>
                                        <span class="vertical-date">
                        <small>2018-07-06</small>
                    </span>
                </div>
            </div>
    
        <div class="row text-center">
            <ul class="pagination"><li class="disabled"><span>«</span></li> <li class="active"><span>1</span></li><li><a href="https://farmingfund.co.kr/board/story?page=2">2</a></li><li><a href="https://farmingfund.co.kr/board/story?page=3">3</a></li><li><a href="https://farmingfund.co.kr/board/story?page=4">4</a></li><li><a href="https://farmingfund.co.kr/board/story?page=5">5</a></li><li><a href="https://farmingfund.co.kr/board/story?page=6">6</a></li> <li><a href="https://farmingfund.co.kr/board/story?page=2" rel="next">»</a></li></ul>
        </div>
    </div><!-- /.container -->
</div><!-- /.content-wrapper -->

</div>
   


<div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
      <div class="modal-dialog">
    <div class="modal-content">
          <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
        <h4 class="modal-title custom_align" id="Heading">Edit Your Detail</h4>
      </div>
          <div class="modal-body">
          <div class="form-group">
        <input class="form-control " type="text" placeholder="Mohsin">
        </div>
        <div class="form-group">
        
        <input class="form-control " type="text" placeholder="Irshad">
        </div>
        <div class="form-group">
        <textarea rows="2" class="form-control" placeholder="CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan"></textarea>
    
        
        </div>
      </div>
          <div class="modal-footer ">
        <button type="button" class="btn btn-warning btn-lg" style="width: 100%;"><span class="glyphicon glyphicon-ok-sign"></span> Update</button>
      </div>
        </div>
    <!-- /.modal-content --> 
  </div>
      <!-- /.modal-dialog --> 
    </div>
    
    
    
    <div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
      <div class="modal-dialog">
    <div class="modal-content">
          <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
        <h4 class="modal-title custom_align" id="Heading">Delete this entry</h4>
      </div>
          <div class="modal-body">
       
       <div class="alert alert-danger"><span class="glyphicon glyphicon-warning-sign"></span> Are you sure you want to delete this Record?</div>
       
      </div>
        <div class="modal-footer ">
        <button type="button" class="btn btn-success" ><span class="glyphicon glyphicon-ok-sign"></span> Yes</button>
        <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> No</button>
      </div>
        </div>
    <!-- /.modal-content --> 
  </div>
      <!-- /.modal-dialog --> 
    </div>

 <!-- 4.푸터 -->
    <footer >
   <%@include file="../Footer.jsp" %>
    </footer>
   <!--푸터 끝  -->  
    
    <!--스크립트 공통부분  -->
   <script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
   <script src="resources/js/bootstrap.js"></script>
</body>
</html>