<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="resources/css/bootstrap.css">
<title>Insert title here</title>
</head>
<body>
<!-- 헤더시작 -->
	<%@include file="../Header.jsp" %>
<!-- 헤더끝 -->  

<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

  <div class="row">
    <div class="col-md-4 col-md-offset-4" style="margin-bottom:170px; margin-top:150px;">
      <form class="form-horizontal" role="form">
        <fieldset>

          <!-- Form Name -->
          <legend>경매 상품 등록하기</legend>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">상품 번호</label>
            <div class="col-sm-10">
              <input type="text" placeholder="1" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">상품명</label>
            <div class="col-sm-10">
              <input type="text" placeholder="상품명" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">상품 특징</label>
            <div class="col-sm-10">
              <input type="text" placeholder="상품특징" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">무게</label>
            <div class="col-sm-4">
              <input type="text" placeholder="무게" class="form-control">
            </div>

            <label class="col-sm-2 control-label" for="textinput">수량</label>
            <div class="col-sm-4">
              <input type="text" placeholder="개수" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">상품 가격</label>
            <div class="col-sm-10">
              <input type="text" placeholder="Country" class="form-control">
            </div>
          </div>
          
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">등록일</label>
            <div class="col-sm-10">
              <input type="text" placeholder="Country" class="form-control">
            </div>
          </div>
          
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">상품 종류</label>
            <div class="col-sm-10">
              <input type="text" placeholder="Country" class="form-control">
            </div>
          </div>

          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <div class="pull-right">
                <button type="submit" class="btn btn-default">취소</button>
                <button type="submit" class="btn btn-primary">상품 등록</button>
              </div>
            </div>
          </div>

        </fieldset>
      </form>
    </div><!-- /.col-lg-12 -->
</div><!-- /.row -->




	
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