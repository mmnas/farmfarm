<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="setting.jsp" %> 
<html>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<body>
<div class="container-side">
    <div class="row">
        <div class="col-sm-12 col-md-12">
            <div class="panel-group" id="accordion">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><span class="glyphicon glyphicon-user">
                            </span>정보 수정</a>
                        </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse in">
                        <div class="panel-body">
                            <table class="table">
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-pencil text-primary"></span><a href="updateInfoPage">회원정보 수정</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-remove text-success"></span><a href="deleteMember">회원탈퇴</a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                        	<span class="glyphicon glyphicon-check"></span><a href="gusetAdv">회원 점수</a>
                        </h4>
                    </div>                    
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#"><span class="glyphicon glyphicon-th-list">
                            </span>경매</a>
                        </h4>
                    </div>                    
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#"><span class="glyphicon glyphicon-th-list">
                            </span>펀드</a>
                        </h4>
                    </div>                    
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#"><span class="glyphicon glyphicon-send">
                            </span>쪽지</a>
                             <span class="badge">42</span>
                        </h4>
                    </div>                    
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#"><span class="glyphicon glyphicon-star">
                            </span>관심상품 목록</a>
                        </h4>
                    </div>                    
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#"><span class="glyphicon glyphicon-heart">
                            </span>내 기부내역</a>
                        </h4>
                    </div>                    
                </div>                
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree"><span class="glyphicon glyphicon glyphicon-grain">
                            </span>주말농장</a>
                        </h4>
                    </div>
                    <div id="collapseThree" class="panel-collapse collapse">
                        <div class="panel-body">
                            <table class="table">
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-leaf text-primary"></span><a href="http://www.jquery2dotnet.com">주말농장 관리</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-sort text-primary"></span><a href="http://www.jquery2dotnet.com">IoT</a> <span class="label label-info">5</span>
                                    </td>
                                </tr>
                                                          
                            </table>
                        </div>
                    </div>
                </div>                
            </div>
        </div>
    </div>
</div>
</body>
</html>