<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WEbForm1.aspx.cs" Inherits="WEbApplication1.WEbForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

<style>

    input.ipt1{width:100px;height:24px;border-radius:10px;}
    input.btn1{border-radius:50%;}
    .ipt2{width:300px;height:72px;border-radius:10px;}
    .oiwaiWord{
        font-size:25px;
    }
        .word{ 
    	font-size: 50px; 
    	color:palevioletred;
        align-content:center;
        font-style:oblique;
        font-weight:bold;
    	margin: 3px;
    	animation: changeshadow 1s  ease-in  infinite ;
    	/* 其它浏览器兼容性前缀 */
	    -webkit-animation: changeshadow 1s linear infinite;
	    -moz-animation: changeshadow 1s linear infinite;
	    -ms-animation: changeshadow 1s linear infinite;
	    -o-animation: changeshadow 1s linear infinite;
    }  
    @keyframes changeshadow {  
        0%{ text-shadow: 0 0 4px #4cc134}  
        50%{ text-shadow: 0 0 40px #4cc134}  
        100%{ text-shadow: 0 0 4px #4cc134}  
    }
    /* 添加兼容性前缀 */
	@-webkit-keyframes changeshadow {
	  0%{ text-shadow: 0 0 4px #4cc134}  
          50%{ text-shadow: 0 0 40px #4cc134}  
          100%{ text-shadow: 0 0 4px #4cc134}  
	}
	@-moz-keyframes changeshadow {
	    0%{ text-shadow: 0 0 4px #4cc134}  
            50%{ text-shadow: 0 0 40px #4cc134}  
            100%{ text-shadow: 0 0 4px #4cc134}  
	}
	@-ms-keyframes changeshadow {
	    0%{ text-shadow: 0 0 4px #4cc134}  
            50%{ text-shadow: 0 0 40px #4cc134}  
            100%{ text-shadow: 0 0 4px #4cc134}  
	}
	@-o-keyframes changeshadow {
	    0%{ text-shadow: 0 0 4px #4cc134}  
            50%{ text-shadow: 0 0 40px #4cc134}  
            100%{ text-shadow: 0 0 4px #4cc134}  
	}

    :root {
	/* Base font size */
	font-size: 15px;

	/* Border color variable */
	--border-color: #e70;
}

* {
	box-sizing: border-box;
}

html, body{
	width: 100%;
	height: 100%;
	margin: 0;
	padding: 0;
	overflow:visible;
	color:white;
	background-color:black ;
}
.container{
	
	height: auto;

}

.container1 {
   
	position: relative;
	width: 30rem;
	height: 30rem;
    margin-top:400px;
    margin-left:200px;
    margin-bottom:100px;
	perspective: 100rem;
}

.cube {
	position: relative;
	width: 90%;
	height: 100%;
	transform-style: preserve-3d;
	transition: transform 1s cubic-bezier(0.32, 0.05, 0.35, 1.6);
}


.cube-face-image {
	display:block;
	position:absolute;
	box-shadow: 0 0 0.5rem #fff, 
				0 0 1.5rem var(--border-color),
				0 0 3rem var(--border-color);
}

.image-buttons input {
	border: 0.2rem solid #fafafa;
}

.image-buttons input:focus {
	outline: none;
	border: 0.2rem solid var(--border-color);
}

/* Transform images to create cube */

.image-1 {
	transform: translateZ(16rem);

    }

.image-2 {
	transform: rotateX(-180deg) translateZ(16rem);

    }

.image-3 {
	transform: rotateY(90deg) translateZ(16rem);
}

.image-4 {
	transform: rotateY(-90deg) translateZ(16rem);
}

.image-5 {
	transform: rotateX(90deg) translateZ(16rem);
}

.image-6 {
	transform: rotateX(-90deg) translateZ(16rem);
}

/* Transform cube to show correct image */

.cube.initial-position {
    margin-top:200px;
	transform: translateZ(-15rem) translateY(-20rem) rotateX(-15deg) rotateY(18deg) rotateZ(12deg);
}

.cube.show-image-1 {
	transform: translateZ(-15rem);
}

.cube.show-image-2 {
	transform: translateZ(-15rem) rotateX(180deg);
}

.cube.show-image-3 {
	transform: translateZ(-15rem) rotateY(-90deg);
}

.cube.show-image-4 {
	transform: translateZ(-15rem) rotateY(90deg);
}

.cube.show-image-5 {
	transform: translateZ(-15rem) rotateX(-90deg);
}

.cube.show-image-6 {
	transform: translateZ(-15rem) rotateX(90deg);
}
	.image-buttons input{width:104px}

</style>
    <title>张坤・堵时雨（チョウ・ト）Online Wedding </title>

    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">

    window.onload = function () {
        window.dv_num;
        window.Count;
        window.oneTime = 1;
        Count = <%=count %>;
                //var word = ""
                //while (word != "1005") {
                //    word = prompt("请输入密码（暗証番号を入力してください）", "");
                //}
        
        setInterval(function () {
            var borswer = window.navigator.userAgent.toLowerCase();
                if (borswer.indexOf("ie") >= 0) {
                    //IE内核浏览器
                    var strEmbed = '<embed name="embedPlay" src="video/whys.mp3" width="1" height="1" />';
                    if ($("body").find("embed").length <= 0)
                        $("body").append(strEmbed);
                    var embed = document.embedPlay;

                    //浏览器不支持 audion，则使用 embed 播放
                    embed.volume = 100;
                    embed.play();
                } else {
                    //非IE内核浏览器
                    var strAudio = " <audio id='audioPlay' src='video/whys.mp3'></audio>";
                    if ($("body").find("audio").length <= 0)
                        $("body").append(strAudio);
                    var audio = document.getElementById("audioPlay");

                    //浏览器支持 audion
                    audio.play();
                }
                idx = 1;
        }, 1000);
         

     }

    function changeUp() {
        document.getElementById("change1").style.height = '30rem';
        document.getElementById("form1").style.display = "none";
        document.getElementById("change1").style.display = "block";
        document.getElementById("change2").style.display = "block";
        document.getElementById("pictureBtn").style.display = "none";
        document.getElementById("headWord").style.display = "block";
       
    }
    function changeDown() {
        document.getElementById("change1").style.height = '0';
        document.getElementById("change2").style.height = '0';
        document.getElementById("form1").style.display = "block";
        document.getElementById("change1").style.display = "none";
        document.getElementById("change2").style.display = "none";
        document.getElementById("headWord").style.display = "none";
        document.getElementById("pictureBtn").style.display = "block";
        if (oneTime == 1) {
            RENDERER.init();
            oneTime = oneTime + 1;
        }

    }

    function checkName() {
        if (document.getElementById("name").value.length == 0) {
            alert("请输入姓名（なまえを入力してください）");
            document.getElementById("name").focus();
            return false;
        }else if (document.getElementById("name").value.length > 10) {
            alert("😭姓名过长！（名前長すぎ");
            return false;
        }else if (document.getElementById("textareaOiwai").value.length > 45) {
            alert("😭祝福语过长！（お祝い言葉長すぎ");
            return false;
        }else {
                
            var rando = parseInt(Math.random() * 100000);
            var rand;
            rand = prompt("请输入验证码（PINコードを入力してください）:  " + rando.toString(), "")
            if (rand != rando) {
                alert("😭发送失败! 请输入正确验证码（SEND失敗しました。正しいPINコードを入力してください）")
                return false;
            } else if (Count > 4) {
                alert("😭发送失败! 发送频繁 您已经被锁定！（ブロックされてます）")
                return false;
            } else {

                alert("😃发送成功! 感谢您的祝福与叮嘱！我们将保存一生（コミット成功です。ありがとうございました。）")
                Count = Count + 1;
                dv_num += 1;
                return true;
            }                
        }            
    }  
    
    //DOM load event
    window.addEventListener("DOMContentLoaded", () => {
		 const cube = document.querySelector(".cube"),
		      imageButtons = document.querySelector(".image-buttons");

	     let cubeImageClass = cube.classList[1];
    
	    //Add click event listener to image buttons container
	     imageButtons.addEventListener("click", (e) => {
		
		    //Get node type and class value of clicked element
		    const targetNode = e.target.nodeName,
			      targetClass = e.target.className;

		    //Check if image input has been clicked and isn't the currently shown image
		    if (targetNode === "INPUT" && targetClass !== cubeImageClass) {
			
			    console.log(`Show Image: ${targetClass.charAt(11)}`);

			    //Replace previous cube image class with new class
			    cube.classList.replace(cubeImageClass, targetClass);

			    //Update cube image class variable with new class
			    cubeImageClass = targetClass;	
			
		    }
		
         }, false);
    }, false);

$(function(){
    dv_num = 0; 
    $(".container").each(function(){
    dv_num +=1;
           
   })    
})

var RENDERER = {
	RESIZE_INTERVAL : 30,
	STATIC_RADIUS : 10,
	DYNAMIC_RADIUS : 8,
	SPACE : 60,
	GRAVITY : 0.1,
	MAX_COUNT : 1,
	
	init : function(){
		this.setParameters();
		this.setup();
		this.reconstructMethods();
		this.bindEvent();
		this.render();
	},
	setParameters : function(){
		this.$window = $(window);
		this.$container = $('#jsi-particle-container');
		this.$canvas = $('<canvas />');
		this.context = this.$canvas.appendTo(this.$container).get(0).getContext('2d');
		this.staticParticles = [];
		this.dynamicParticles = [];
		this.resizeIds = [];
	},
	setup : function(){
		this.staticParticles.length = 0;
		this.dynamicParticles.length = 0;
		this.resizeIds.length = 0;
		this.width = this.$container.width();
        this.height = dv_num * 65;
        this.interval = this.getRandomValue(150, 300);
        this.$canvas.attr({ width: this.width, height: this.height });
       
		this.maxCount = Math.ceil(this.width / 1000 * this.height / 1000 * this.MAX_COUNT);
		this.createParticles();
	},
	getRandomValue : function(min, max){
		return min + (max - min) * Math.random() | 0;
	},
	createParticles : function(){
		var columnCount = Math.floor(Math.ceil(this.width / this.SPACE) / 2) * 2 + 1,
			rowCount = Math.ceil(this.height / this.SPACE),
			columnOffset = ((columnCount - 1) * this.SPACE - this.width) / 2;
			
		for(var y = 0; y < rowCount; y++){
			for(var x = 0, count = columnCount + (y % 2 == 0 ? 0 : 1); x < count; x++){
				this.staticParticles.push(new STATIC_PARTICLE(this, x * this.SPACE - columnOffset - (y % 2 == 0 ? 0 : this.SPACE / 2), y * this.SPACE + this.SPACE, Math.round(360 * x / count)));
			}
		}
		this.dynamicParticles.push(new DYNAMIC_PARTICLE(this));
	},
	watchWindowSize : function(){
		while(this.resizeIds.length > 0){
			clearTimeout(this.resizeIds.pop());
		}
		this.tmpWidth = this.$window.width();
		this.tmpHeight = this.$window.height();
		this.resizeIds.push(setTimeout(this.jdugeToStopResize, this.RESIZE_INTERVAL));
	},
	jdugeToStopResize : function(){
		var width = this.$window.width(),
			height = this.$window.height(),
			stopped = (width == this.tmpWidth && height == this.tmpHeight);
			
		this.tmpWidth = width;
		this.tmpHeight = height;
		
		if(stopped){
			this.setup();
		}
	},
	reconstructMethods : function(){
		this.watchWindowSize = this.watchWindowSize.bind(this);
		this.jdugeToStopResize = this.jdugeToStopResize.bind(this);
		this.render = this.render.bind(this);
	},
	bindEvent : function(){
		this.$window.on('resize', this.watchWindowSize);
	},
	checkCollision : function(){
		for(var i = 0; i < this.dynamicParticles.length; i++){
			var dynamicParticles = this.dynamicParticles[i];
			
			for(var j = 0; j < this.staticParticles.length; j++){
				dynamicParticles.checkCollision(this.staticParticles[j]);
			}
		}
	},
	render : function(){
		requestAnimationFrame(this.render);
		this.context.save();
		this.context.fillStyle = 'hsla(0, 0%, 0%, 0.3)';
		this.context.fillRect(0, 0, this.width, this.height);
		this.context.globalCompositeOperation = 'lighter';
		
		for(var i = 0, count = this.staticParticles.length; i < count; i++){
			this.staticParticles[i].render(this.context);
		}
		for(var i = 0, count = this.dynamicParticles.length; i < count; i++){
			this.dynamicParticles[i].render(this.context);
		}
		this.context.restore();
		this.checkCollision();
		
		if(this.dynamicParticles.length < this.maxCount){
			if(--this.interval == 0){
				this.interval = this.getRandomValue(150, 300);
				this.dynamicParticles.push(new DYNAMIC_PARTICLE(this));
			}
		}
	}
};
var STATIC_PARTICLE = function(renderer, x, y, hue){
	this.renderer = renderer;
	this.x = x;
	this.y = y;
	this.hue = hue;
	this.init();
};
STATIC_PARTICLE.prototype = {
	RATE : 5,
	
	init : function(){
		this.particles = [];
		this.theta = 0;
		this.hit = false;
	},
	collide : function(force){
		this.hit = true;
		this.prepared = true;
		this.force = force * this.RATE;
	},
	render : function(context){
		context.save();
		context.translate(this.x, this.y);
		var gradient = context.createRadialGradient(0, 0, 0, 0, 0, this.renderer.STATIC_RADIUS);
		gradient.addColorStop(0, 'hsl(' + this.hue + ', 70%, ' + (5 + 45 * Math.sin(this.theta)) + '%)');
		gradient.addColorStop(1, 'hsl(' + this.hue + ', 70%, ' + (2 + 10 * Math.sin(this.theta)) + '%)');
		context.fillStyle = gradient;
		context.beginPath();
		context.arc(0, 0, this.renderer.STATIC_RADIUS, 0, Math.PI * 2, false);
		context.fill();
		
		for(var i = this.particles.length - 1; i >= 0; i--){
			if(!this.particles[i].render(context)){
				this.particles.splice(i, 1);
			}
		}
		context.restore();
		
		if(this.hit){
			this.theta += Math.PI / 100;
			
			if(this.prepared && this.theta > Math.PI / 2){
				for(var i = 0, count = this.force; i < count; i++){
					this.particles.push(new SPARKLER_PARTICLE(this.renderer, this));
				}
				this.prepared = false;
			}
			if(this.theta > Math.PI){
				this.hit = false;
				this.theta = 0;
			}
		}
		this.hue += 0.2;
		this.hue %= 360;
	}
};
var DYNAMIC_PARTICLE = function(renderer){
	this.renderer = renderer;
	this.init();
};
DYNAMIC_PARTICLE.prototype = {
	RESTITUTION : 0.9,
	
	init : function(){
		this.x = this.renderer.getRandomValue(this.renderer.width / 10, this.renderer.width * 9 / 10);
		this.y = -this.renderer.DYNAMIC_RADIUS;
		this.previousX = this.x;
		this.previousY = this.y;
		this.vx = this.renderer.getRandomValue(1, 3) * (Math.random() < 0.5 ? 1 : -1);
		this.vy = 0;
		this.ax = 0;
		this.ay = this.renderer.GRAVITY;
		this.hue = 210;
	},
	rotate : function(x, y, angle){
		var sin = Math.sin(angle),
			cos = Math.cos(angle);
		return {x : x * cos + y * sin, y : y * cos - x * sin};
	},
	checkCollision : function(staticParticle){
		var dx = staticParticle.x - this.x,
			dy = staticParticle.y - this.y,
			distance = Math.sqrt(dx * dx + dy * dy);
			
		if(distance > this.renderer.STATIC_RADIUS + this.renderer.DYNAMIC_RADIUS){
			return;
		}
		staticParticle.collide(Math.sqrt(this.vx * this.vx + this.vy * this.vy));
		this.hue = staticParticle.hue;
		
		var angle = Math.atan2(dy, dx),
			axis1 = {x : 0, y : 0},
			axis2 = this.rotate(dx, dy, angle),
			v1 = this.rotate(this.vx, this.vy, angle);
		v1.x *= -this.RESTITUTION;
		
		var vAbs = Math.abs(v1.x),
			overlap = (this.renderer.STATIC_RADIUS + this.renderer.DYNAMIC_RADIUS) - Math.abs(axis1.x - axis2.x);
			
		axis1.x += Math.abs(overlap * v1.x / vAbs) * (axis1.x >= axis2.x ? 1 : -1);
		axis1 = this.rotate(axis1.x, axis1.y, -angle);
		v1 = this.rotate(v1.x, v1.y, -angle);
		this.previousX = this.x;
		this.previousY = this.y;
		this.x += axis1.x;
		this.y += axis1.y;
		this.vx = v1.x;
		this.vy = v1.y;
	},
	render : function(context){
		context.save();
		context.translate(this.x, this.y);
		var gradient = context.createRadialGradient(0, 0, 0, 0, 0, this.renderer.DYNAMIC_RADIUS);
		gradient.addColorStop(0, 'hsl(' + this.hue + ', 80%, 60%)');
		gradient.addColorStop(1, 'hsl(' + this.hue + ', 80%, 10%)');
		context.fillStyle = gradient;
		context.beginPath();
		context.arc(0, 0, this.renderer.DYNAMIC_RADIUS, 0, Math.PI * 2, false);
		context.fill();
		context.restore();
		this.x += this.vx;
		this.y += this.vy;
		this.vy += this.ay;
		
		if(this.x < this.renderer.DYNAMIC_RADIUS || this.x > this.renderer.width + this.renderer.DYNAMIC_RADIUS || this.y > this.renderer.height + this.renderer.DYNAMIC_RADIUS){
			this.init();
		}
	}
};
var SPARKLER_PARTICLE = function(renderer, generator){
	this.renderer = renderer;
	this.generator = generator;
	this.init();
};
SPARKLER_PARTICLE.prototype = {
	RADIUS : 20,
	MAX_STROKE_COUNT : 8,
	MAX_VELOCITY : 3,
	MAX_OFFSET : 5,
	SCALE_RATE : 0.01,
	FRICTION : 0.99,
	
	init : function(){
		var velocity = this.renderer.getRandomValue(this.MAX_VELOCITY / 3, this.MAX_VELOCITY),
			theta = this.renderer.getRandomValue(0, Math.PI * 2),
			offset = this.renderer.getRandomValue(0, this.MAX_OFFSET);
		this.x = offset * Math.cos(theta);
		this.y = offset * Math.sin(theta);
		this.radius = this.RADIUS;
		this.strokeCount = Math.round(this.renderer.getRandomValue(4, this.MAX_STROKE_COUNT)) * 2;
		this.radian = Math.PI * 2 / this.strokeCount;
		this.vx = velocity * Math.cos(theta);
		this.vy = velocity * Math.sin(theta);
		this.theta = 0;
		this.scale = 1;
	},
	render : function(context){
		context.save();
		context.translate(this.x, this.y);
		context.scale(this.scale, this.scale);
		context.rotate(this.theta);
		
		if(Math.random() > 0.3){
			context.fillStyle = 'hsl(' + this.generator.hue + ', 60%, 30%)';
			context.beginPath();
			context.moveTo(0, -this.radius);
			
			for(var i = 0, count = this.strokeCount; i < count; i++){
				var radius = this.radius / ((i % 2 == 0) ? 1 : 5);
				context.lineTo(radius * Math.sin(this.radian * i), -radius * Math.cos(this.radian * i));
			}
			context.closePath();
			context.fill();
		}
		context.restore();
		this.x += this.vx;
		this.y += this.vy;
		this.vy += this.renderer.GRAVITY;
		this.vx *= this.FRICTION;
		this.vy *= this.FRICTION;
		this.scale -= this.SCALE_RATE;
		this.theta += Math.PI / 100 * this.vx;
		this.theta %= Math.PI * 2;
		return this.scale >= 0;
	}
};
    function CsharpUse() {
        RENDERER.init();
    }



</script>

</head>

<body>
    <br />
    <div  id="headWord" style=" width:100%; display:block; text-align:center"><h1 class="word">         张坤＆堵时雨 &nbsp&nbsp    2019/10/26 </h1></div><br />
   <div style="display:block;"  id="change1" class="container1">
       
        <div class="cube initial-position"   >
           
            <img class="cube-face-image image-1"  src="img/1.jpg"/>

            <img class="cube-face-image image-2" src="img/2.jpg"/>

            <img class="cube-face-image image-3" src="img/6.jpg"/>

            <img class="cube-face-image image-4" src="img/7.jpg"/>

            <img class="cube-face-image image-5" src="img/8.jpg"/>

            <img class="cube-face-image image-6" src="img/9.jpg"/>

        </div>

    </div>
    <div style=" margin-left:200px; display:block" id="change2" class="image-buttons" >
        <table>
            <tr>
                <td>&nbsp&nbsp</td>
                <td>
                    <input type="image" class="show-image-1" src="img/1.jpg"/>
                </td>
            
                <td>&nbsp&nbsp</td>
                <td>
                    <input type="image" class="show-image-2"src="img/2.jpg"/>
                </td>
                 <td>&nbsp&nbsp</td>
                <td>
                    <input type="image" class="show-image-3" src="img/6.jpg"/>
                </td>
            </tr>
            <tr>
                 <td>&nbsp&nbsp</td>
                <td>
                    <input type="image" class="show-image-4" src="img/7.jpg" />
                </td>
                <td>&nbsp&nbsp</td>
                <td>
                     <input type="image" class="show-image-5" src="img/8.jpg"/>
                </td>
                 <td>&nbsp&nbsp</td>
                <td>
                    <input type="image" class="show-image-6" src="img/9.jpg"/>
                </td>
                <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
                <td>
                    <div><button id="changeDown" style=" width: 80px;height: 80px; background-color:white; border-radius: 50%;border: none" onclick="changeDown()"><b class="word"  style="font-size:20px">继续↓</b></button></div>
                </td>
            </tr>

        </table>

    </div>
 
      

   <div id="pictureBtn" style="float:right; display:none"><button id="changeUp" style=" width: 80px;height: 80px; background-color:white; border-radius: 50%;border: none" onclick="changeUp()"><b class="word"  style="font-size:20px">照片↑</b></button></div>


    <form id="form1" style=" margin-left:10px; display:none"  runat="server">
       
        <asp:ScriptManager runat="server"></asp:ScriptManager>
        <div id="main">
            <div>
                
                <p>点击日期 查看过去・记录现在・规划将来（カレンダーの日付を押下して我々の生活記事をどうぞご覧ください） </p>
                <asp:UpdatePanel runat="server" ID="UpdatePanel2" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div style="width:100%">
                            <asp:Calendar ID="Calendar1" runat="server" AutoPostBackOnSelect="True"
                                    CultureInfo="Japanese (Japan)" Font-Names="Arial,Verdana,Tahoma" Height="280px"
                                    Style=" width:100%; background-color:dimgray; border-left-color:white; border-bottom-color: white; border-top-color: white;
                                    border-right-color: white" onDayRender="cal_DayRender" OnSelectionChanged="cal_Changed">
                            </asp:Calendar>
                           <%-- <asp:Repeater id="rep" runat="Server" DataSource="<%# Mem %>">--%>
                            <%--<textarea id="textarea2" style="font-size:25px; border:groove" runat="server" cols="95" rows="1"></textarea>--%>
                            <asp:Label ID="labelCalender" runat="server"></asp:Label>
                        </div>
                    </ContentTemplate>
<%--                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="Button1"  EventName="Click"/>   
                    </Triggers>--%>
                </asp:UpdatePanel>
               <%-- <asp:Button ID="Button1" runat="server" Text="保存（SEND)" OnClick="BtInsert" /><br />--%>
            </div><br /><br />
 <%--           <div>
                <table>
                    <tr>
                        <td>
                          <object>
                            <embed src="video/video1.gif" />
                          </object>
                        </td>
                        <td>
                          <object>
                            <embed src="video/video2.gif" />
                          </object>
                        </td>
                        <td>
                          <object>
                            <embed src="video/3.gif" />
                          </object>
                        </td>
                        <td>
                          <object>
                              <embed src="video/4.gif" />
                          </object>
                            
                        </td>
                    </tr>
                </table>
            </div>--%>

<%--            <div id="imgShow"><!--大div作为框架-->
                
                <img  id="img0" class="hide" src="img/1.jpg"/>
                <img  id="img1" class="hide" src="img/2.jpg"/>
                <img  id="img2" class="hide" src="img/3.jpg"/>
                <img  id="img3" class="hide" src="img/6.jpg"/>
                <div id="imgDiv"></div>
                <asp:Button runat="server" OnClientClick="return up()" Text="上一张" />  &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                <asp:Button runat="server" OnClientClick="return dowm()" Text="下一张" />  
          </div>--%>

            
            <div  >
                <br />     
                <asp:UpdatePanel runat="server" ID="UpdatePanel1" UpdateMode="Conditional">
                    <ContentTemplate>
                        <p class="word">请您留下祝福与叮嘱</p><br />
                        <label>姓名（なまえ）</label><br /><asp:textbox id="name" CssClass="ipt1" runat="server" Text=""></asp:textbox ><br /><br />
                        <label>请留下您的祝福与叮嘱（お祝い言葉）</label><br /><textarea id="textareaOiwai" class="ipt2" runat="server"   cols="50" rows="3" name="S1"></textarea>
                        <asp:Button ID="ButtonOiwai" CssClass="btn1" runat="server"  Font-Bold="true" Text="发送祝福（SEND）" OnClientClick="return checkName()" OnClick="BtInsertOiwai"/><br /><br /><br />
                        <br />
                       

                            <asp:Repeater  ID="Repeater1" runat="server">
                            
                                <ItemTemplate>
                                     <div id="jsi-particle-container" style=" z-index:20; position:absolute; width:100%; ">  </div>
                                    <div class="container" style=" z-index:100; position: relative; height:65px; width:100%; margin:1px;">
                                        <asp:Label ID="Label1" runat="server">              
                                            <b class="oiwaiWord"><%#Eval("rowNum") %></b>&nbsp
                                            <b class="oiwaiWord" style="color:red">姓名（なまえ）:</b><b class="oiwaiWord"><%#Eval("name") %>&nbsp&nbsp&nbsp</b>
                                            <b class="oiwaiWord" style="color:red">祝福语录（お祝い言葉）:</b><b class="oiwaiWord"><%#Eval("oiwaiMem") %></b><br /><br />
                                        </asp:Label>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater> 
                            
                        
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="ButtonOiwai"  EventName="Click"/>
                        
                    </Triggers>
                </asp:UpdatePanel>              
            </div>
        </div>

         <footer style=" float:right; z-index:90; position: relative;  font-size:40px">新郎制作・Web App From Microsoft Cloud<asp:Button runat="server" OnClick="delete" Text="管理" /></footer>
    </form>

    

    </body>
</html>
