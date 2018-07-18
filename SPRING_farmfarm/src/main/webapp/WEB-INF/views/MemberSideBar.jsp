<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>

<!--sidebar start-->
<aside>
    <div id="sidebar"  class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
                <p class="centered"><a href="HostMain.ad"><img src="resources/images/host/farmHost.png" width="60"></a></p>
                <h5 class="centered" style="color:black">일반회원</h5>
            <!-- <li class="mt">
                <a class="active" href="#">
                    <i class="fa fa-dashboard"></i>
                    <span>기본</span>
                </a>
                <ul class="sub">
                    <li><a href="general.html">General</a></li>
                    <li><a href="buttons.html">Buttons</a></li>
                    <li><a href="panels.html">Panels</a></li>
                </ul> 
            </li> -->

            <li class="sub-menu">
                <a href="javascript:;" >
                    <i class="fa fa-desktop"></i>
                    <span>정보수정</span>
                </a>
                <ul class="sub">
                    <li><a href="updateInfoPage">회원정보 수정</a></li>
                    <li><a href="deleteMember">회원탈퇴</a></li>
                </ul>
            </li>

             <li>
                 <a href="gusetAdv">
                     <i class="fa fa-dashboard"></i>
                     <span>회원점수</span>
                 </a>
             </li>
            <li>
                 <a href="#">
                     <i class="fa fa-dashboard"></i>
                     <span>경매</span>
                 </a>
             </li>
             <li>
                 <a href="#">
                     <i class="fa fa-dashboard"></i>
                     <span>펀드</span>
                 </a>
             </li>
             <li>
                 <a href="#">
                     <i class="fa fa-dashboard"></i>
                     <span>쪽지</span>
                 </a>
             </li>
             <li>
                 <a href="#">
                     <i class="fa fa-dashboard"></i>
                     <span>관심상품 목록</span>
                 </a>
             </li>
             <li>
                 <a href="#">
                     <i class="fa fa-dashboard"></i>
                     <span>내 기부내역</span>
                 </a>
             </li>           
            <li class="sub-menu">
                <a href="javascript:;" >
                    <i class=" fa fa-bar-chart-o"></i>
                    <span>주말 농장</span>
                </a>
                <ul class="sub">
                   <li><a  href="#">주말농장 관리</a></li>
                  <li><a  href="#">IoT</a></li>
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