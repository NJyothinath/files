<!DOCTYPE html>
<html><head>
<link rel="stylesheet" href="cssnav.css">
<body bgcolor=#5c5858>
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
<h2>JavaScript Timing</h2>
<p>Click "Try it". Wait 3 seconds. The page will alert "Hello".</p>
<p>Click "Stop" to prevent the first function to execute.</p>
<p>(You must click "Stop" before the 3 seconds are up.)</p>
<button onclick="myVar = setTimeout(myFunction, 3000)">Try it</button>
<button onclick="clearTimeout(myVar)">Stop it</button>
<script>
function myFunction() {
  alert("Hello");
}
</script>
</body>
</html>


