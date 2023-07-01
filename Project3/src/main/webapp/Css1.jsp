<!DOCTYPE html>
<html>
<head><link rel="stylesheet" href="cssnav.jsp">
<style>
#div1 {
  position: relative;
  margin: auto;
  height: 150px;
  width: 250px;
  padding: 10px;
  border: 1px solid black;
  perspective: 125px;
  animation: mymove 5s infinite;
}

@keyframes mymove {
  50% {perspective-origin: 10px 50%;}
}

#div2 {
  padding: 50px;
  position: absolute;
  border: 1px solid black;
  background-color: coral;
  transform: rotateX(45deg);
}
</style>
</head>
<body bgcolor=#ffff00>
<div class="navbar">
<a href="#">Home</a>
<div class="dropdown">
<button class="dropbtn">Frames</button>
<div class="dropdown-content">
         <a href="Horizontal.jsp">Horizontal</a>
         <a href="Vertical.jsp">Vertical</a>
         <a href="Mixed.jspl">Mixed</a>
<a href="Customized.jsp">Customized</a>
</div></div>
<div class="dropdown">
<button class="dropbtn">Table</button>
<div class="dropdown-content">
         <a href="T1.jsp">T1</a>
         <a href="T2.jsp">T2</a>
         <a href="T3.jsp">T3</a>

</div></div>
<div class="dropdown">
<button class="dropbtn">List</button>
<div class="dropdown-content">
         <a href="Ordered.jsp">Ordered List</a>
         <a href="Unordered.jsp">Unordered List</a>
         <a href="Description.jsp">Description List</a>
</div></div>

<div class="dropdown">
<button class="dropbtn">CSS</button>
<div class="dropdown-content">
         <a href="Css1.jsp">Css1</a>
         <a href="Css2.jsp">Css2</a>
         <a href="Css3.jsp">Css3</a>
</div></div>
<div class="dropdown">
<button class="dropbtn">JavaScript</button>
<div class="dropdown-content">
         <a href="JS1.jsp">JS1</a>
         <a href="JS2.jsp">JS2</a>
         <a href="JS3.jsp">JS3</a>
</div></div>
<div class="Login">
<a href="Login.jsp">Login</a>
</div>
</div>
<h1>Animation of perspective-origin</h1>
<div id="div1">DIV1
  <div id="div2">DIV2</div>
</div>

</body>
</html>