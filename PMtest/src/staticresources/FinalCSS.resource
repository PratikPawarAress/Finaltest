/* #Site Styles
================================================== */
* {
	-webkit-text-size-adjust: none;
	-ms-text-size-adjust: none;
	box-sizing: border-box;
}
*:after, *:before {
	box-sizing: border-box;
}
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio, video {
	margin: 0;
	padding: 0;
}
article, aside, details, figcaption, figure, footer, header, hgroup, menu, nav, section {
	display: block;
}
body {
	background: #F0F0F0;
	font-family: 'Roboto', sans-serif;
	color: #444;
	-webkit-font-smoothing: antialiased; /* Fix for webkit rendering */
	font-size: 16px;
}
html, body {
	height: 100%;
}
h1 {
}
h2 {
}
h3 {
}
h4 {
}
h5 {
}
a {
	text-decoration: none;
	outline: none;
}
a:hover {
	outline: none;
}
img {
	max-width: 100%;
	height: auto;
	border: 0;
	display: block;
}
ul, ol {
	list-style: none;
	margin: 0;
	padding: 0;
}
.clear:before, .clear:after {
	content: '';
	clear: both;
	display: table;
}
.fullwidth {
	float: left;
	width: 100%;
}
input {
	outline: none;
}
input:focus {
	outline: none;
}
input::-moz-focus-inner {
outline:none;
}
input[type="button"], input[type="submit"], input[type="reset"] {
	border: none;
	cursor: pointer;
}
textarea {
	resize: none;
	outline: none;
}
.container {
	position: relative;
	max-width: 1170px;
	margin: 0 auto;
	padding: 0 15px;
}
.mainHeader {
	background: #00A1E1;
	border-bottom: 3px solid #F0F0F0;
	box-shadow: 0 1px 0 #C3C3C3;
	-webkit-box-shadow: 0 1px 0 #C3C3C3;
	-moz-box-shadow: 0 1px 0 #C3C3C3;
	padding: 22px 0;
}
.logo {
	display: block;
	float: left;
}
.backORG {
	display: block;
	float: right;
	color: #fff;
	text-decoration: underline;
	font-size: 16px;
	background: url(../images/back-btn.png) no-repeat 0 center;
	padding-left: 30px;
	line-height: 24px;
	margin-top: 15px;
}
.bodyContainer {
	padding: 30px 0;
}
.welcomeTxt {
	font-weight: 300;
	text-align: center;
	margin: 55px 0 70px;
	color: #52565F;
	font-size: 26px;
	line-height: 32px;
}
.welcomeTxt span {
	font-weight: 400;
	display: block;
	font-size: 36px;
	color: #000;
}
.home-mainNav {
	display: block;
	text-align: center;
	vertical-align: top;
}
.mainNav-box {
	display: inline-block;
	margin: 0 10px 20px;
	min-height: 200px;
	padding: 15px;
	width: 190px;
	color: #fff;
	border-radius: 10px;
	vertical-align: top;
}
.mainNav-box.qb {
	background: #6CBD78;
}
.mainNav-box.cs {
	background: #F9A13F;
}
.mainNav-box.ss {
	background: #52565F;
}
.mainNav-box.r {
	background: #F87D7F;
}
.mainNav-box img {
	display: inline-block;
}
.mainNav-box i {
	margin: 12px 0 20px;
	display: block;
}
.mainNav-box .nav-txt {
	font-weight: 700;
	font-size: 30px;
	line-height: 30px;
	text-shadow: 0 2px 0 rgba(0, 0, 0, 0.15);
	-webkit-text-shadow: 0 2px 0 rgba(0, 0, 0, 0.15);
	-moz-text-shadow: 0 2px 0 rgba(0, 0, 0, 0.15);
	-ms-text-shadow: 0 2px 0 rgba(0, 0, 0, 0.15);
	-o-text-shadow: 0 2px 0 rgba(0, 0, 0, 0.15);
}
.mainNav-box .nav-txt span {
	font-weight: 400;
	font-size: 28px;
	display: block;
}
.nav {
	display: block;
	float: right;
	margin-top: 15px;
}
.nav ul li {
	display: block;
	float: left;
	padding: 0 5px;
}
.nav ul li a {
	display: block;
	color: #fff;
	font-size: 15px;
	height: 35px;
	line-height: 35px;
	padding: 0 15px;
	border-radius: 35px;
}
.nav ul li a.home {
	padding: 5px 6px;
}
.nav ul li a:hover, .nav ul li.active a {
	background: #1C7BBD;
}
.page-name {
	background: #2D3E4E;
	border-bottom: 3px solid #00A1E1;
	padding: 15px 0;
	margin-top: -3px;
	color: #fff;
}
.page-name h2 {
	font-weight: 400;
	font-size: 24px;
	position: relative;
}
.page-name h2:after {
	content: '';
	display: block;
	width: 11px;
	height: 11px;
	position: absolute;
	bottom: -15px;
	left: 20px;
	background: url(../images/blue-arrow.png) no-repeat 0 0;
}
.floatRight {
	float: right;
}
.green-btn {
	display: inline-block;
	padding: 3px 15px;
	line-height: 35px;
	color: #fff;
	font-size: 15px;
	background: #75C181;
	border-radius: 35px;
	margin-bottom: 15px;
	min-width: 125px;
	text-align: center;
}
.green-btn i {
	display: inline-block;
	position: relative;
	top: 2px;
}
.red-btn {
	display: inline-block;
	padding: 3px 15px;
	line-height: 35px;
	color: #fff;
	font-size: 15px;
	background: #f77e7e;
	border-radius: 35px;
	margin-bottom: 15px;
	min-width: 125px;
	text-align: center;
	margin-left: 20px;
}
.defaultTable {
	background: #fff;
	box-shadow: 0 0px 3px rgba(0,0,0,0.2);
	-webkit-box-shadow: 0 0px 3px rgba(0,0,0,0.2);
	-moz-box-shadow: 0 0px 3px rgba(0,0,0,0.2);
	table-layout: fixed;
}
.defaultTable th, .defaultTable td {
	padding: 15px 25px;
	text-align: left;
	vertical-align: top;
}
.defaultTable th {
	background: #D6D6D6;
	font-weight: 600;
	font-size: 17px;
}
.defaultTable td ul.action-links li {
	display: inline-block;
	vertical-align: top;
	border-left: 1px solid #d3d3d3;
	padding: 0 10px;
}
.defaultTable td ul.action-links li:first-child {
	border-left: 0px solid #d3d3d3;
}
.defaultTable tbody tr td {
	border-top: 1px solid #D6D6D6;
}
.defaultTable tbody tr:first-child td {
	border-top: 0px solid #D6D6D6;
}
.defaultTable tbody tr:nth-child(even) {
	background: #f8f8f8;
}
.white-box {
	display: block;
	padding: 35px;
	background: #fff;
	box-shadow: 0 0px 6px rgba(0,0,0,0.1);
	-webkit-box-shadow: 0 0px 6px rgba(0,0,0,0.1);
	-moz-box-shadow: 0 0px 6px rgba(0,0,0,0.1);
	float: left;
	width: 100%;
}
.mainForm {
	display: block;
	max-width: 850px;
	float: left;
	width: 100%;
}
.mainForm .formFeild {
	margin-bottom: 30px;
	float: left;
	width: 100%;
}
.mainForm .formFeildreport {
	float: left;
	width: 100%;
}
.mainForm label {
	display: block;
	float: left;
	padding: 0 15px;
	width: 40%;
	text-align: right;
	font-size: 17px;
	color: #606060;
}
.mainForm .formFeildreport label {
	display: block;
	float: left;
	padding: 0 15px;
	width: 35%;
	text-align: right;
	font-size: 17px;
	color: #606060;
}
.mainForm label span {
	font-size: 12px;
	font-weight: 400;
}
.mainForm .feild {
	display: block;
	float: left;
	padding: 0 15px;
	width: 60%;
	position: relative;
}
.mainForm .feild input[type="text"] {
	background: #F6F6F6;
	height: 45px;
	border-radius: 2px;
	border: 1px solid #E1E1E1;
	padding: 0 15px;
	width: 100%;
	font-family: 'Roboto', sans-serif;
	font-size: 16px;
	font-weight: 400;
}
.mainForm .feild .text-editor, .mainForm .feild textarea {
	background: #F6F6F6;
	height: 200px;
	border-radius: 2px;
	border: 1px solid #E1E1E1;
	padding: 15px;
	width: 100%;
	font-family: 'Roboto', sans-serif;
	font-size: 16px;
	font-weight: 400;
}
.mainForm .feild textarea {
	height: 100px;
}
.mainForm .outside-btn {
	display: block;
	float: left;
	left: 100%;
	position: relative;
	top: 0;
	margin-top: -36px;
	width: auto;
	margin-left: 10px;
}
.mainForm .outside-btn a {
	display: inline-block;
	margin-left: 5px;
	width: auto;
}
.mainForm .outside-btn img {
	max-width: none;
}
.mainForm .feild select {
	background: #F6F6F6;
	height: 45px;
	border-radius: 2px;
	border: 1px solid #E1E1E1;
	padding: 0 15px;
	width: 100%;
	font-family: 'Roboto', sans-serif;
	font-size: 16px;
	font-weight: 400;
	margin-left: 62%;
}
.addquestionpage th, .addquestionpage td {
	padding: 15px 5px !important;
}
.buttons {
	width: 100%;
	text-align: center;
}
.star {
	display: block;
}
.star li {
	display: block;
	float: left;
	padding: 0 5px;
}
.no-margin {
	margin-left: 0%!important;
}
.mar30 {
	margin-bottom: 30px;
}
/*26 july 2016 start*/

.main-footer {
	background: #262626;
	color: #fff;
	min-height: 50px;
	text-align: center;
	padding: 10px 0;
}
.main-footer ul {
	text-align: center;
}
.main-footer ul li {
	text-align: center;
	display: inline-block;
	vertical-align: top;
	padding: 0 10px 0 0;
	margin: 0 6px 0 0;
	position: relative;
}
.main-footer ul li::after {
	border-right: 1px solid #fff;
	content: "";
	height: 14px;
	margin-top: -7px;
	position: absolute;
	right: 0;
	top: 50%;
}
.main-footer ul li {
}
.main-footer ul li:last-child:after {
	border: none;
}
.main-footer ul li a {
	color: #fff;
}
.main-footer ul li a:hover {
	color: #7b7b7b;
}
.main-footer .copyright {
	margin: 5px 0 0 0;
}
.main-footer .copyright {
}
/*sticky footer*/

* {
	margin: 0;
}
html, body {
	height: 100%;
}
.page-wrap {
	min-height: 100%;
	/* equal to footer height */
	margin-bottom: -73px;
}
.page-wrap:after {
	content: "";
	display: block;
}
.main-footer, .page-wrap:after {
	height: 73px;
}

/*26 july 2016 start*/

.margin-topbott-10{
	margin:10px 0;
	}
	
.buttons-outer{
	width:100%;
	text-align:left;
	clear:both;
	padding:0 0 0 315px;
	
	}	
	
.radio-outer{
	width:100%;
	float:left;
	}	
	
.slider-outer{
	width:100%;
	float:left;
	}
	
.freetext-outer{
	width:100%;
	float:left;
	}	
.slider-main{
	width:100%;
	float:left;
	}		
	
	hr {
    clear: both;
    display: block;
    height: 1px;
    margin: 25px 0;
    width: 100%;
}
/*26 july 2016 start*/


/*28 july 2016*/
.form-outer { max-width: 850px; width: 100%; margin:0 auto;}

.form-group { width: 100%;  margin: 0 0 25px 0; float: left;}
.form-group label { width: 35%; min-height:10px; float: left; text-align: right; padding:0 15px; font-size: 17px;}
.form-group .field-outer { width: 65%; float: left; padding: 0 15px;}
.radio-block { width: 100%; }
.radio-block li { float: left; margin: 0 20px 10px 0;}
.radio-block li input[type="radio"] { float: left; margin: 0 5px 0 0; position: relative; top: 5px;}
.radio-block li p { display: block; padding: 0 0 0 20px; width:auto;}
.textarea {	background: #F6F6F6;
	height: 150px;
	border-radius: 2px;
	border: 1px solid #E1E1E1;
	padding: 15px;
	width: 100%;
	font-family: 'Roboto', sans-serif;
	font-size: 16px;
	font-weight: 400;}

.textfield {    
	background: #f6f6f6;
    border: 1px solid #e1e1e1;
    border-radius: 2px;
    font-family: "Roboto",sans-serif;
    font-size: 16px;
    font-weight: 400;
    height: 45px;
    padding: 0 15px;
    width: 100%;}
/*28 july 2016*/

.theme-box
{
	background:#f0f0f0;
	overflow: hidden;
	padding:15px;
}
.theme-box p{
	
	font-weight: 600;
}

.Que1
{
	background:#FFF;
	overflow: hidden;
	padding: 15px;
	margin-bottom: 15px;
	border:1px solid #b0b0b0;
	text-align: center;
}
.martop15
{
	margin-top:15px;
}

.marbot30
{
	margin-bottom: -30px;
}
.txtara
{
	height:80px!important;
}


#myProgress {
  position: relative;
  width: 100%;
  height: 45px;
  background-color: #f6f6f6;
  margin-top: 15px;
}

#myBar {
  position: absolute;
  width: 10%;
  height: 100%;
  background-color: #00a1e1;
}
#label {
  text-align: center;
  line-height: 45px;
  color: white;
}
.satifaction 
{
    BORDER: 1PX SOLID #00a1e1;
    OVERFLOW: HIDDEN;
    HEIGHT: 45PX;
	margin-top:15px;
    
}

.satifaction ul 
{
	list-style: none;
    margin: 0;
    padding: 0;
}
.satifaction p
{
	margin-top: 12px;
}
.satifaction .active

{
	background: #00a1e1;
    color: white;
}


.satifaction ul li
{
	display: block;
    float: left;
    padding: 0 10px;
    border-right: 1px solid #00a1e1;
    height: 45px;
    text-align: center;
	width: 20%;
	background: #f6f6f6;
}
.satifaction ul li:hover
{
	background: #00a1e1;
    color: white;
}
.bornone
{
	border: none!important;
}

.Que1 .form-group label {
    width: 25%!important;
	margin-top:15px!important;
}

.Que1 .mainForm .feild
   
{
    padding: 0px!important;
    width: 100%!important;
    
}

.Que1 .mainForm {
 
    max-width: none!important;
}

.Que1 .mainForm .feild .text-editor, .mainForm .feild textarea
{
	    height: 100px!important;
		padding: 10px!important;
}