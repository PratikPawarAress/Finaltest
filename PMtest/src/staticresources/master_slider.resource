/* #Site Styles
================================================== */
*{-webkit-text-size-adjust:none; -ms-text-size-adjust:none;}
*,
*:before,
*:after {
    -webkit-box-sizing: border-box;
	-khtml-box-sizing: border-box;
    -moz-box-sizing: border-box;
	-ms-box-sizing: border-box;
	-o-box-sizing: border-box;
    box-sizing: border-box;
}
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside,canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio, video {margin: 0; padding: 0;}

article, aside, details, figcaption, figure, footer, header, hgroup, menu, nav, section {display: block;}

body {background:#ececec; font-family: 'Open Sans', sans-serif; color:#000; -webkit-font-smoothing: antialiased; /* Fix for webkit rendering */ font-size:14px;}
html, body{height:100%;}

h1{font-weight:700; text-transform:uppercase; margin:15px 0 45px; font-size:32px; text-align:center; clear:both;}
h2{}
h3{}
h4{}
h5{}

a{text-decoration:none; outline:none;}
a:hover{outline:none;}

img{max-width:100%; height:auto; border:0; display:block;}
ul, ol{list-style:none; margin:0; padding:0;}
.clear{clear:both;}
.fullwidth{float:left; width:100%;}

input{ outline:none;font-family: 'Open Sans', sans-serif;}
input:focus{outline:none;}
input::-moz-focus-inner{outline:none;}
input[type="button"], input[type="submit"], input[type="reset"]{border:none; cursor:pointer;}
textarea{resize:none; outline:none; font-family: 'Open Sans', sans-serif;}

.container{position:relative; width:960px; margin: 0 auto; padding: 0;}
.feedbackFrom_wraper{max-width:900px; margin:0 auto; padding:30px; background:#fff;}
.logo{background:url(../images/logo.png) no-repeat 0 0; width:224px; height:82px; display:block; margin:0 auto;}
.queLists{margin-bottom:15px;}
.queBox{display:block; float:left; width:100%; padding:15px; background:rgba(0,152,211,0.3); margin-bottom:15px; border:1px solid rgba(0, 152, 211, 0.4);}
.que{font-weight:600; font-size:16px; position:relative; padding-left:20px; margin-bottom:15px;}
.que span{display:block; position:absolute; left:0; top:0;}
.ans{display:block; clear:both; background:#fff; padding:20px;}

.radioLable{display:inline-block; margin-left:15px;}
.radioLable:first-child{ margin-left:0px;}
input[type="radio"] { display:none;}
input[type="radio"] + label { font-size:15px;}
input[type="radio"] + label span { display:inline-block; width:24px; height:24px; margin:0 8px 0 0; vertical-align:middle; background:url(../images/radio.png) right top no-repeat; cursor:pointer;}
input[type="radio"]:checked + label span { background:url(../images/radio.png) left top no-repeat;}
.clientDet_form{margin-bottom:40px;}
.row{margin:0 -15px;}
.clientDet_form h2{font-weight:700; text-transform:uppercase; margin:10px 0 25px; font-size:24px; clear:both;}
.clientDet_form form{text-align:left;}
.clientDet_form .fullname{display:inline-block; padding:0 15px; width:390px;}
.clientDet_form .phoneNo{display:inline-block; padding:0 15px; width:250px;}
.clientDet_form .calender{display:inline-block; padding:0 15px; width:210px; position:relative;}
.clientDet_form .calender .dateBtn{display:block; background:url(../images/calender.png) no-repeat center center; width:35px; height:35px; position:absolute; right:0; top:0;}
.clientDet_form input[type="text"], .clientDet_form input[type="tel"]{width:100%; height:35px; padding:10px; border:1px solid #bcbcbc; font-size:15px;}
.ans textarea{border:0; background:#fff; height:80px; font-size:15px; width:100%;}
.submitRow{clear:both; padding-top:30px; margin-top:30px; border-top:1px solid #bcbcbc;}
.clientDet_form .submitRow input[type="submit"]{background:#0087C8; color:#fff; font-weight:700; text-transform:uppercase; text-align:center; padding:10px 20px; font-size:24px; border-radius:8px; min-width:250px;}
.ui-widget-header { border: 1px solid #1EB5EA !important;  background: #1EB5EA !important; color: #444444; font-weight: bold;}
.ui-slider-pip-inrange .ui-slider-line{box-shadow: 0 0 0 2px #1EB5EA!important;  background: #1EB5EA !important;}

.double-label-slider.ui-slider .ui-slider-pip .ui-slider-label span {font-size: 12px !important; position: absolute; top: 18px; transition: opacity 0.3s ease !important; color: black!important;}

.double-label-slider.ui-slider { margin: 12px!important; height: 6px;  background: #dddddd; border: none;border-radius: 0;}
.whitebox{ background: white; overflow: hidden; padding: 20px 15px 30px 15px;}

slider-pip .ui-slider-label span {width: 100px; margin-left: 0px!important; text-align: center;}
.ui-slider-pip-0 .ui-slider-label {margin-left: -10px!important; }
.ui-slider-pip-4 .ui-slider-label {margin-left:  -85px!important;}
.ui-slider-pip-inrange .ui-slider-label {font-weight:400!important;}
.ui-slider-label span {    opacity: 1!important;    font-size: 1.2em;    line-height: 1.3;    position: absolute;    top: 18px;
    transition: opacity 0.3s ease;}
.double-label-slider.ui-slider .ui-slider-handle { background: #1769BA;    border: none !important;    width: 18px;
	outline: none;    height: 18px;    margin-left: -9px;    border-radius: 100%;    transition: box-shadow 0.2s ease;  cursor:pointer;}
	