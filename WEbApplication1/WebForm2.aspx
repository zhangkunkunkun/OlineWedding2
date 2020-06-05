<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WEbApplication1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <style>  
.heart {
	z-index:-1;
	position:absolute;
	top:10px;
	left:500px;
	width:300px;
	height:480px;
	border-radius:150px 150px 0 0;
}
.heart::after,.heart::before {
	content:"";
	position:absolute;
	background-color:#640d0d;
	width:300px;
	height:480px;
	border-radius:150px 150px 0 0;
}
.heart::before {
	transform:rotate(-45deg);
	background-color:red;
}
.heart::after {
	transform:rotate(45deg);
	background-color:red;
	right:-128px
}
.question {
	font-family:'Fredericka the Great',cursive;
	font-size:2em;
	width:500px;
	position:absolute;
}
.yes-container {
	animation:beat infinite linear 1s;
}
.yes {
	z-index:4;
	position:absolute;
	top:220px;
	left:80px;
	width:50px;
	height:100px;
	border-radius:25px 25px 0 0;
}
.yes::after,.yes::before {
	content:"";
	position:absolute;
	background-color:#640d0d;
	width:60px;
	height:100px;
	border-radius:30px 30px 0 0;
}
.yes::before {
	transform:rotate(-45deg);
	background-color:#640d0d;
}
.yes::after {
	transform:rotate(45deg);
	background-color:#640d0d;
	right:-38px;
}
@keyframes beat {
	0% {
	zoom:1;
}
25% {
	zoom:1.03;
}
50% {
	zoom:1.02;
}
75% {
	zoom:1.03;
}
}.no {
	z-index:4;
	position:absolute;
	top:220px;
	left:260px;
	width:50px;
	height:100px;
	border-radius:25px 25px 0 0;
}
.no::after,.no::before {
	content:"";
	position:absolute;
	background-color:#640d0d;
	width:60px;
	height:100px;
	border-radius:30px 30px 0 0;
}
.no::before {
	transform:rotate(-45deg);
	background-color:#640d0d;
}
.no::after {
	transform:rotate(45deg);
	background-color:#640d0d;
	right:-38px
}
.question {
	position:absolute;
	z-index:3;
	top:100px;
	left:160px;
	color:white;
}
p {
	position:absolute;
	top:30px;
	z-index:3;
	left:33px;
	color:white;
}
.drip {
	position:absolute;
	background-color:#640d0d;
	border-radius:0 0 8px 8px;
	z-index:3;
}
.drop1 {
	width:8px;
	top:290px;
	left:270px;
	animation:dripdrop1 3000ms infinite linear;
}
.drop2 {
	width:8px;
	height:8px;
	top:310px;
	left:310px;
	animation:dripdrop1 4000ms infinite linear;
}
.drop3 {
	width:8px;
	height:8px;
	top:270px;
	left:345px;
	animation:dripdrop1 5500ms infinite linear;
}
@keyframes dripdrop1 {
	0% {
	height:0;
	opacity:1;
}
60% {
	height:35px;
	opacity:1;
}
100% {
	height:35px;
	opacity:0;
}
}body {
	background-color:black;
	font-family:'Fredericka the Great',cursive;
	color:red;
}
.heart1 {
	width:30px;
	height:30px;
	position:absolute;
	background-color:transparent;
	border-radius:20px;
	font-size:50px;
	z-index:-2;
}
#container {
	width:1300px;
	height:900px;
}



    </style>
    <title></title>
</head>
<script src="//cdnjs.cloudflare.com/ajax/libs/gsap/1.13.2/TweenMax.min.js"></script>

    <script type="text/javascript">
 TweenMax.set("img",{xPercent:"-50%",yPercent:"-50%"})

var total = 70;
var w = $("#container").width();
var h = $("#container").height();

 for (i=0; i<total; i++){ 
 $("#container").append('<div class="heart1">♥</div>')
 TweenMax.set($(".heart1")[i],{x:Random(w),y:random(-100,100) ,opacity:1,scale:Random(0.5)+0.5,backgroundColor:"transparent"});
 animm($(".heart1")[i]);
 }
 
 function animm(elm){   
 TweenMax.to(elm,Random(5)+3,{y:h,ease:Linear.easeNone,repeat:-1, delay:-5});
 TweenMax.to(elm,Random(5)+1,{x:'+=70', repeat:-1,yoyo:true,ease:Sine.easeInOut})
 TweenMax.to(elm,Random(1)+0.5,{opacity:0, repeat:-1,yoyo:true,ease:Sine.easeInOut})
 };

function Random (max) {
return Math.random()*max;
}

function random(min, max) {
return min + Math.floor( Math.random() * (max - min));
}
</script>
<body>
<div class="page">
    <div id="container">
        <div class="heart">
            <p class="question">你愿意做我的情人吗</p>
            <div class="yes-container">
                <div class="yes">
                    <p>Yes</p>
                </div>
            </div>
            <div class="no">
                <p>No</p>
            </div>
            <div class="drip drop1"></div>
            <div class="drip drop2"></div>
            <div class="drip drop3"></div>
        </div>

    </div>
</div>

</body>
</html>
