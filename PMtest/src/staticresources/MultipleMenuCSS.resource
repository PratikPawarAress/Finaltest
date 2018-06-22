.main-nav {
	float: right;
	width: auto;
	margin: 0 -10px 0 -15px;
}
.toggleMenu {
	display: none;
	padding: 10px 15px;
	width: 40px;
	height: 40px;
	background: url('http://www.aress.com/images/mobile-menu-btn.png') no-repeat 0 0;
	position: relative;
	right: 15px;
	top: 5px;
	border: 0;
	outline: 0;
	font-size: 0;
	float:right;
}
.nav {
	list-style: none;
*zoom:1;
}
.nav:before, .nav:after {
	content: " ";
	display: table;
}
.nav:after {
	clear: both;
}
.nav ul {
	list-style: none;
	min-width: 14em;
	white-space: nowrap;
}
.nav ul ul {
	min-width: 15em;
	margin-top: 0!important;
}
.nav a {
	padding: 0 20px;
	color: #056695;
	font-size: 13px;
	font-weight: 400;
	text-transform: capitalize;
	line-height: 15px;
}
.nav li {
	position: relative;
}
.nav > li {
	float: left;
	margin-left: 1px;
}
.nav > li.hover > .parent {
}
.nav > li > a {
	color: #000;
	display: block;
	font-size: 14px;
	font-weight: 400;
	line-height: 40px;
	padding: 3px 20px;
	text-transform: uppercase;
}
.nav > li:first-child > a {
	border-left: 0px solid #056695;
}
.nav > li.hover, .nav > li > a:hover, .nav > li.active {
	background-color: #00B7EB;
	color: #fff;
}
.nav > li.hover a, .nav > li.active a {
	color: #fff;
}
.nav li ul {
	position: absolute;
	left: -9999px;
	border: 0px solid #000;
	display: none;
}
.nav > li.hover > ul {
	left: 0;
	display: block;
}
.nav li li.hover ul {
	left: 100%;
	top: 0px;
	display: block;
}
.nav li li:first-child > a {
	border: 0px solid rgba(0,0,0,0.5);
}
.nav li li a {
	display: block;
	position: relative;
	z-index: 100;
	line-height: normal;
	padding: 8px 12px;
	background: #00B7EB;
	border-top: 1px solid rgba(0,0,0,0.5);
	font-size: 14px;
	text-transform: none;
	color: #fff;
}
.nav li li li a {
	z-index: 200;
	background: #008cb4!important;
	border-top: 1px solid rgba(0,0,0,0.5);
}
.nav li li.hover > .parent {
	background: #00759D;
	color: #fff;
}
.nav li li a:hover {
	background: #00759D;
	color: #fff;
}
.nav li li li a:hover {
	background: #00577F!important;
}

@media screen and (max-width:1023px) {
.active {
	display: block;
}
.nav > li {
	float: left;
	width:100%;
	padding: 0;
	background: #0073b6;
	border-bottom: 1px solid rgba(0,0,0,0.5);
	margin-left:0;
}
.nav > li > a {
	line-height: normal;
	font-size: 13px;
}
/*.nav > li.hover > a{background:#00b7eb url(../images/downArrow.png) no-repeat right center!important;}*/
.nav > li > .parent {
	background: #0073b6 url(../images/rightArrow.png) no-repeat right center;
	/*background: #0073b6 url(../images/rightArrow.png) no-repeat right center;*/
	color: #fff;
	width: 100%;
	line-height: normal;
}
.nav > li.hover > .parent{background: #00b7eb url(../images/downArrow.png) no-repeat right center;}
.nav > li.hover > .parent, .nav li:hover a {
	color: #fff;
}
.nav li li a, .nav li li li a {
	border-top: 1px solid rgba(0,0,0,0.5);
}
.nav li li a {
	background: #00a3cb!important;
}
.nav li li a:hover {
	background: #00759D !important;
}
/*.nav li li .parent, .nav li li.hover .parent {*/
.nav li li .parent {
	background: #00a3cb url(../images/rightArrow.png) no-repeat right center!important;
}
.nav li li .parent:hover {background: #00759D url(../images/rightArrow.png) no-repeat right center!important;}
.nav li li.hover .parent{background: #00759D url(../images/downArrow.png) no-repeat right center!important;}
.nav ul {
	display: block;
	width: 100%;
}
.nav > li.hover > ul, .nav li li.hover ul {
	position: static;
}
.nav {
	position: relative;
	top: 0px;
	left: 0;
	width: 100%;
	z-index: 999;
}
.main-nav {
	width: 100%;
	margin: 0;
	position: absolute!important;
	top: 70px!important;
}
.nav > li > a {
	padding: 8px 12px;
	border-left: 0;
	color: #fff;
}
.nav li ul {
	margin-top: 0;
	border: 0px;
}
.nav > li > a:focus {
	background-color: transparent;
	border: 0;
	outline: 0;
}
.nav ul ul {
	border: 0px;
}
nav.main-nav {
	width: 300px!important;
	top: 10px;
	right: 0px;
}
.nav ul {
	white-space: normal;
}
.main-nav ul:before {
	border-bottom: 10px solid #0073B6;
	border-left: 10px solid rgba(0, 0, 0, 0);
	border-right: 10px solid rgba(0, 0, 0, 0);
	content: "";
	height: 0;
	position: absolute;
	right: 22px;
	top: -10px;
	width: 0;
}
.main-nav ul ul:before {
	border: none;
}
ul.nav {
	display: none;
}
}

@media only screen and (max-width:767px) {
nav.main-nav {
	top: 10px;
}
.nav > li > a {
	font-size: 12px;
}
.nav > li > a {
	padding: 7px 12px;
}
/*.main-nav ul ul { overflow:auto; height:70px;}
.main-nav ul ul ul { overflow:visible; height:auto;}*/


nav.main-nav {
	top: 0px!important;
}
#nav {
	top: 50px;
}
}

/*@media only screen and (max-width:767px) and (orientation:landscape){
ul.nav {
	height: 155px;
	overflow: auto;
	-webkit-overflow-scrolling: touch;
	
}	
}*/


@media only screen and (max-width:767px) {
/*ul.nav.landscape {
	height: 155px;
	overflow: auto;
	-webkit-overflow-scrolling: touch;
}*/
.toggleMenu {
	display: block !important;
	padding: 10px 15px;
	width: 40px;
	height: 40px;
	background: url('http://www.aress.com/images/mobile-menu-btn.png') no-repeat 0 0;
	position: relative;
	right: 15px;
	top: 5px;
	border: 0;
	outline: 0;
	font-size: 0;
	float:right;
}
nav.main-nav {
	width: 100%!important;
	top: 10px;
	right: 0px;
}
.main-nav {
	width: 100%;
	margin: 0;
	position: relative!important;
	top: 10px!important;
}

.nav > li > a {
	line-height: normal;
	font-size: 12px!important;
}
.nav li li a {font-size: 13px!important;}
}

@media only screen and (max-width:474px) {
#nav {
	top: 10px;
}
}

@media only screen and (min-width:475px) and (max-width:767px) {
#nav {
	top: 10px;
}
.toggleMenu {
	display: block !important;
	padding: 10px 15px;
	width: 40px;
	height: 40px;
	background: url('http://www.aress.com/images/mobile-menu-btn.png') no-repeat 0 0;
	position: relative;
	right: 15px;
	top: 5px;
	border: 0;
	outline: 0;
	font-size: 0;
	float:right;
}

}