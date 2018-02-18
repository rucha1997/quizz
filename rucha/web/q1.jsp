<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="button.css" type="text/css"/>
<link rel="stylesheet" href="animate.css" type="text/css">
<title>Q1</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js" type="text/javascript"></script>
<script>		
$(document).ready(function() {
    var content = $('.content');
	
    $('#trigger').live('click', function() {
        $(this).toggle(function() {
            $(this).text('Question 1');
            content.removeClass('reverse').addClass('running');
        }, function() {
             $(this).text('Options');
            content.removeClass('running').addClass('reverse');
        }).trigger('click');
    });
	
});
var count=0;
function correct()
{
    count=1;
    m();
}
function wrong()
{
    count=0;
    m();
}
function m()
{
    
    $.ajax({
        url:'marks',
        type:"post",
        datatype:"text",
        data:{
            count:count,
            qno:"q1"
        },
        success:function(responseText)
        {
            alert(responseText);
        }
    })
   
   
}
</script>
<link rel="canonical" href="http://www.alessioatzeni.com/wp-content/tutorials/html-css/CSS3-Reverse-Animation/index.html" />
<style>
    .ID-Image {
	width:300px;
	height:300px;
	background:url(logo1.png) no-repeat;
	margin:150px auto 0;
        align-self: center;
}


</style>
</head>
<body>
<center>
    <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        LOGO QUIZZ<small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Identify logo... <a href="Rules.jsp">Earn points</a></small></h1></center>
<div class="container">
	<div class="content">
    	<div class="ID-Image animated shake">
        	
        	<ul id="follow">
          
            	<li class="line1">
                <span id="layerBall" class="ball">1.IBM Watson</span><span id="layerPulse" class="pulse"></span>
                </li>
                
            	
                <li class="line2">
                <span id="layerBall1" class="ball1">2.Braincone</span><span id="layerPulse1" class="pulse1"></span>
                </li>
            	
                <li class="line3">
                <span id="layerBall2" class="ball2">3.Intel</span><span id="layerPulse2" class="pulse2"></span>
                </li>
            	
                <li class="line4">
                <span id="layerBall3" class="ball3">4.Qualcomm</span><span id="layerPulse3" class="pulse3"></span>
                </li>
            </ul>
            
            <ul id="social">
                <li id="layerSocialControl3" class="facebook" onclick="correct()"><a href="#">1.IBM Watson</a></li>
                <li id="layerSocialControl2" class="twitter" onclick="wrong()"><a href="#">2.Braincone</a></li>
                <li id="layerSocialControl" class="linked" onclick="wrong()"><a href="#">3.Intel</a></li>
                <li id="layerSocialControl1" class="forrst" onclick="wrong()"><a href="#">4.Qualcomm</a></li>
            </ul>
            
        </div>
        
        <a id="trigger" href="#">Options</a>
        
        <form class="animated bounceInLeft" align="right" action="q2.jsp">
             <input type="submit" class="animated bounceInLeft shake" value="Next " style="width: 150px; height: 80px ;background-color: blue;color:white;font-size: 2.4em; font-family:Verdana;letter-spacing: 6px">       
            </form>
    </div>
   
</div>

    

</body>
</html>
