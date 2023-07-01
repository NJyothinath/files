<!DOCTYPE html>
<html><head><link rel="stylesheet" href="cssnav.css">
<style>
#main {
  width: 350px;
  height: 100px;
  border: 1px solid #c3c3c3;
  display: flex;
}
#main div:nth-of-type(1) {flex-grow: 1;}
#main div:nth-of-type(2) {flex-grow: 1;}
#main div:nth-of-type(3) {flex-grow: 1;}
#myBlueDiv {
  animation: mymove 5s infinite;
}
@keyframes mymove {
  50% {flex-grow: 8;}
}
</style>
</head>
<bodybgcolor=#ffcocb>
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
<h1>Animation of flex-grow</h1>
<p>Gradually change the flex-grow property of the "blue DIV" from 1 to 8, and back to 1:<p>
<div id="main">
  <div style="background-color:coral;"></div>
  <div style="background-color:lightblue;" id="myBlueDiv"></div>
  <div style="background-color:khaki;"></div>
</div>
</body>
</html>
