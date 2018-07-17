<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<!--sidebar start-->
<aside>
    <div id="sidebar"  class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
        
        	  <p class="centered"><a href="profile.html"><img src="resources/css/assets/img/ui-sam.jpg" class="img-circle" width="60"></a></p>
        	  <h5 class="centered">관리자</h5>
        	  	
            <!-- <li class="mt">
                <a class="active" href="#">
                    <i class="fa fa-dashboard"></i>
                    <span>기본</span>
                </a>
     			  <ul class="sub">
                    <li><a  href="general.html">General</a></li>
                    <li><a  href="buttons.html">Buttons</a></li>
                    <li><a  href="panels.html">Panels</a></li>
                </ul> 
            </li> -->

            <li class="sub-menu">
                <a href="javascript:;" >
                    <i class="fa fa-desktop"></i>
                    <span>펀드</span>
                </a>
                <ul class="sub">
                    <li><a  href="FundList.ad">진행내역</a></li>
                    <li><a  href="buttons.html">미등록 펀드(승인대기)</a></li>
                    <li><a  href="panels.html">통계</a></li>
                </ul>
            </li>

            <li class="sub-menu">
                <a href="javascript:;" >
                    <i class="fa fa-cogs"></i>
                    <span>경매</span>
                </a>
                <ul class="sub">
                    <li><a  href="AucList.ad">진행내역</a></li>
                    <li><a  href="gallery.html">미등록 경매(승인대기)</a></li>
                    <li><a  href="todo_list.html">통계</a></li>
                </ul>
            </li>
            <li class="sub-menu">
                <a href="javascript:;" >
                    <i class="fa fa-book"></i>
                    <span>파트너 관리</span>
                </a>
                <ul class="sub">
                    <li><a  href="blank.html">파트너 관리</a></li>
                    <li><a  href="login.html">어드벤티지 관리</a></li>
                </ul>
            </li>
            <li class="sub-menu">
                <a href="javascript:;" >
                    <i class="fa fa-tasks"></i>
                    <span>회원관리</span>
                </a>
                <ul class="sub">
                    <li><a  href="form_component.html">회원관리</a></li>
                    <li><a  href="responsive_table.html">어드벤티지 관리</a></li>
                </ul>
            </li>
            <li class="sub-menu">
                <a href="javascript:;" >
                    <i class="fa fa-th"></i>
                    <span>정산관리</span>
                </a>
                <ul class="sub">
                    <li><a  href="basic_table.html">펀드</a></li>
                    <li><a  href="responsive_table.html">경매</a></li>
                </ul>
            </li>
            <li class="sub-menu">
                <a href="javascript:;" >
                    <i class=" fa fa-bar-chart-o"></i>
                    <span>게시판</span>
                </a>
                <ul class="sub">
                	<li><a  href="BoardManage.ad">공지사항</a></li>
                    <li><a  href="#">문의 게시판[농부]</a></li>
                    <li><a  href="#">문의 게시판[회원]</a></li>
                    <li><a  href="#">소식 게시판</a></li>
                    <li><a  href="#">요청 게시판</a></li>
                </ul>
            </li>
            <li class="sub-menu">
                <a href="javascript:;" >
                    <i class=" fa fa-bar-chart-o"></i>
                    <span>기부</span>
                </a>
                <ul class="sub">
                    <li><a  href="DonateList.ad">기부내역</a></li>
                    <li><a  href="DonateConList.ad">기부업체관리</a></li>
                    <li><a  href="DonateTotal.ad">통계</a></li>
                </ul>
            </li>
            <li class="sub-menu">
                <a href="javascript:;" >
                    <i class=" fa fa-bar-chart-o"></i>
                    <span>주말농장</span>
                </a>
                <ul class="sub">
                	<li><a  href="WeekFarmManage.ad">주말농장</a></li>
                  <li><a  href="IOTManage.ad">IoT</a></li>
                </ul>
            </li>
            
        </ul>
        <!-- sidebar menu end-->
    </div>
</aside>
<!--sidebar end-->

<!-- js placed at the end of the document so the pages load faster -->
<script src="resources/css/assets/js/jquery.js"></script>
<script src="resources/css/assets/js/jquery-1.8.3.min.js"></script>
<script src="resources/css/assets/js/bootstrap.min.js"></script>
<script class="include" type="text/javascript" src="resources/css/assets/js/jquery.dcjqaccordion.2.7.js"></script>
<script src="resources/css/assets/js/jquery.scrollTo.min.js"></script>
<script src="resources/css/assets/js/jquery.nicescroll.js" type="text/javascript"></script>
<script src="resources/css/assets/js/jquery.sparkline.js"></script>


<!--common script for all pages-->
<script src="resources/css/assets/js/common-scripts.js"></script>

<script type="text/javascript" src="resources/css/assets/js/gritter/js/jquery.gritter.js"></script>
<script type="text/javascript" src="resources/css/assets/js/gritter-conf.js"></script>

<!--script for this page-->
   <script src="resources/css/assets/js/sparkline-chart.js"></script>    
<script src="resources/css/assets/js/zabuto_calendar.js"></script>	

<script type="text/javascript">
    $(document).ready(function () {
    var unique_id = $.gritter.add({
        // (string | mandatory) the heading of the notification
        title: 'Welcome to Dashgum!',
        // (string | mandatory) the text inside the notification
        text: 'Hover me to enable the Close Button. You can hide the left sidebar clicking on the button next to the logo. Free version for <a href="http://blacktie.co" target="_blank" style="color:#ffd777">BlackTie.co</a>.',
        // (string | optional) the image to display on the left
        image: 'resources/css/assets/img/ui-sam.jpg',
        // (bool | optional) if you want it to fade out on its own or just sit there
        sticky: true,
        // (int | optional) the time you want it to be alive for before fading out
        time: '',
        // (string | optional) the class name you want to apply to that specific message
        class_name: 'my-sticky-class'
    });

    return false;
    });
</script>

<script type="application/javascript">
    $(document).ready(function () {
        $("#date-popover").popover({html: true, trigger: "manual"});
        $("#date-popover").hide();
        $("#date-popover").click(function (e) {
            $(this).hide();
        });
    
        $("#my-calendar").zabuto_calendar({
            action: function () {
                return myDateFunction(this.id, false);
            },
            action_nav: function () {
                return myNavFunction(this.id);
            },
            ajax: {
                url: "show_data.php?action=1",
                modal: true
            },
            legend: [
                {type: "text", label: "Special event", badge: "00"},
                {type: "block", label: "Regular event", }
            ]
        });
    });
    
    
    function myNavFunction(id) {
        $("#date-popover").hide();
        var nav = $("#" + id).data("navigation");
        var to = $("#" + id).data("to");
        console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
    }
</script>

</body>
</html>