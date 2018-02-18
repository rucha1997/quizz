<%-- 
    Document   : index
    Created on : 14 Jan, 2018, 10:01:44 AM
    Author     : Rucha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Quizzbizz</title>

<style type="text/css" media="all">
html,
body {
    margin: 0;
    padding: 0;
}

#text-shadow-box {
    position: fixed;
    left: 0;
    right: 0;
    top: 0;
    bottom: 0;
    width: 100%;
    height: 100%;
    overflow: hidden;
    background: #444;
    font-family: Helvetica, Arial, sans-serif;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
	-webkit-user-select: none;
}

    #text-shadow-box #tsb-text,
    #text-shadow-box #tsb-link {
        position: absolute;
        top: 40%;
        left: 0;
        width: 100%;
        height: 1em;
        margin: -0.77em 0 0 0;
        font-size: 90px;
        line-height: 1em;
        font-weight: bold;
        text-align: center;
    }

    #text-shadow-box #tsb-text {
        font-size: 100px;
        color: transparent;
        text-shadow: black 0px -45.2px 19px; 
    }

        #text-shadow-box #tsb-link a {
            color: #999;
            text-decoration: none;
        }

    #text-shadow-box #tsb-box,
    #text-shadow-box #tsb-wall {
        position: absolute;
        top: 40%;
        left: 0;
        width: 100%;
        height: 60%;
    }

    #text-shadow-box #tsb-box {
        -webkit-box-shadow: black 0px -45.2px 39px;
        -moz-box-shadow: black 0px -45.2px 39px;
        box-shadow: 0px -45.2px 39px #000;
    }

    #text-shadow-box #tsb-wall {
        background: #999;
    }

        #text-shadow-box #tsb-wall p {
            position: relative;
            font-size: 18px;
            line-height: 1.5em;
            text-align: justify;
            color: #222;
            width: 550px;
            margin: 1.5em auto;
            cursor: default;
        }

            #text-shadow-box #tsb-wall p a {
                color: #fff;
            }

                #text-shadow-box #tsb-wall p a:hover {
                    text-decoration: none;
                    color: #000;
                    background: #fff;
                }

#tsb-spot {
    position: absolute;
    top: -50%;
    left: -50%;
    width: 200%;
    height: 200%;
    pointer-events: none;
    background: -webkit-gradient(radial, center center, 0, center center, 450, from(rgba(0,0,0,0)), to(rgba(0,0,0,1)));
    background: -moz-radial-gradient(center 45deg, circle closest-side, transparent 0, black 450px);
    background: -o-radial-gradient(center, circle closest-side, transparent 0, black 450px);
}


<!--progress bar-->


    #myProgress {
      width: 100%;
      background-color: #be7429;
    }

    #myBar {
      width: 10%;
      height: 30px;
      background-color: #f0f0f0;
      text-align: center;
      line-height: 30px;
      color: black;
    }
</style>

<!--[if IE]>
<style type="text/css">
/* Sadly no IE9 support for pointer-events: none; nor CSS2 text-shadow */
#tsb-spot {
    display: none;
}
#tsb-ie {
    position: absolute;
    top: -90%;
    left: -50%;
    width: 200%;
    height: 334%;
    background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/Pgo8c3ZnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgdmlld0JveD0iMCAwIDEgMSIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+CiAgPHJhZGlhbEdyYWRpZW50IGlkPSJncmFkLXVjZ2ctZ2VuZXJhdGVkIiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgY3g9IjUwJSIgY3k9IjUwJSIgcj0iNzUlIj4KICAgIDxzdG9wIG9mZnNldD0iMCUiIHN0b3AtY29sb3I9IiMwMDAwMDAiIHN0b3Atb3BhY2l0eT0iMCIvPgogICAgPHN0b3Agb2Zmc2V0PSI3NCUiIHN0b3AtY29sb3I9IiMwMDAwMDAiIHN0b3Atb3BhY2l0eT0iMSIvPgogICAgPHN0b3Agb2Zmc2V0PSIxMDAlIiBzdG9wLWNvbG9yPSIjMDAwMDAwIiBzdG9wLW9wYWNpdHk9IjEiLz4KICA8L3JhZGlhbEdyYWRpZW50PgogIDxyZWN0IHg9Ii01MCIgeT0iLTUwIiB3aWR0aD0iMTAxIiBoZWlnaHQ9IjEwMSIgZmlsbD0idXJsKCNncmFkLXVjZ2ctZ2VuZXJhdGVkKSIgLz4KPC9zdmc+);
}
</style>
<![endif]-->

</head>

<body>
    
<div id="text-shadow-box">
    <div id="tsb-box"></div>
    <p id="tsb-text">Quizz- Villa</p>
    <p id="tsb-link"><a>Quizz-Villa</a></p>
    <div id="tsb-wall">
        <div id="tsb-ie"></div>
     <!--TEXT-->
  

<br>


<script>
function move() {
  var elem = document.getElementById("myBar");   
  var width = 10;
  var id = setInterval(frame, 10);
  
  function frame() {
    if (width >= 100) {
      clearInterval(id);
      window.location="newjsp.jsp";
    } else {
        
      width++; 
      elem.style.width = width + '%'; 
      elem.innerHTML = width * 1  + '%';
    }
  }
}
</script>

     
     <p><center>
    
         <b><input type="submit" name="start" value="Start" style="width: 150px; height: 100px ;font-size: 2.4em; font-family:Verdana;letter-spacing: 6px" onclick="move()" class="shake">   
             <a href="newjsp.jsp"><br><br></a></b></center></p>
   <div id="myProgress">
       <div id="myBar"><center>Loading...</center></div>
</div>

    </div>
    <div id="tsb-spot"></div>
</div>

<script type="text/javascript" language="javascript" charset="utf-8">
/**
 * Zachary Johnson
 * http://www.zachstronaut.com
 * I place the following code in the public domain.
 *
 * Fork it on GitHub: https://github.com/zachstronaut/stop-sopa
 */
 
var text = null,
    spot = null,
    box = null,
    boxProperty = '';

init();

function init() {
    text = document.getElementById('tsb-text');
    spot = document.getElementById('tsb-spot');
    box = document.getElementById('tsb-box');
    
    if (typeof box.style.webkitBoxShadow == 'string') {
        boxProperty = 'webkitBoxShadow';
    } else if (typeof box.style.MozBoxShadow == 'string') {
        boxProperty = 'MozBoxShadow';
    } else if (typeof box.style.boxShadow == 'string') {
        boxProperty = 'boxShadow';
    }

    if (text && spot && box) {
        document.getElementById('text-shadow-box').onmousemove = onMouseMove;
        document.getElementById('text-shadow-box').ontouchmove = function (e) {e.preventDefault(); e.stopPropagation(); onMouseMove({clientX: e.touches[0].clientX, clientY: e.touches[0].clientY});};
    }
}

function onMouseMove(e) {
    if (typeof e === 'undefined' || typeof e.clientX === 'undefined') {
        return;
    }
    
    var xm = (e.clientX - Math.floor(window.innerWidth / 2)) * 0.4,
        ym = (e.clientY - Math.floor(window.innerHeight / 3)) * 0.4,
        d = Math.round(Math.sqrt(xm*xm + ym*ym) / 5);
    
    text.style.textShadow = -xm + 'px ' + -ym + 'px ' + (d + 10) + 'px black';
    
    if (boxProperty) {
        box.style[boxProperty] = '0 ' + -ym + 'px ' + (d + 30) + 'px black';
    }
    
    xm = e.clientX - Math.floor(window.innerWidth / 2);
    ym = e.clientY - Math.floor(window.innerHeight / 2);
    spot.style.backgroundPosition = xm + 'px ' + ym + 'px';
}
</script>

</body>
</html>

