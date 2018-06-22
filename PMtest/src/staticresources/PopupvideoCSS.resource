body {
font-family: Arial;
font-size:14px;
}

.simplePopup {
display:none;
position:fixed;
background:#fff;
z-index:3;
padding:12px;
width:40%;
min-width:40%;
border-radius: 10px;
box-shadow: 0 0 10px 0 #000;

}

.simplePopup p iframe {
    height:350px; 
    border: 0;
}

.simplePopupClose {
float:right;
cursor:pointer;
position: absolute;
right: -10px;
top: -10px;
box-shadow: 0 0 3px 0 #000;
border-radius: 50px;
height: 30px;
width: 30px;


}

.simplePopupBackground {
display:none;
background:#000;
position:fixed;
height:100%;
width:100%;
top:0;
left:0;
z-index:2;
}


@media only screen and (max-width: 767px) {
    
    .simplePopup {
display:none;
position:fixed;
background:#fff;
z-index:3;
padding:12px;
width:75%;
min-width:75%;
}
    
.simplePopup p iframe {
    height:350px; 
    border: 0;
}

}

@media only screen and (max-width: 768px) {
    
    .simplePopup {
display:none;
position:fixed;
background:#fff;
z-index:3;
padding:12px;
width:75%;
min-width:75%;
}




