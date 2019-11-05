<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>K-POP</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<style type="text/css">
* {
  margin: 0;
  padding: 0;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
  text-decoration: none;
  font-family: 'Oswald', sans-serif;
}

body {
  margin: 0;
  padding: 0;
}

.landing {
  width: 100%;
  height: 100vh;
  position: relative;
  background: url("http://data.1freewallpapers.com/download/monkey-astronaut.jpg") center no-repeat;
  background-size: cover;
  box-shadow: 1px 3px 8px rgba(0, 0, 0, .3);
  -webkit-box-shadow: 1px 3px 8px rgba(0, 0, 0, .3);
  -moz-box-shadow: 1px 3px 8px rgba(0, 0, 0, .3);
  overflow: hidden;
}

.clipped {
  width: 100%;
  height: 100vh;
  background-color: gold;
  position: absolute;
  clip-path: polygon(0 0, 40% 0%, 70% 100%, 0% 100%, 75% 100%, 0 100%, 0% 75%);
  overflow: hidden;
}

.clipped .intro {
  position: absolute;
  top: 50%;
  left: 20%;
  opacity: 0.90;
  -webkit-transform: translate(-20%, -50%);
  -moz-transform: translate(-20%, -50%);
  -ms-transform: translate(-20%, -50%);
  -o-transform: translate(-20%, -50%);
  transform: translate(-20%, -50%);
  font-size: 10px;
}

.main-section {
  height: 100vh;
  width: 100%;
  position: fixed;
  top: 0;
  left: 0;
  display: none;
  z-index: 999;
}

.logo-section {
  height: 100%;
  width: 50%;
  background-color: gold;
  box-shadow: 10px 0 30px rgba(0, 0, 0, .5);
  -webkit-box-shadow: 10px 0 30px rgba(0, 0, 0, .5);
  -moz-box-shadow: 10px 0 30px rgba(0, 0, 0, .5);
  position: absolute;
  z-index: 999;
}

.logo.isactive {
  position: absolute;
  top: 50%;
  left: 50%;
  -webkit-transform: translate(-50%, -50%);
  -moz-transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  -o-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
  background-color: #dbdbdb;
  border-radius: 50%;
  width: 300px;
  height: 300px;
  border: 5px solid #454545;
  -webkit-animation: bounce 300ms ease-in-out 300ms;
  -o-animation: bounce 300ms ease-in-out 300ms;
  animation: bounce 300ms ease-in-out 300ms;
}

@-webkit-keyframes bounce {
  0% {
    top: 50%;
    left: 50%;
    -webkit-transform: translate(-50%, -50%) scale(0);
    -moz-transform: translate(-50%, -50%) scale(0);
    -ms-transform: translate(-50%, -50%) scale(0);
    -o-transform: translate(-50%, -50%) scale(0);
    transform: translate(-50%, -50%) scale(0);
    opacity: 0;
  }
  50% {
    -webkit-transform: translate(-50%, -50%) scale(1.1);
    -moz-transform: translate(-50%, -50%) scale(1.1);
    -ms-transform: translate(-50%, -50%) scale(1.1);
    -o-transform: translate(-50%, -50%) scale(1.1);
    transform: translate(-50%, -50%) scale(1.1);
    opacity: 0.4;
  }
  75% {
    -webkit-transform: translate(-50%, -50%) scale(0.8);
    -moz-transform: translate(-50%, -50%) scale(0.8);
    -ms-transform: translate(-50%, -50%) scale(0.8);
    -o-transform: translate(-50%, -50%) scale(0.8);
    transform: translate(-50%, -50%) scale(0.8);
    opacity: 0.7;
  }
  100% {
    -webkit-transform: translate(-50%, -50%) scale(1);
    -moz-transform: translate(-50%, -50%) scale(1);
    -ms-transform: translate(-50%, -50%) scale(1);
    -o-transform: translate(-50%, -50%) scale(1);
    transform: translate(-50%, -50%) scale(1);
    opacity: 1;
  }
}

.logo-section p {
  color: #454545;
  text-transform: uppercase;
  font-family: 'Jura', sans-serif;
  font-weight: 600;
  font-size: 20px;
  text-shadow: black;
  position: absolute;
  top: 80%;
  left: 50%;
  -webkit-transform: translate(-50%, -70%);
  -moz-transform: translate(-50%, -70%);
  -ms-transform: translate(-50%, -70%);
  -o-transform: translate(-50%, -70%);
  transform: translate(-50%, -70%);
}

.menu-section {
  height: 100vh;
  width: 50%;
  background-color: #dbdbdb;
  position: absolute;
  left: 50%;
  text-transform: uppercase;
  color: #454545;
}

.menu-section ul {
  position: absolute;
  top: 30%;
  left: -2px;
}

.menu-section ul li {
  height: 90px;
  width: 220px;
  font-size: 50px;
  line-height: 100px;
  cursor: pointer;
}

.nav-item {
  height: 90px;
  width: 0;
  background-color: gold;
  border-top-right-radius: 6px;
  border-bottom-right-radius: 6px;
  display: flex;
  cursor: pointer;
  pointer-events: none;
  -webkit-transition: .5s all;
  -moz-transition: .5s all;
  -ms-transition: .5s all;
  -o-transition: .5s all;
  transition: .5s all;
}

.menu-section ul li:hover .nav-item {
  width: 100%;
  color: #000;
  transition: 1s all;
}

#open-menu {
  height: 70px;
  width: 70px;
  position: fixed;
  top: 50%;
  left: 0;
  -webkit-transform: translate(0, -50%);
  -moz-transform: translate(0, -50%);
  -ms-transform: translate(0, -50%);
  -o-transform: translate(0, -50%);
  transform: translate(0, -50%);
  z-index: 998;
  background: rgba(0, 0, 0, .7);
  cursor: pointer;
  border-top-right-radius: 6px;
  border-bottom-right-radius: 6px;
}

#close-menu {
  height: 70px;
  width: 70px;
  position: fixed;
  top: 50%;
  right: -10%;
  -webkit-transform: translate(0, -50%);
  -moz-transform: translate(0, -50%);
  -ms-transform: translate(0, -50%);
  -o-transform: translate(0, -50%);
  transform: translate(0, -50%);
  z-index: 9999;
  background: rgba(0, 0, 0, .7);
  cursor: pointer;
  border-top-left-radius: 6px;
  border-bottom-left-radius: 6px;
}

.hamburger {
  height: 3px;
  width: 50px;
  background-color: #dddddd;
  position: absolute;
  top: 50%;
  left: 50%;
  -webkit-transform: translate(-50%, -50%);
  -moz-transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  -o-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
}

.hamburger::before {
  content: '';
  height: 3px;
  width: 50px;
  background-color: #dddddd;
  position: absolute;
  margin-top: 12px;
}

.hamburger::after {
  content: '';
  height: 3px;
  width: 50px;
  background-color: #dddddd;
  position: absolute;
  margin-top: -12px;
}

.close-icon::before,
.close-icon::after {
  content: ' ';
  position: absolute;
  top: 50%;
  left: 50%;
  -webkit-transform: translate(-50%, -50%);
  -moz-transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  -o-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
  width: 40px;
  height: 3px;
  background-color: #dddddd;
}

.close-icon::before {
  position: absolute;
  top: 50%;
  left: 50%;
  -webkit-transform: translate(-50%, -50%) rotate(-45deg);
  -moz-transform: translate(-50%, -50%) rotate(-45deg);
  -ms-transform: translate(-50%, -50%) rotate(-45deg);
  -o-transform: translate(-50%, -50%) rotate(-45deg);
  transform: translate(-50%, -50%) rotate(-45deg);
}

.close-icon::after {
  position: absolute;
  top: 50%;
  left: 50%;
  -webkit-transform: translate(-50%, -50%) rotate(45deg);
  -moz-transform: translate(-50%, -50%) rotate(45deg);
  -ms-transform: translate(-50%, -50%) rotate(45deg);
  -o-transform: translate(-50%, -50%) rotate(45deg);
  transform: translate(-50%, -50%) rotate(45deg);
}

#open-menu:hover,
#close-menu:hover {
  background-color: #601d26;
}

::-webkit-scrollbar {
  width: 10px;
}

.active {
  overflow-y: hidden;
}


</style>
<script type="text/javascript">
$(function(){
	$("#open-menu").on('click', function() {
    $(".main-section").fadeIn(200);
    $("#open-menu").animate({
      left: "-10%"
    });
    $("#close-menu").animate({
      right: "0"
    });
    $("body").addClass("active");
    $(".logo").addClass("isactive");
  });

  $("#close-menu").on('click', function() {
    $(".main-section").fadeOut(200);
    $("#open-menu").animate({
      left: "0"
    });
    $("#close-menu").animate({
      right: "-10%"
    });
    $("body").removeClass("active");
    $(".logo").removeClass("isactive");
  });

});
</script>
</head>
<body>
<div id="open-menu">
  <span class="hamburger"></span>
</div>
<div id="close-menu">
  <span class="close-icon"></span>
</div>
<div class="landing">
  <div class="clipped">
    <div class="intro">
      <h1>LOGO</h1>
      <h1>#Something | #Something</h1>
    </div>
  </div>
  <div class="main-section">
    <div class="logo-section">
      <div class="logo">

      </div>
      <p>#Something</p>
    </div>
    <div class="menu-section">
      <ul>
        <li>
          <div class="nav-item">Link</div>
        </li>
        <li>
          <div class="nav-item">Link</div>
        </li>
        <li>
          <div class="nav-item">Link</div>
        </li>
        <li>
          <div class="nav-item">Link</div>
        </li>
      </ul>
    </div>
  </div>
</div>
</body>
</html>