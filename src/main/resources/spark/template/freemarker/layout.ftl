<!DOCTYPE html>
<html>
<title>InventWeb</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="w3.css">
<link rel="stylesheet" href="w3-black-theme.css">
<link rel="stylesheet" href="font-awesome.min.css">
<body id="myPage">


<!-- Navbar -->
<div class="w3-top">
 <div class="w3-bar w3-theme-d2 w3-left-align">
  <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-opennav w3-right w3-hover-white w3-theme-d2" href="javascript:void(0);" onclick="openNav()"><i class="fa fa-bars"></i></a>
  <a href="/" class="w3-bar-item w3-button w3-teal"><i class="fa fa-home w3-margin-right"></i>${title}</a>
  <a href="/add" class="w3-bar-item w3-button w3-hide-small w3-hover-white">Add items</a>
  <a href="#work" class="w3-bar-item w3-button w3-hide-small w3-hover-white">Delete items</a>
  
  <a href="/list" class="w3-bar-item w3-button w3-hide-small w3-hover-white">List Items</a>
 <a href="#about" class="w3-bar-item w3-button w3-hide-small w3-hover-white">About Us</a>
  </div>
  <a href="#" class="w3-bar-item w3-button w3-hide-small w3-right w3-hover-teal" title="Search"><i class="fa fa-search"></i></a>
 </div>

<div class="containter">

  <#include  $template >

</div>

</body>
</html>
