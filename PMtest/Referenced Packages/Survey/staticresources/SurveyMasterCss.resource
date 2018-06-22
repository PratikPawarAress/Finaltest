@charset "utf-8";
/* CSS Document */
@import url('https://fonts.googleapis.com/css?family=Open+Sans:400,700');
* {
	-webkit-text-size-adjust: none;
	-ms-text-size-adjust: none;
	box-sizing: border-box;
	font-family: 'Open Sans'!important;
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
	/*font-family: 'Roboto', sans-serif;*/
	font-family: 'Open Sans', sans-serif;
	color: #444;
	-webkit-font-smoothing: antialiased;
	/* Fix for webkit rendering */
    
	font-size: 16px;
}
body, td {
	font-family: Open Sans!important;
}
html, body {
	height: 100%;
}
a {
	text-decoration: none;
	outline: none;
	transition: all 450ms ease-in-out 0s;
	-webkit-transition: all 450ms ease-in-out 0s;
	-moz--transition: all 450ms ease-in-out 0s;
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
 outline: none;
}
input[type="button"], input[type="submit"], input[type="reset"] {
	border: none;
	cursor: pointer;
}
textarea {
	resize: none;
	outline: none;
	padding: 10px 15px;
	font-family: 'Open Sans', sans-serif;
	font-size: 15px!important;
	border: 1px solid #cccccc;
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
	width: 17%;
    height:50px;
    overflow:hidden;
}
.backORG {
	display: block;
	float: right;
	color: #fff;
	text-decoration: underline;
	font-size: 16px;
	background: url('https://surveyapp-dev-ed--c.na30.content.force.com/servlet/servlet.ImageServer?id=01536000001jPvL&oid=00D36000000jB0z&lastMod=1467952652000') no-repeat 0 center;
	padding-left: 30px;
	line-height: 24px;
	margin-top: 15px;
	text-decoration: none;
}
.bodyContainer {
	padding: 30px 0;
	min-height: 522px;/*font-family: roboto;*/
}
.welcomeTxt {
	font-weight: 400;
	text-align: left;
	margin: 20px 0 70px;
	color: #52565F;
	font-size: 26px;
	line-height: 32px;
	display: block;
}
.welcomeTxt span {
	font-weight: 400;
	display: block;
	font-size: 36px;
	color: #1D7ABD;
	background: #f7f7f7;
	padding: 5px;
	float: none;
	width: 90%;
	max-width: 690px;
	margin: 14px auto;
	border: 1px dashed #ccc;
	border-radius: 15px;
	line-height: normal;
}
.home-mainNav {
	display: block;
	text-align: center;
	vertical-align: top;
	/*background: #F0F0F0;*/
	margin: 0px 30px 30px 30px;/*padding-bottom: 80px;*/
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
.mainNav-box:hover {
	color: #fff!important;
	text-decoration: none;
}
.mainNav-box.qb {
/*background: #6CBD78;*/
}
.mainNav-box.cs {
/*background: #F9A13F;*/
}
.mainNav-box.ss {
/*background: #52565F;*/
}
.mainNav-box.r {
/*background: #F87D7F;*/
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
	margin-left: 0.5em !important;
}
.nav ul li a {
	display: block;
	color: #fff;
	font-size: 14px !important;
	height: 35px;
	line-height: 35px;
	padding: 0 15px;
	border-radius: 35px;
	border-bottom: 1px solid transparent;
}
.nav ul li a.home {
	padding: 5px 6px;
}
.nav ul li a:hover, .nav ul li.active a {
	/*background: #1C7BBD;*/
	text-decoration: none;
	border-bottom-color: #7AB51D;
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
	bottom: -16px;
	left: 20px;
	background: url('https://surveyapp-dev-ed--c.na30.content.force.com/servlet/servlet.ImageServer?id=01536000001jPvQ&oid=00D36000000jB0z&lastMod=1467952670000') no-repeat 0 0;
}
.floatRight {
	float: right;
}
.green-btn {
	display: inline-block;
	padding: 2px 15px 3px 15px !important;
	line-height: 34px;
	color: #fff !important;
	font-size: 15px !important;
	background: #75C181 !important;
	border-radius: 35px !important;
	margin: 15px 0px !important;
	min-width: 126px;
	text-align: center;
	font-weight: bold;
	text-decoration: none !important;
}
.green-btn i {
	display: inline-block;
	position: relative;
	top: 2px;
}
.red-btn {
	display: inline-block;
	padding: 3px 15px !important;
	line-height: 35px;
	color: #fff !important;
	font-size: 15px !important;
	background: #f77e7e !important;
	border-radius: 35px !important;
	margin-bottom: 15px !important;
	min-width: 125px;
	text-align: center;
	font-weight: bold;
}
.defaultTable {
	width: 100% !important;
	background: #fff;
	box-shadow: 0 0px 3px rgba(0, 0, 0, 0.2);
	-webkit-box-shadow: 0 0px 3px rgba(0, 0, 0, 0.2);
	-moz-box-shadow: 0 0px 3px rgba(0, 0, 0, 0.2);
	table-layout: fixed;
	border: 1px solid #d6d6d6;
}
.defaultTable th, .defaultTable td {
	padding: 15px 25px;
	text-align: left;
	vertical-align: top;
	text-transform: capitalize;
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
.defaultTable tr td {
	transition: all 450ms ease-in-out 0s;
	-webkit-transition: all 450ms ease-in-out 0s;
	-moz--transition: all 450ms ease-in-out 0s;
}
.defaultTable tr:hover td {
	background: #eee;
}
.white-box {
	display: block;
	/*padding:35px;*/
    
	padding: 12px 29px;
	background: #fff;
	box-shadow: 0 0px 6px rgba(0, 0, 0, 0.1);
	-webkit-box-shadow: 0 0px 6px rgba(0, 0, 0, 0.1);
	-moz-box-shadow: 0 0px 6px rgba(0, 0, 0, 0.1);
	float: left;
	width: 100%;
	min-height: auto !important;/*min-height: 600px !important;*/
}
.mainForm {
	display: block;
	/*max-width:850px;*/
    
	float: left;
	width: 100%;
}
.mainForm .formFeild {
	margin-bottom: 20px;
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
	width: 25%;
	text-align: right;
	font-size: 17px;
	color: #333;
}
.mainForm .formFeildreport label {
	display: block;
	float: left;
	padding: 0 15px;
	width: 35%;
	text-align: right;
	font-size: 17px;
	color: #606060;
	margin-top: 10px;
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
.mainForm .feild input[type="text"], .mainForm .feild input[type="number"], .optionText, .questionOptionText, .txtCustomeEmail {
	/*background: #F6F6F6;*/
	background: #fff;
	height: 40px;
	border-radius: 2px;
	border: 1px solid #ccc;
	padding: 0 15px;
	width: 100%;
	font-size: 15px;
	font-weight: 400;
}
.optionText {
	margin-right: 20px;
	width: auto !important;
}
.questionOptionText {
	width: 70% !important;
	margin: 0 1.1%;
}
.questionOptionTextInEdit {
	width: 45% !important;
	margin: 0 1.1%;
	background: #F6F6F6;
	height: 40px;
	border-radius: 2px;
	border: 1px solid #E1E1E1;
	padding: 0 15px;
	font-size: 16px;
	font-weight: 400;
}
.mainForm .feild .text-editor, .mainForm .feild textarea {
	background: #fff;
	height: 200px;
	border-radius: 2px;
	border: 1px solid #E1E1E1;
	width: 100%;
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
	height: 40px;
	border-radius: 2px;
	border: 1px solid #E1E1E1;
	padding: 0 15px;
	width: 100%;
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
.main-footer {
	background: #262626;
	color: #fff;
	min-height: 50px;
	text-align: center;
	padding: 10px 0;
	clear: both;
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
    
	margin-bottom: -50px;
}
.page-wrap:after {
	content: "";
	display: block;
}
.main-footer, .page-wrap:after {
	height: 50px;
}
/*26 july 2016 start*/

.margin-topbott-10 {
	margin: 10px 0;
}
.buttons-outer {
	width: 100%;
	text-align: left;
	clear: both;
	padding: 0 0 0 315px;
}
.radio-outer {
	width: 100%;
	float: left;
}
.slider-outer {
	width: 100%;
	float: left;
}
.freetext-outer {
	width: 100%;
	float: left;
}
.slider-main {
	width: 100%;
	float: left;
}
hr {
	clear: both;
	display: block;
	height: 1px;
	margin: 25px 0;
	width: 100%;
}
/*26 july 2016 start*/


.mar30 {
	margin-bottom: 30px;
}
.success li {
	color: #008000;
	width: 100%;
	text-align: center;
	margin: 0 0 20px 0;
}
.tooltip {
	display: inline-block;
	float: left;
	position: relative;
}
.tooltip .tooltiptext {
	visibility: hidden;
	width: 150px;
	background-color: #fff;
	color: black;
	text-align: center;
	border-radius: 6px;
	padding: 10px;
	/* Position the tooltip */
	left: 0;
	position: absolute;
	z-index: 1;
	font-size: 12px !important;
	line-height: normal;
	border: 1px solid #ccc;
	box-shadow: 1px 1px 7px #ccc;
}
.tooltip:hover .tooltiptext {
	visibility: visible;
}
.globalPagination {
	margin: 20px 0px 20px 0px;
	float: right;
}
.globalPagination input[type="submit"] {
	margin-left: 10px;
	background: #fff;
	cursor: pointer;
	border: 1px solid #ccc;
	padding: 5px;
}
.globalPagination input[type="submit"]:hover {
	background: #ccc;
	color: #000;
}
.globalPagination .previous {
	margin-right: 10px;
}
.hideMe {
	display: none;
}
.add_more_button {
	background: rgba(0, 0, 0, 0) url("https://surveybuilder.na3.visual.force.com/resource/1489660217000/SurveyBuilder__Plus") no-repeat left top;
	color: #7ab51d;
	cursor: pointer;
	font-weight: bold;
	line-height: 24px;
	min-height: 25px;
	padding-left: 35px;
	display: inline-block;
}
.add_more_button:hover {
	color: red;
}
.delete_option {
	float: right;
	cursor: pointer;
	margin-top: 10px;
}
.mainForm .typeQuestions label {
	width: auto !important;
}
.sectionTitle {
	font-weight: bold;
	margin: 15px 0px;
	font-size: 20px;
	border-bottom: 1px solid #e2e2e2;
	line-height: 30px;
	/*float: left;*/
	clear: both;
	width: 100%;
}
.questionBoxSeparator {
	padding: 0px 35px 20px;
	background: #fff;
}
.introLine {
	width: 100%;
	text-align: center;
	margin: 10px 0 10px 0;
	font-size: 22px;
	color: #00A1E1;
}
.questionBox {
	margin-bottom: 10px;
	font-size: 18px;
	font-weight: 500;
	color: #000;/*border: 1px solid #ccc;
	border-radius: 20px;
	padding: 15px;*/
}
.questionBox h3 {
	background: #eaeaea;
	border-radius: 9px 9px 0 0;
	margin: 0 0 15px 0;
	text-align: center;
	display: block;
	padding: 15px;
}
.irs-from, .irs-to, .irs-single {
	background: #6CBD78 !important;
}
/* Email Template */

.email-form {
	width: 100%;
	font-size: 15px !important;
}
.email-title {
	margin: 10px 0;
}
.email-title-box input[type="text"] {
	width: 100%;
	margin: 10px 0;
	padding: 5px;
}
.email-desc {
	margin: 10px 0;
}
.email-desc-box input[type="text"] {
	width: 100%;
	margin: 10px 0;
	padding: 5px;
}
/*SBRecipient styling*/

ul.tab {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	border: 1px solid #ccc;
	background-color: #fff;
}
/* Float the list items side by side */

ul.tab li {
	float: left;
	overflow: hidden;
}
/* Style the links inside the list items */

ul.tab li a {
	display: inline-block;
	color: black;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	transition: 0.3s;
	font-size: 17px;
	color: #444 !important;
	font-weight: bold;
}
/* Change background color of links on hover */

ul.tab li a:hover {
	background-color: #ddd;
}
.recipient-tabs .active {
	color: #fff!important;
	background-color: #00a1e1;
	position: relative;
}
.recipient-tabs .active::after {
	background: #ffffff;
	bottom: -20px;
	content: "";
	height: 25px;
	left: 50%;
	margin-left: -12.5px;
	position: absolute;
	transform: rotate(135deg);
	width: 25px;
}
.recipient-tabs .active a {
	color: #fff;
	background-color: #00a1e1!important;
	overflow: hidden;
}
.recipient-tabs a.active:hover {
	color: #fff;
	background-color: #00a1e1!important;
}
.tab.recipient-tabs li {
	margin-left: 0em !important;
}
.tab.recipient-tabs li a:hover {
	text-decoration: none;
}
/* Style the tab content */

.tabcontent {
	display: none;
	padding: 6px 12px;
	border: 1px solid #ccc;
	border-top: none;
}
.spnEmailNote {
	color: green!important;
}
.spanLblEmail {
	font-weight: bold;
}
.create-btn {
	font-weight: bold;
}
.outputMsgCss {
	width: 100px;
	height: 100px;
	color: #008000;
	font-size: 120%;
	margin-left: 3%;
}
.questionsPreview label {
	display: inline !important;
	padding: 0 5px !important;
	float: none !important;
	margin-right: 18px !important;
}
/* new css 13-12-2016*/

.recipients-body .no-padding {
	padding: 15px 0 !important;
}
.inner-table {
	overflow-y: scroll !important;
	overflow-x: hidden !important;
	width: 100% !important;
	height: 500px !important;
}
.inner-table .defaultTable {
	width: 100% !important;
	overflow: auto !important;
}
.inner-table label .spanLblEmail {
	float: left;
	margin-bottom: 10px;
	color: #444 !important;
}
.list.defaultTable th {
	padding: 15px 25px !important;
	font-weight: 600 !important;
	font-size: 17px !important;
}
.list.defaultTable td {
	padding: 10px 2px 10px 25px !important;
	font-size: 16px !important;
}
.defaultTable th {
	color: #444 !important;
	background: #D6D6D6 !important;
	font-weight: 600 !important;
	font-size: 17px !important;
}
.email-styling {
	padding: 15px;
	margin-bottom: 20px;
	margin-top: 0px;
}
.email-styling .formFeild label {
	font-size: 14px;
	margin-bottom: 10px;
	float: left;
	padding: 0!important;
}
.email-styling .spnEmailNote {
	margin-top: 10px;
	float: left;
	font-size: 13px;
}
.hideMe {
	display: none;
}
.delete_option {
	float: right;
	cursor: pointer;
	margin-top: 10px;
}
.mainForm {
	margin-top: 10px;
}
.mainForm .typeQuestions label {
	width: auto !important;
	font-weight: normal!important;
}
.optionContainer img {
	display: inline-block;
	margin-left: 3px;
}
.formBottomFields {
	margin-bottom: 15px!important;
	position: relative;
}
.surveyFullWidth {
	width: 100%;
}
.questionTopSpacing {
	margin-top: 10px;
	clear: both;
}
.questionOptionSpacing {
	margin-right: 30px;
	display: inline-block;
}
.tooltipSmall {
	font-weight: normal !important;
	font-size: 12px;
}
hr:last-child {
	display: none !important;
}
.message {
	margin: 2%;
}
table.typeQuestions label {
	float: right;
}
.fitlerLeftSpace {
	margin-left: 7px !important;
}
.noRecords {
	padding: 10px;
	border: 1px solid #ccc;
	float: left;
	width: 100%;
	display: block;
	color: #f50d6b;
	border-radius: 5px;
}
.surveyTabs {
	padding: 3px 0;
	margin-left: 0;
	margin-bottom: 30px;
	margin-top: 0.1em;
	font: bold 12px;
	border-bottom: 1px solid #ccc;
	clear: both;
	line-height: 25px;
}
.surveyTabs li {
	list-style: none;
	display: inline;
	margin: 0;
	color: gray;
}
.surveyTabs li, .surveyTabs li a {
	padding: 3px 0.5em;
	margin-right: 3px;
}
.surveyTabs li a {
	text-decoration: none;
}
.stepcompleted {
	color: #75C181 !important
}
.stepruning {
	color: #75C181 !important
}
.steppending {
	color: #f9f9f9 !important
}
.surveyTabs li a:link, #tablist li a:visited {
	color: #00a1e1;
}
.surveyTabs li a:hover {
	color: black;
}
.surveyTabs li a.current {
	font-weight: bold;
}
/* Action column styling */
/*.headerStyle {
text-align: center !important;
} */
/* Action icons  */

.action-links {
	text-align: right !important;
	float: right;
	position: relative;
}
/*white-box class with no min-height*/

.content-box {
	display: block;
	/*padding:35px;*/
    
	padding: 12px 29px;
	background: #fff;
	box-shadow: 0 0px 6px rgba(0, 0, 0, 0.1);
	-webkit-box-shadow: 0 0px 6px rgba(0, 0, 0, 0.1);
	-moz-box-shadow: 0 0px 6px rgba(0, 0, 0, 0.1);
	float: left;
	width: 100%;
}
/*Class for message on questionAllocations page*/

.spnQuestionMessage {
	color: red;
	padding: 10px 0;
	margin: 0 0 10px 0;
}
/*making pie graph text align center*/

.pie-graph {
	display: block;
	text-align: center;
}
.borderError {
	border: 1px solid red !important;
}
.scoreMsg, .weightageMsg {
	margin: 0 !important;
	border: 1px solid red;
}
.scores {
	width: 20% !important;
}
.editOptionHeading {
	background: #2d3e4e;
	height: 40px;
	border: none;
	padding: 0 15px;
	width: 70% !important;
	margin: 0 1%;
	font-size: 16px;
	font-weight: 400;
	color: white;
	text-align: center;
}
.optionBottomSpacing {
	margin-bottom: 10px;
	position: relative;
}
.optionScoreHead {
	width: 20% !important;
	background: #2d3e4e !important;
	padding: 0 15px !important;
	height: 40px !important;
	border: none !important;
	margin: 0 1% !important;
	font-size: 16px !important;
	font-weight: 400 !important;
	color: white !important;
	text-align: center !important;
}
.chooseDay {
	margin: 0 !important;
}
#addmore-bottom {
	display: none;
}
.txt-left {
	text-align: left !important;
}
.txt-red {
	color: red;
}
.small-txt {
	font-size: 16px;
}
.action-links .tooltip img {
	margin: 0 5px !important;
}
/*.action-links .tooltip img,.action-links .tooltip a{
    margin:0 !important;
}*/

.formFeild Label {
	padding: 0 15px 7px 15px !important;
	height: auto;
	font-weight: 600;
	font-size: 15px;
}
.formFeild.qs input[type="radio"], .formFeild.qs input[type="checkbox"] {
	margin: 0 0 0 0 !important;
}
.userName {
	margin-top: 60px;
}
/*new classes for new design March 2017*/

.mainHeader {
	background: url('https://surveybuilder.na3.visual.force.com/resource/1488964140000/SurveyBuilder__headerBackground') no-repeat 0 center;
	/*background: #A8E6FF;*/
	border-bottom: 3px solid #F0F0F0;
	box-shadow: 0 1px 0 #C3C3C3;
	-webkit-box-shadow: 0 1px 0 #C3C3C3;
	-moz-box-shadow: 0 1px 0 #C3C3C3;
	padding: 22px 0;
	border-bottom: 75px solid #2D3E4E;
	margin-bottom: 0px;
	background-position: top center;
	background-size: cover;
}
.nav {
	margin-top: 5px;
}
.nav ul li a {
	color: #000;
	margin-left: 0px !important;
	padding: 3px 5px;
	line-height: 26px;
	height: auto;
	border-bottom: 2px solid transparent;
	border-radius: 0;
}
.nav ul li a b {
	font-weight: 600;
}
.nav ul li a:hover, .nav ul li a:focus {
	background: transparent;
	color: #1C7BBD;
}
.nav ul li.active a {
	color: #00A2DB;
	/*border-radius: 5px;*/
	/*background: #1C7BBD;*/
	border-bottom-color: #7AB51D;
}
.nav ul li .logout {
	font-weight: 600 !important;
}
.page-name {
	display: none;
}
.bodyContainer {
	padding: 0px 0;
	margin-top: -50px;
	margin-bottom: 25px;
}
.bodyContainer .white-box {
	padding: 0;
	border-radius: 20px;
	box-shadow: 0 0px 20px rgba(0, 0, 0, 0.1);
	-webkit-box-shadow: 0 0px 20px rgba(0, 0, 0, 0.1);
	-moz-box-shadow: 0 0px 20px rgba(0, 0, 0, 0.1);
}
.bodyContainer .white-box .sectionTitle {
	background: #7AB51D;
	padding: 10px 30px;
	margin: 0;
	color: #fff;
	font-weight: 400;
	border-radius: 18px 18px 0px 0px;
}
.formFeild, table {
	padding: 0px 30px;
	box-shadow: 0 0px 0px rgba(0, 0, 0, 0.0) !important;
	-webkit-box-shadow: 0 0px 0px rgba(0, 0, 0, 0.0) !important;
	-moz-box-shadow: 0 0px 3px rgba(0, 0, 0, 0.0) !important;
}
.green-btn {
	border-radius: 5px !important;
	background: #00A1E1 !important;
	transition: all 450ms ease-in-out 0s;
	-webkit-transition: all 450ms ease-in-out 0s;
	-moz--transition: all 450ms ease-in-out 0s;
	min-height: 40px;
}
.requiredInput a {
	font-weight: 600;/*text-transform: uppercase;*/
}
.requiredInput input {
/*font-weight: 600;text-transform: uppercase;*/
}
.requiredInput a:nth-of-type(3) {
	background: #7AB51D !important;
}
.requiredInput input:nth-of-type(3) {
/*background-color: #7AB51D !important;*/
}
.requiredInput input:nth-of-type(3):before {
	content: "";
	position: absolute;
	width: 50px;
	height: 50px;
	background: red;
}
.defaultTable th {
	color: #fff !important;
	background: #9E9E9E !important;
	font-weight: 400 !important;
	font-size: 18px !important;
}
.defaultTable th, .defaultTable td {
	padding: 10px 10px;
}
.globalPagination {
	margin-right: 30px;
}
.main-footer {
	background: #2D3E4E;
	height: auto;
	/*margin-top: 50px !important;*/
	padding: 17px;
}
/*.floatRight {margin-right:30px;}*/
.inner-footer {
	width: 1140px;
	margin: 0 auto;
	background: red;
	font-size: 12px;
}
.inner-footer ul {
	float: left;
}
.inner-footer .copyright {
	float: right;
	margin: 0px;
}
input.reload-btn {
	background-image: url('https://surveybuilder.na3.visual.force.com/resource/1488964223000/SurveyBuilder__newReload') !important; /* 16px x 16px */
	background-color: transparent; /* make the button transparent */
	background-repeat: no-repeat !important;  /* make the background image appear only once */
	background-position: 17px 5px !important;  /* equivalent to 'top left' */
	padding: 0px 20px 0px 45px !important;
	border: none;           /* assuming we don't want any borders */
	cursor: pointer;        /* make the cursor like hovering over an <a> element */
	padding-left: 16px;     /* make text start to the right of the image */
	vertical-align: middle; /* align the text vertically centered */
	transition: all 450ms ease-in-out 0s;
	-webkit-transition: all 450ms ease-in-out 0s;
	-moz--transition: all 450ms ease-in-out 0s;
}
.requiredInput input.filter-btn, input.filter-btn {
	background-image: url('https://surveybuilder.na3.visual.force.com/resource/1488964204000/SurveyBuilder__newMore') !important; /* 16px x 16px */
	background-color: transparent; /* make the button transparent */
	background-repeat: no-repeat !important;  /* make the background image appear only once */
	background-position: 17px 5px !important;  /* equivalent to 'top left' */
	padding: 0px 20px 0px 45px !important;
	border: none;           /* assuming we don't want any borders */
	cursor: pointer;        /* make the cursor like hovering over an <a> element */
	padding-left: 16px;     /* make text start to the right of the image */
	vertical-align: middle; /* align the text vertically centered */
	transition: all 450ms ease-in-out 0s;
	-webkit-transition: all 450ms ease-in-out 0s;
	-moz--transition: all 450ms ease-in-out 0s;
}
input.filter-btn:hover, input.reload-btn:hover, input.addnew-btn:hover {
	background-color: #4b4b4c!important;
}
input.addnew-btn {
	background-image: url('https://surveybuilder.na3.visual.force.com/resource/1488964176000/SurveyBuilder__newAdd') !important; /* 16px x 16px */
	background-color: transparent; /* make the button transparent */
	background-repeat: no-repeat !important;  /* make the background image appear only once */
	background-position: 17px 5px !important;  /* equivalent to 'top left' */
	padding: 0px 20px 0px 45px !important;
	border: none;           /* assuming we don't want any borders */
	cursor: pointer;        /* make the cursor like hovering over an <a> element */
	padding-left: 16px;     /* make text start to the right of the image */
	vertical-align: middle; /* align the text vertically centered */
	transition: all 450ms ease-in-out 0s;
	-webkit-transition: all 450ms ease-in-out 0s;
	-moz--transition: all 450ms ease-in-out 0s;
}
.userName {
	padding: 15px 30px 5px 30px;
	margin: 0 30px 0px 30px !important;/*background: #F0F0F0;*/
}
.welcomeTxt {
	padding: 0px 30px 30px 30px;
	margin: 0px 30px 0px 30px !important;/*background: #F0F0F0;*/
}
.userName, .welcomeTxt {
	text-align: center;
}
.home-mainNav .mainNav-box:hover {
	color: #fff!important;
	box-shadow: none;
	background: #7AB51D!important;
}
.mainNav-box.qb {
	background: #7AB51D url('https://surveybuilder.na3.visual.force.com/resource/1489036990000/SurveyBuilder__StraightLine') !important; /* 16px x 16px */
	min-width: 350px;
	box-shadow: 10px 10px 5px #888888;
	box-shadow: 0px 0px 11px #888888;
	border: 1px solid #fff;
	min-height: auto;
	padding: 25px 35px;
}
.mainNav-box.cs {
	background: #7AB51D url('https://surveybuilder.na3.visual.force.com/resource/1489036990000/SurveyBuilder__StraightLine') !important; /* 16px x 16px */
	min-width: 350px;
	box-shadow: 10px 10px 5px #888888;
	box-shadow: 0px 0px 11px #888888;
	border: 1px solid #fff;
	min-height: auto;
	padding: 25px 35px;
}
.mainNav-box.qb i, .mainNav-box.cs i {
	float: left;
	margin: 0;
}
.mainNav-box.qb .nav-txt, .mainNav-box.cs .nav-txt {
	float: left;
	text-align: left;
	font-weight: 400;
	font-size: 26px;
	margin-left: 6px;
	margin-top: 20px;
}
.mainNav-box.qb .nav-txt span, .mainNav-box.cs .nav-txt span {
	font-size: 40px;
}
.white-box .floatRight {
	margin-right: 30px;
}
.white-box .formFeild .feild .floatRight {
	margin-right: 0px;
}
.insideForm {
	clear: both;
	/*background: #F2F2F2;*/
	/*margin: 15px;*/
	padding: 15px;
	border-radius: 10px;
}
.insideForm .formFeild {
	margin: 0 auto 10px auto;
}
.insideForm .formFeild label {
	width: 100%;
	text-align: left;
}
.feild > div {
	font-size: 14px;
	color: #ccc;
	margin-bottom: 5px;
}
.mainForm .feild span img {
	background: #fff;
	padding: 20px;
	border: 1px solid #ddd;
}
.mainForm .feild span a {
	border-radius: 2px !important;
	background: #fff !important;
	display: inline-block;
	padding: 3px 15px !important;
	line-height: 35px;
	color: #000 !important;
	font-size: 15px !important;
	margin: 5px !important;
	min-width: 126px;
	height: 35px;
	text-align: center;
	font-weight: bold;
	text-decoration: none !important;
	border: 1px solid #aaaaaa;
}
.cke_button_icon {
	margin-top: 10px!important;
}
.cke_toolbar, .cke_toolbar .cke_toolgroup {
	width: auto;
}
.cke_toolgroup {
	background: #f7f7f7!important;
}

@media (max-width:1460px) {
.inner-footer {
	width: 100%;
}
}

@media (min-width:768px) and (max-width:1024px) {
/*.nav ul li {
	margin-left: 0em !important;
	padding: 0;
}
*/
.nav ul li a {
/*font-size: 12px !important;*/
}
.welcomeTxt span {
	width: 100%;
}
.mainNav-box.qb {
	min-width: 380px;
	padding: 25px 20px;
}
.mainNav-box.cs {
	min-width: 380px;
	padding: 25px 20px;
}
.inner-footer {
	width: 100%;
}
}

@media (max-width:360px) {
.mainNav-box.qb .nav-txt, .mainNav-box.cs .nav-txt {
	margin-top: 0;
}
.mainNav-box.qb i, .mainNav-box.cs i {
	width: 50px;
	margin-right: 10px;
}
}
.create-survey-questions-page .top-btn-outer, .edit-survey-page .top-btn-outer, .recipients-body .top-btn-outer, .create-survey-page .top-btn-outer, .send-survey-page .top-btn-outer {
	padding: 0 30px;
	text-align: right;
}

@media (max-width:767px) {
.quick-links {
	margin-bottom: 15px!important;
}
.survey-form-page .form-box-outer .mainForm {
	padding: 0;
}
.form-box-outer {
	padding: 15px!important;
}
.update-template-page .mainForm {
	float: left
}
.sectionTitle {
	font-size: 18px;
}
.recipients-body .form-box-inner {
	padding: 15px;
}
.create-survey-questions-page .add_more_button {
	margin-bottom: 10px;
}
.create-survey-questions-page .form-box-outer {
	padding: 0!important;
}
.create-survey-questions-page .defaultTable, .question-allocation-page .defaultTable {
	width: 700px!important;
}
.create-survey-page .form-box-inner {
	padding: 5px;
}
.create-survey-page input[type="number"] {
	width: 100%!important;
}
.create-survey-page .tooltiptext {
	left: 0!important;
	top: 25px;
}
.create-survey-questions-page .mainForm {
/*width: 767px;*/
}
.edit-question .typeQuestions label {
	padding: 12px 15px 0 !important;
}
.mainForm .formFeild {
	margin-bottom: 15px;
}
.formFeild Label {
	height: auto!important;
	margin: 0 0 10px 0;
}
.welcomeTxt {
	padding: 10px;
}
.mainNav-box.qb {
	min-width: 100%;
	padding: 25px 20px;
	margin: 0px 0px 20px 0px;
}
.mainNav-box.cs {
	min-width: 100%;
	padding: 25px 20px;
	margin: 0px 0px 20px 0px;
}
.welcomeTxt {
	margin: 0px 10px 0px 10px !important;
}
.welcomeTxt span {
	width: 100%;
	font-size: 20px;
}
.home-mainNav {
	padding: 10px;
	margin: 0px 10px 10px 10px;
}
.inner-footer {
	background: transparent;
}
.inner-footer .copyright {
	float: none;
	margin: 0px;
	text-align: center;
	margin-top: 10px;
}
.inner-footer ul {
	float: none;
	text-align: center;
}
.userName {
	margin: 10px 10px 0px 10px !important;
}
.mainNav-box.qb .nav-txt, .mainNav-box.cs .nav-txt {
	font-size: 23px;
}
.mainNav-box.qb .nav-txt span, .mainNav-box.cs .nav-txt span {
	font-size: 28px;
}
/*surveyConfiguration*/
.insideForm {
	float: left;
	/*background: #F0F0F0;*/
	background: #fff;
	margin: 0;
	padding: 0px;
	width: 100%;
}
.mainForm {
	padding: 15px;
	margin-top: auto;
}
.formFeild, table {
	padding: 0px 15px;
}
.formFeild Label {
	padding: 0 !important;
}
.mainForm .feild {
	padding: 0;
	width: 100%;
}
}
/*15 March 2017*/
.full-width {
	width: 100%!important;
}
.survey-configuration .green-btn:hover {
	background: #4B4B4C!important;
}
.survey-configuration input[type="text"] {
	background: #fff!important;
	width: 100%;
}
.survey-configuration .mainForm .feild a.remove-logo img {
	border: none!important;
	margin: 0 10px 0 0;
	padding: 0;
	display: inline-block;
	vertical-align: middle;
}
.survey-configuration .mainForm .feild a.remove-logo {
	line-height: 26px!important;
	font-size: 14px!important;
	font-weight: normal;
	margin: 10px 0 0 0!important;
}
.survey-configuration .mainForm .feild a.remove-logo:hover {
	color: #00A1E1!important;
}
.survey-configuration .insideForm {
}
.survey-configuration .survey-configuration-form, .create-question-page .mainForm, .edit-survey-page .mainForm, .form-box, .clone-survey-page .mainForm, .update-template-page .mainForm, .email-template-page .mainForm {
	max-width: 720px;
	width: 100%;
	margin: 0 auto;
	float: none!important;
}
.clearfix:before, .clearfix:after {
	content: '';
	display: table;
}
.clearfix:after {
	clear: both;
}
.small-text {
	color: #555!important;
}
.margintop-10 {
	margin-top: 10px;
}
.confirmM3 {
	background: #DFF0D8;
}
.searchForm .optionText {
	text-transform: none;
	font-weight: normal;
}
/* Add a black background color to the top navigation */
.topnav {
	overflow: hidden;
}
/* Style the links inside the navigation bar */
.topnav a {
	float: left;
	display: block;
	color: #fff;
	text-align: center;
	padding: 10px 15px;
	text-decoration: none;
	font-size: 15px!important;
}
/* Change the color of links on hover */
.topnav a:hover {
	background-color: #ddd;
	color: black;
}
/* Hide the link that should open and close the topnav on small screens */
.topnav .icon {
	display: none;
}
.navbar-toggle {
	display: none;
}

/* When the screen is less than 1023 pixels wide, hide all links, except for the first one ("Home"). Show the link that contains should open and close the topnav (.icon) */
@media screen and (max-width: 1023px) {
.survey-form-page table {
	width: 100%;
}
.survey-form-page .questionsPreview td, .preview-survey-page .questionsPreview td {
	width: 100%;
	display: block;
	margin: 0 0 5px 0;
}
.survey-form-page .questionsPreview td:last-of-type {
	margin-bottom: 0;
}
.survey-form-page .questionsPreview td input[type="checkbox"], .survey-form-page .questionsPreview td input[type="radio"], .preview-survey-page .questionsPreview td input[type="checkbox"], .preview-survey-page .questionsPreview td input[type="radio"] {
	float: left;
	margin: 5px 0px 0 0!important;
}
.survey-form-page .questionsPreview td label, .survey-form-page .questionsPreview td label, .preview-survey-page .questionsPreview td label {
	padding: 0 0 0 20px!important;
	display: block!important;
	text-align: left;
	margin: 0!important;
	width: 100%;
	line-height: normal;
}
.view-feedbacks-page .table-responsive {
	border: 1px solid #dddddd;
	margin-bottom: 15px;
	overflow-y: hidden;
	width: 100%;
}
.view-feedbacks-page .table-responsive {
	min-height: 0.01%;
	overflow-x: auto;
}
.view-feedbacks-page .table-responsive table {
	width: 1000px!important;
}
.filter-reset-btn-outer {
	display: block;
	margin-top: 15px;
}
.view-feedbacks-page .feedbacks-top-btn-section .select-outer {
	margin-bottom: 15px;
}
.create-survey-questions-page .formFeild.qs .feild {
	width: auto!important;
}
.typeQuestions td {
	min-width: auto!important;
}
.mainHeader {
	padding: 10px 0;
	height: 145px;
}
.navbar-toggle {
	display: block;
	position: absolute;
	right: 15px;
	top: 11px;
}
.topnav ul {
	display: none;
}
.topnav.responsive ul {
	display: block;
	border: 1px solid #a4a4a3;
}
.topnav ul li {
	margin-left: 0!important;
	border-bottom: 1px solid #a4a4a3;
}
.topnav ul li:last-child {
	border-bottom: none;
}
.topnav ul li a b {
	font-weight: normal;
}
.topnav a.icon {
	float: right;
	display: block;
}
.icon {
	float: right;
	font-weight: bold;
	color: #000;
}
a.icon i {
	font-size: 25px!important;
}
.topnav {
	width: 250px;
	float: right;
	top: 40px;
	background: #818181;
}
.topnav a:hover {
	background: #00B9EB!important;
	color: #fff;
	text-docoration: none!important;
}
body .topnav a:hover b {
	text-docoration: none!important;
}
.topnav.responsive {
	position: absolute!important;
	right: 15px;
	z-index: 1000;
}
.topnav.responsive a.icon {
	position: absolute;
	right: 0;
	top: 0;
}
.topnav.responsive a {
	float: none;
	display: block;
	text-align: left;
	padding: 5px 10px;
	font-weight: normal!important;
	text-decoration: none!important;
}
.logo {
	width: 150px;
	margin-top: 2px;
}
}

@media (max-width:1280px) {
.tooltip .tooltiptext {
	left: -100px;
}
}
.back-btn {
	padding: 0 0 0 34px;
	background: url('https://surveybuilder.na3.visual.force.com/resource/1489660265000/SurveyBuilder__left')no-repeat left 3px;
	color: #fff;
	float: right;
	font-size: 15px;
	min-height: 30px;
}
.back-btn:hover {
	text-decoration: none;
	color: #000;
}
.edit-question .mainForm {
	max-width: 720px;
	width: 100%;
	float: none;
	margin: 0 auto;
	padding: 0;
}
.edit-question .formFeild label {
	width: 100%;
	text-align: left;
}
.edit-question .formFeild .feild {
	width: 100%;
}
.select-outer {
	border: 1px solid #ccc;
	background: #fff url("https://surveybuilder.na3.visual.force.com/resource/1489660245000/SurveyBuilder__Down") no-repeat right center;
	width: 100%;
	border-radius: 2px;
	height: 40px;
	padding-right: 0;
}
.select-outer select {
	background: none!important;
	border: none!important;
	appearance: none;
	-moz-appearance: none;
	-webkit-appearance: none;
	width: 100%!important;
	height: 40px!important;
	padding-right: 30px!important;
}
.select-outer select option {
	padding: 5px 10px!important;
}

/*google chrome hack for select box*/
@media screen and (-webkit-min-device-pixel-ratio:0) {
/* Safari and Chrome */
select {
	padding: 0 8px!important;
}

/* Safari only override */
::i-block-chrome, select {
padding:0 5px;
}
::i-block-chrome, select {
padding:0 6px;
}
}
.default-btn {
	transition: all 450ms ease-in-out 0s;
	-webkit-transition: all 450ms ease-in-out 0s;
	-moz--transition: all 450ms ease-in-out 0s;
}
.default-btn:hover {
	background-color: #4b4b4c!important;
}
/*common class start*/
.no-padding {
	padding: 0!important;
}
.no-padding-right {
	padding-right: 0!important;
}
.no-padding-bottom {
	padding-bottom: 0!important;
}
.no-padding-top {
	padding-top: 0!important;
}
.no-margin-top {
	margin-top: 0!important;
}
.no-margin-bottom {
	margin-bottom: 0!important;
}
.no-margin-right {
	margin-right: 0!important;
}
.no-margin-left {
	margin-left: 0!important;
}
.text-right {
	text-align: right;
}
.text-center {
	text-align: center;
}
.fullwidth {
	display: block;
	float: left;
	width: 100%;
}
.margin-top15 {
	margin-top: 15px;
}
.margin-bottom15 {
	margin-bottom: 15px;
}
/*common class end*/
.manage-questions-page .question-field, .survey-list-page .question-field, .list-email-template .optionText {
	position: relative;
	top: 2px;
}
.manage-questions-page .question-search-box, .survey-list-page .question-search-box {
	width: 70%;
	float: left;
}
.manage-questions-page .addnew-btn-outer, .survey-list-page .addnew-btn-outer {
	width: 30%;
	padding: 0;
	margin: 0;
	text-align: right;
}
.create-question-page .mainForm .feild {
	width: 100%;
}
.manage-questions-page .addnew-btn-outer, .survey-list-page .addnew-btn-outer {
}
.create-question-page .typeQuestions {
	padding: 0;
	width: 100%;
}
.create-question-page .insideForm {
/*padding: 30px 0;*/
}
.create-question-page .optionContainer .select-outer, .create-new-question-form .optionContainer .select-outer {
	float: left;
	width: 20%;
}
.create-question-page .optionContainer .select-outer select, .create-new-question-form .optionContainer .select-outer select {
	width: 100%!important;
}
.create-question-page .questionOptionText, .test .questionOptionText {
	float: left;
}
.create-question-page .formBottomFields {
	clear: both;
	float: left;
	width: 100%;
}
.typeQuestions td {
	min-width: 150px;
}
.create-question-page .typeQuestions td label {
	width: auto!important;
	float: none;
	padding: 0!important;
	height: auto;
	font-weight: bold;
}
.create-question-page .typeQuestions td input[type="radio"] {
	float: left;
	margin: 4px 10px 0 0!important;
}

@media (min-width:768px) and (max-width:992px) {
.manage-questions-page .addnew-btn-outer, .survey-list-page .addnew-btn-outer {
	width: auto;
}
.manage-questions-page .question-search-box, .survey-list-page .question-search-box {
	width: auto;
	padding-right: 0;
}
}

@media (max-width:767px) {
.survey-form-page .questionBox {
	font-size: 16px;
}
.survey-form-page label {
	font-size: 15px;
}
.preview-survey-page .form-box-outer, .preview-survey-page .section-heading p, .preview-survey-page .form-box-inner {
	padding: 15px!important;
}
.preview-survey-page .form-box-outer .mainForm {
	padding: 0!important;
}
.preview-survey-page .introLine {
	font-size: 17px!important;
}
.questionBox h3 {
	font-size: 14px;
	padding: 10px 15px;
}
.create-survey-questions-page .formFeild.qs input[type="radio"] {
	margin-right: 5px!important;
}
.create-survey-questions-page .formFeild.qs .feild {
	width: 100%!important;
}
.typeQuestions {
	width: 100%!important;
}
.bodyContainer .white-box .sectionTitle {
	padding-left: 15px;
	padding-right: 15px;
	float: left;
}
.manage-questions-page .addnew-btn-outer, .survey-list-page .addnew-btn-outer {
	width: 100%;
	padding-right: 15px;
}
.manage-questions-page .question-search-box, .survey-list-page .question-search-box {
	width: 100%;
}
.addnew-btn-outer .addnew-btn {
	margin: 0 0 15px 0!important;
}
.create-question-page .typeQuestions {
	width: 100%;
}
.create-question-page .typeQuestions td {
	min-width: 100%!important;
	display: block;
	width: 100%;
	float: left;
}
.survey-list-page .defaultTable {
	width: 767px!important;
}
}

@media (max-width:580px) {
.question-field {
	width: 100%!important;
	margin-top: 15px;
}
.report-sent-date {
	float: none!important;
}
}
.manage-options-page .block-heading {
	color: #000;
	border-bottom: 1px solid #ccc;
	padding: 0 0 15px 0;
	font-size: 18px;
	margin: 0 0 15px 0;
}
.manage-options-page .content-block {
	margin: 0 0 20px 0;
	clear: both;
}
.manage-options-page .optionBottomSpacing {
	clear: both;
	margin: 15px 0!important;
}
.manage-options-page .optionBottomSpacing .select-outer {
	width: 23%!important;
	float: left;
}
.manage-options-page .optionBottomSpacing .select-outer select {
	width: 100%!important;
}
.manage-options-page .formBottomFields {
	margin-bottom: 15px;
	clear: both;
	width: 100%;
	float: left;
}
.manage-options-page .formBottomFields .select-outer {
	width: 23%!important;
	float: left;
}
.manage-options-page .formBottomFields .select-outer select {
	width: 100%!important;
}
.manage-options-page .formBottomFields .questionOptionText {
	float: left;
}
.manage-options-page .insideForm {
	padding: 25px;
}
.manage-options-page .optionContainer {
	margin-bottom: 15px;
	width: 100%;
	float: left;
}
.manage-options-page .optionBottomSpacing .questionOptionText {
	float: left;
	margin-left: 0!important;
}
.manage-options-page .optionContainer .editOptionHeading {
	width: 70%!important;
	margin: 0;
	float: left;
}
.manage-options-page .optionContainer .scores {
	width: 30%!important;
	margin: 0!important;
	float: left;
}
.manage-options-page .add_more_label {
	padding: 0;
}
.manage-options-page .formFeild {
	padding: 0!important;
}
.manage-options-page .formFeild .questionOptionText {
	margin-left: 0;
}

@media (max-width:479px) {
.view-feedbacks-page .feedbacks-top-btn-section {
}
.view-feedbacks-page .feedbacks-top-btn-section .optionText {
	margin-right: 0;
}
.view-feedbacks-page .filter-btn, .view-feedbacks-page .reload-btn {
	display: block;
	width: 100%;
	margin: 0 0 25px 0!important;
}
.filter-reset-btn-outer .green-btn:last-of-type {
	margin-bottom: 0;
}
.recipients-body .email-styling {
	padding: 10px;
}
.recipients-body .tab.recipient-tabs li, .recipients-body .tab.recipient-tabs li a {
	width: 100%;
}
.question-library-section .filter-block .optionText, .question-library-section .filter-block .green-btn, .question-library-section .formFeild .green-btn {
	width: 100%!important;
}
.question-library-section .filter-block .optionText {
	margin-bottom: 15px;
}
.create-new-question-form .typeQuestions td {
	display: block;
	width: 100%;
	float: left;
}
.create-new-question-form .questionOptionText {
	margin: 0 0 15px 0!important;
	width: 100% !important;
}
.create-new-question-form .optionContainer .select-outer {
	width: 80%!important;
}
.create-new-question-form .optionContainer .formBottomFields {
	border-bottom: 1px dashed #ccc;
	padding-bottom: 25px;
	margin-bottom: 25px!important;
}
.create-new-question-form .optionContainer .formBottomFields:last-of-type {
	border-bottom: none;
}
.create-survey-questions-page .mainForm .quick-links .feild {
	text-align: left!important;
}
.create-survey-questions-page .green-btn, .recipients-body .top-btn-outer .green-btn, .edit-survey-page .top-btn-outer .green-btn {
	min-width: 206px;
}
.create-survey-questions-page .top-btn-outer .green-btn:last-child, .recipients-body .top-btn-outer .green-btn:last-child, .edit-survey-page .top-btn-outer .green-btn:last-child {
	margin: 0!important;
}
.create-survey-questions-page .top-btn-outer {
	text-align: center;
}
.create-survey-page .expiration-period input[type="number"] {
	width: 100%!important;
}
.create-survey-page .select-date input[type="text"] {
	width: 100%!important;
	float: left;
}
.create-question-page .optionContainer .select-outer, .create-question-page .optionContainer .questionOptionText, .manage-options-page .formBottomFields .select-outer, .manage-options-page .formBottomFields .questionOptionText, .manage-options-page .formFeild .questionOptionText, .manage-options-page .optionBottomSpacing .select-outer {
	float: left;
	width: 100%!important;
	margin: 0 0 10px 0;
}
.create-question-page .optionContainer .formBottomFields, .manage-options-page .optionContainer .formBottomFields, .manage-options-page .optionBottomSpacing {
	margin-bottom: 25px;
	border-bottom: 1px dotted #ccc;
	padding: 0 0 15px 0;
}
.create-question-page .optionContainer .formBottomFields:last-child, .manage-options-page .optionBottomSpacing:last-child {
	border-bottom: none!important;
}
}
/*table-responsive*/

.create-survey-page .expiration-period input[type="number"] {
	width: 230px!important;
}
.create-survey-page .select-date input[type="text"] {
	width: 230px!important;
	float: left;
}

@media (max-width: 767px) {
.recipients-body .defaultTable {
	width: 768px!important;
}
.table-responsive {
	width: 100%;
	margin-bottom: 15px;
	overflow-y: hidden;
	-ms-overflow-style: -ms-autohiding-scrollbar;
	border: 1px solid #ddd;
}
.table-responsive {
	min-height: .01%;
	overflow-x: auto;
}
.table-responsive table {
	margin-bottom: 0;
}
.table-responsive table thead tr th, .table-responsive table tbody tr th, .table-responsive table tfoot tr th, .table-responsive table thead tr td, .table-responsive table tbody tr td, .table-responsive table tfoot tr td {
/*white-space: nowrap;*/
}
.table-responsive > .table-bordered {
	border: 0;
}
.create-survey-page .mainForm {
	padding: 0;
}
}
.create-survey-page .mainForm {
	max-width: 700px;
	margin: 0 auto;
	float: none;
	clear: both;
}
.create-survey-page .mainForm .formFeild label {
	width: 100%;
	text-align: left;
}
.create-survey-page .mainForm .feild {
	width: 100%;
	text-align: left;
}
.create-survey-page .tooltiptext {
	left: auto;
}
.create-survey-page input[type="number"] {
	float: left;
}
.create-survey-page .tooltip {
	margin: 8px 0 0 15px;
}
.create-survey-page .tooltip img {
	border: none!important;
	padding: 0!important;
	width: 24px;
	height: 24px;
}
.form-box-outer {
	padding: 25px;
	clear: both;
	width: 100%;
	float: left;
}
.form-box-inner {
	border: 1px solid #e1e1e1;
	border-top: none;
	/*margin: 0 0 25px 0;*/
	border-radius: 0 0 10px 10px;
	width: 100%;
	float: left;
	padding: 25px;
}
.create-survey-questions-page .mainForm .feild .quick-links {
	float: left;
	float: none;
	text-align: center;
}
.create-survey-questions-page .mainForm .quick-links .feild {
	display: inline-block;
	text-align: center;
	width: 100%;
	float: none!important;
}
.create-survey-questions-page .tooltip .tooltiptext {
	left: auto;
	right: 0;
}
.create-survey-questions-page .create-new-question {
}
.typeQuestions label {
	float: left!important;
}
.typeQuestions {
	padding: 0!important;
}
.create-new-question-form {
	width: 100%;
	float: left;
}
.create-new-question-form label {
	width: 100%;
	text-align: left;
}
.create-new-question-form input[type="radio"], .create-new-question-form .formFeild.qs input[type="radio"] {
	float: left;
	margin-top: 4px!important;
}
.create-new-question-form .optionContainer {
	width: 100%;
}
.create-new-question-form .questionOptionText {
	float: left;
}
.create-new-question-form .formBottomFields {
	margin: 0 0 10px 0;
	float: left;
	width: 100%;
}
table.typeQuestions label {
	font-weight: normal;
}
.recipients-body table, .send-survey-page table {
	padding: 0;
}

@media (max-width:767px) {
.create-survey-questions-page .top-btn-outer, .recipients-body .top-btn-outer, .edit-survey-page .top-btn-outer {
	text-align: center;
	padding: 0 15px;
}
.send-survey-page .recipients-table {
	width: 767px!important;
}
}
.clone-survey-page .formFeild label {
	width: 100%;
	text-align: left;
}
.clone-survey-page .mainForm .feild {
	width: 100%;
}
.clone-survey-page .mainForm .formFeild {
}
.view-report-page .content-box {
	box-shadow: none;/*border-bottom: 1px solid #ebebeb;*/
}
.view-feedbacks-page .select-outer {
	max-width: 300px;
	margin: 0 15px 0 0;
	width: 100%;
	display: inline-block;
	vertical-align: top;
}
.view-feedbacks-page .optionText {
	max-width: 300px!important;
	width: 100%!important;
	position: relative;
}
.feedback-detail-page .content-box:last-of-type {
	border-bottom-right-radius: 18px;
	border-bottom-left-radius: 18px;
}
.feedback-detail-page .survey-details-section {
}
.feedback-detail-page .survey-details-section .sectionTitle, .preview-survey-page .questionBoxSeparator .sectionTitle {
	background: #9E9E9E!important;
}
.feedback-detail-page .survey-details-section p {
	padding: 25px 25px 15px 25px;
	clear: both;
	border-left: 1px solid #e1e1e1;
	border-right: 1px solid #e1e1e1;
}
.feedback-detail-page .survey-details-section .tooltip {
	background: #ffffff;
	border-radius: 50%;
	display: inline-block;
	float: left;
	padding: 5px;
	position: relative;
	margin-right: 15px;
}
hr {
	border: 0;
	height: 1px!important;
	background-image: -webkit-linear-gradient(left, transparent, rgba(0, 0, 0, 0.2), transparent);
	background-image: -moz-linear-gradient(left, transparent, rgba(0, 0, 0, 0.2), transparent);
	background-image: -ms-linear-gradient(left, transparent, rgba(0, 0, 0, 0.2), transparent);
	background-image: -o-linear-gradient(left, transparent, rgba(0, 0, 0, 0.2), transparent);
	background-image: linear-gradient(left, transparent, rgba(0, 0, 0, 0.2), transparent);
 filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#d6d6d6', endColorstr='#d6d6d6', GradientType=0 ); /* IE6-9 */
}
.preview-survey-page .section-heading p {
	clear: both;
	padding: 25px;
	border-left: 1px solid #e1e1e1;
	border-right: 1px solid #e1e1e1;
}
.preview-survey-page textarea {
	padding: 10px;
	border: 1px solid #cccccc;
}
.email-template-page {
}
.terms-service-page .mainForm p, .privacy-policy-page p {
	margin: 0 0 20px 0;
}
.unordered-list {
	margin: 0 0 15px 15px;
	padding: 0;
	list-style-type: disc!important;
}
.unordered-list li {
	margin: 0 0 10px 0;
	padding: 0;
	list-style-type: disc!important;
}
.ordered-list {
	margin: 0 0 15px 17px;
	padding: 0;
}
.ordered-list li {
	margin: 0 0 10px 0;
	padding: 0;
	list-style-type: decimal;
}
.privacy-policy-page {
}
.view-report-page .tooltip {
	top: 5px;
	right: 5px;
}
.view-report-page .content-box:last-of-type {
	border-bottom-left-radius: 20px;
	border-bottom-right-radius: 20px;
}
.update-template-page label, .email-template-page label {
	width: 100%;
	text-align: left;
}
.update-template-page .mainForm, .email-template-page .mainForm {
	padding: 25px 0 0 0;
}
.update-template-page .mainForm .feild, .email-template-page .mainForm .feild {
	width: 100%;
}
.cke_top {
	background: #fff!important;
}

/*ie 11 browser  hack*/
@media all and (-ms-high-contrast: none) {
.select-outer {
	background: none!important;
	padding-right: 0!important;
}
.select-outer select {
	padding-right: 0!important;
}
 *::-ms-backdrop, .select-outer {
 background: none!important;
 padding-right:0!important;
}
 *::-ms-backdrop, .select-outer select {
padding-right:0!important;
}
}

/*I/* Microsoft Edge Browser 12+ (All) - @supports method */
/* IE 10 browser hack*/
@supports (-ms-accelerator: true) {
 .select-outer {
 background: none!important;
}
}
/* IE 10 browser hack*/
html[data-useragent*='MSIE 10.0'] .select-outer {
	background: none!important;
}
 input[type=number]::-webkit-inner-spin-button {
 -webkit-appearance: none;
}

@media (min-width:1024px) and (max-width:1074px) {
.nav ul li {
	margin-left: 0!important;
}
}

@media (max-width:360px) {
.create-survey-page .expiration-period input[type="number"], .create-survey-page .select-date input[type="text"] {
	width: 100%!important;
}
}
.create-new-question-block {
}

@media (max-width:767px) {
.question-library-section .requiredInput .green-btn {
	min-width: auto!important;
}
.create-survey-questions-page .create-new-question-block .form-box-inner {
	padding: 15px 0;
}
}
.question-library-section .formFeild {
	padding: 0;
}
.question-library-section .formFeild .feild {
	padding: 0;
	width: 100%;
}
.question-library-section .formFeild .feild .green-btn {
	margin: 0!important;
}
.edit-survey-page .form-box-inner label {
	width: 100%;
	text-align: left;
}
.edit-survey-page .form-box-inner .feild {
	width: 100%;
}
.recipients-body .tabcontent {
	padding: 15px;
}
.view-report-page .questionBoxSeparator .sectionTitle {
	padding: 0 0 10px 0;
}
.fa {
	font-family: FontAwesome!important;
}
.report-sent-date {
	float: right;
	font-size: 15px;
	font-weight: normal;
}
.view-report-page .questionBox {
	border: 1px solid #cccccc;
	border-radius: 10px;
	padding: 0;
}
.feedback-detail-page .questionBox {
	font-weight: bold;
}
.survey-details-section {
}
.view-feedbacks-page .filter-btn, .view-feedbacks-page .reload-btn {
	vertical-align: top;
	margin-top: 0!important;
	margin-bottom: 0!important;
}

@media (max-width:767px) {
.update-template-page .mainForm, .email-template-page .mainForm {
	float: left!important;
	padding-top: 15px!important;
}
.list-email-template .addnew-btn-outer {
	margin-top: 15px;
}
.list-email-template .filter-reload-btn-outer {
	display: inline-block;
}
.list-email-template .optionText {
	width: 100%!important;
}
.feedback-detail-page .content-box {
	padding: 15px;
}
.feedback-detail-page .questionsPreview label {
	font-size: 14px;
}
.feedback-detail-page .questionBox {
	font-size: 15px;
}
.feedback-detail-page table td {
	width: 100%;
	float: left;
	display: block;
	padding: 5px 0;
}
.view-feedbacks-page .defaultTable {
	width: 767px!important;
}
.questionBox .vf-surface {
	width: 100%!important;
	height: 100%!important;
}
}
.feedbacks-top-btn-section {
	margin: 0 0 25px 0;
}

@media (max-width:479px) {
.view-feedbacks-page .select-outer, .view-feedbacks-page .optionText {
	max-width: 100%!important;
	margin-right: 0!important;
}
.view-feedbacks-page .filter-btn, .view-feedbacks-page .reload-btn {
	margin-bottom: 15px!important;
}
.list-email-template .filter-reload-btn-outer {
	width: 100%;
}
.list-email-template .filter-reload-btn-outer input.filter-btn {
	width: 100%!important;
}
.list-email-template .filter-reload-btn-outer input.reload-btn {
	width: 100%!important;
	margin: 0!important;
}
.list-email-template .addnew-btn-outer {
	width: 100%;
}
.list-email-template .addnew-btn-outer .addnew-btn {
	width: 100%;
}
.mainForm .feild span a {
	width: 83%;
}
}
.addnew-btn-outer {
	float: right;
}
.list-email-template .globalPagination {
	margin-right: 0;
}
.page-content {
	min-height: 500px;
}
.view-report-page .questionBoxSeparator {
	padding-top: 0;
}

@media (min-width:480px) and (max-width:767px) {
.view-feedbacks-page .feedbacks-top-btn-section .select-outer {
	max-width: 47%;
	width: 50%;
	float: left;
	margin: 0 3% 0 0;
}
.view-feedbacks-page .feedbacks-top-btn-section .select-outer select {
	width: 100%!important;
	max-width: 100%!important;
}
.view-feedbacks-page .optionText {
	width: 50%;
	max-width: 50%!important;
	max-width: 50%;
	float: left;
	margin: 0 0 0 0;
}
.view-feedbacks-page .filter-btn {
	margin-left: 0!important;
}
.view-feedbacks-page .filter-reset-btn-outer {
	width: 100%;
	float: left;
}
.feedbacks-top-btn-section {
	float: left;
	width: 100%;
}
}
.filter-reload-btn-outer {
}
.filter-reload-btn-outer .filter-btn, .filter-reload-btn-outer .reload-btn {
	margin: 0 5px!important;
	vertical-align: top!important;
}
.survey-list-page .addnew-btn-outer .addnew-btn, .manage-questions-page .addnew-btn-outer .addnew-btn, .survey-list-page .addnew-btn-outer .addnew-btn, .list-email-template .addnew-btn-outer .addnew-btn {
	margin: 0!important;
}
.survey-list-page .top-btn-section, .manage-questions-page .top-btn-section, .survey-list-page .top-btn-section, .list-email-template .top-btn-section {
	width: 100%;
	float: left;
	margin: 0 0 25px 0;
}
.survey-list-page .top-btn-section .optionText, .manage-questions-page .top-btn-section .optionText, .survey-list-page .top-btn-section .optionText, .list-email-template .top-btn-section .optionText {
	top: 0;
}
.survey-list-page .top-btn-section input.question-field, .manage-questions-page .top-btn-section input.question-field, .survey-list-page .top-btn-section input.question-field, .list-email-template .top-btn-section input.question-field {
	min-width: 350px;
}

@media (max-width:900px) {
.survey-list-page .addnew-btn-outer, .manage-questions-page .addnew-btn-outer, .survey-list-page .addnew-btn-outer, .list-email-template .addnew-btn-outer {
	margin-top: 15px!important;
	width: 100%!important;
	float: left!important;
	text-align: center;
	padding: 0;
}
}

@media (max-width:767px) {
.view-report-page .questionBoxSeparator, .view-report-page .questionTopSpacing2 {
	padding-left: 15px;
	padding-right: 15px;
}
.clone-survey-page .mainForm {
	padding: 15px 0 0 0;
}
.edit-question .mainForm, .create-survey-page .form-box-inner {
	padding-top: 15px;
}
.edit-question .typeQuestions label {
	padding-top: 0!important;
}
.survey-list-page .top-btn-section input.question-field, .manage-questions-page .top-btn-section input.question-field, .survey-list-page .top-btn-section input.question-field, .list-email-template .top-btn-section input.question-field {
	width: 100%;
	min-width: 100%!important;
	margin: 0 0 15px 0!important;
}
.filter-reload-btn-outer {
	text-align: center;
	width: 100%;
	display: block;
}
}

@media (max-width:479px) {
.manage-questions-page .requiredInput {
	margin-bottom: 0;
}
.filter-reload-btn-outer .filter-btn, .filter-reload-btn-outer .reload-btn {
	width: 100%;
	margin: 0 15px 0 0!important;
}
.filter-reload-btn-outer .filter-btn {
	margin: 0 0 15px 0!important;
}
.top-btn-section .addnew-btn-outer .addnew-btn {
	width: 100%;
}
}
.terms-service-page .form-box-outer {
	margin: 0;
}

@media (min-width:768px) and (max-width:1023px) {
.topnav ul li a:hover {
	color: #fff!important;
}
.view-feedbacks-page .filter-reset-btn-outer {
	margin-top: 0!important;
}
.view-feedbacks-page .filter-reset-btn-outer .filter-btn {
	margin-left: 0!important;
}
}
.question-allocation-page .spnQuestionMessage {
	padding: 0 0 15px 0!important;
}
.quick-links {
	margin-bottom: 0!important;
}
.confirmM6, .confirmM4, .confirmM3, .confirmM2, .confirmS1 {
	border-color: #d6e9c6!important;
	color: #3c763d!important;
}
.confirmM6 .message .messageText, .confirmM4 .message .messageText, .confirmM3 .message .messageText, .confirmM2 .message .messageText, .confirmS1 .message .messageText {
	color: #3c763d!important;
}
.whitebox-height {
	min-height: 400px;
}

@media (max-width:767px) {
.quick-links {
	margin-bottom: 15px!important;
}
#confirmBox {
	left: 5%!important;
	margin: 0 auto!important;
	top: 25%!important;
	width: 90%!important;
}
.whitebox-height {
	min-height: 50px;
}
}
.messageTable td:first-of-type {
	width: 25px;
}
.update-template-page .cke_button_icon, .email-template-page .cke_button_icon {
	margin: 0!important;
}
.update-template-page .mainForm .feild .cke_reset span a, .email-template-page .mainForm .feild .cke_reset span a {
	background: none!important;
	border: none;
	border-radius: 2px !important;
	font-weight: bold;
	height: auto;
	line-height: normal;
	margin: 5px !important;
	min-width: auto;
	padding: 3px !important;
	text-align: center;
	text-decoration: none !important;
}
.cke_top {
	background: #cfd1cf linear-gradient(to bottom, #f5f5f5, #cfd1cf) !important;
}
.optionBottomSpacing .option-label {
	display: none;
}

@media (max-width:479px) {
.update-template-page .mainForm .feild .cke_reset span a,  .email-template-page .mainForm .feild .cke_reset span a {
	width: auto!important;
}
.edit-option-heading-row {
	display: none;
}
.optionBottomSpacing .option-label {
	margin: 0 0 5px 0;
	display: block;
}
}
.survey-form-page .questionBox {
	font-weight: bold;
}
/*alert message*/

.alert {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
}
.alert-success {
	color: #3c763d;
	background-color: #dff0d8;
	border-color: #d6e9c6;
}
.alert-info {
	color: #31708f;
	background-color: #d9edf7;
	border-color: #bce8f1;
}
.alert-warning {
	color: #8a6d3b;
	background-color: #fcf8e3;
	border-color: #faebcc;
}
.alert-danger {
	color: #a94442;
	background-color: #f2dede;
	border-color: #ebccd1;
}

.create-new-question-form .feild { width:100%!important;}