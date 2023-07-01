<html><head><style>
  body{
  font-family:Arial,Helvetica,sans-serif;
  }
  .navbar{
  overflow:hidden;
  background-color:#333;
  }
  .navbar a{
  float:left;
  font-size:16px;
  color:white;
  text-align:center;
  padding:14px 16px;
  text-decoration:none;
  }
  .dropdown{
  float:left;
  overflow:hidden;
  }
  .dropdown .dropbtn{
  font-size:16px;
  border:none;
  outline:none;
  color:white;
  padding:14px 16px;
  background-color:inherit;
  font-family:inherit;
  margin:0;
  }
  .navbar a:hover, .dropdown:hover .dropbtn{
  background-color:red;
  }
  .dropdown-content{
  display:none;
  position:absolute;
  background-color:#f9f9f9;
  min-width:160px;
  box-shadow:0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index:1;
  }
  .dropdown-content a{
  float:none;
  color:black;
  padding:12px 16px;
  text-decoration:none;
  display:block;
  text-align:left;
  }
  .dropdown-content a:hover{
  background-color:#ddd;
  }
  .dropdown:hover .dropdown-content{
  display:block;
  }
  .Login{
  color:black;
  display:block;
  float:right;
  }
   <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible"
          content="IE=edge">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">
    <title>
       Build a Survey Form using HTML and CSS
    </title>
  /* Styling the Body element i.e. Color, Font, Alignment */
        body {
            background-color: #05c46b;
            font-family: Verdana;
            text-align: center;
        }
         /* Styling the Form (Color, Padding, Shadow) */
        form {
            background-color: #fff;
            max-width: 500px;
            margin: 50px auto;
            padding: 30px 20px;
            box-shadow: 2px 5px 10px rgba(0, 0, 0, 0.5);
        }
         /* Styling form-control Class */
        .form-control {
            text-align: left;
            margin-bottom: 25px;
        }

        /* Styling form-control Label */
        .form-control label {
            display: block;
            margin-bottom: 10px;
        }
        /* Styling form-control input,
        select, textarea */
        .form-control input,
        .form-control select,
        .form-control textarea {
            border: 1px solid #777;
            border-radius: 2px;
            font-family: inherit;
            padding: 10px;
            display: block;
           width: 95%;
        }
        /* Styling form-control Radio
        button and Checkbox */
        .form-control input[type="radio"],
        .form-control input[type="checkbox"] {
            display: inline-block;
           width: auto;
        }
       /* Styling Button */
        button {
            background-color: #05c46b;
            border: 1px solid #777;
            border-radius: 2px;
            font-family: inherit;
            font-size: 21px;
            display: block;
            width: 100%;
            margin-top: 50px;
            margin-bottom: 20px;
        }

</style></head>
<body>
<div class="navbar">
<a href="home.jsp">Home</a>
<div class="dropdown">
<button class="dropbtn">Frames</button>
<div class="dropdown-content">
         <a href="Horizontal.jsp">Horizontal</a>
        <a href="Vertical.jsp">Vertical</a>
         <a href="Mixed.jsp">Mixed</a>
		 <a href="Customized.jsp">Customized</a>
		 </div></div>
<div class="dropdown">
<button class="dropbtn">Table</button>
<div class="dropdown-content">
         <a href="t1.jsp">simple Table</a>
         <a href="t2.jsp">complex Table</a>
         <a href="t3.jsp">customized Table</a>
		 </div></div>
<div class="dropdown">
<button class="dropbtn">List</button>
<div class="dropdown-content">
         <a href="Ordered List.jsp">Ordered List</a>
         <a href="Unordered List.jsp">Unordered List</a>
         <a href="Description List.jsp">Description List</a>
		 </div></div>
		 <div class="dropdown">
<button class="dropbtn">CSS</button>
<div class="dropdown-content">
         <a href="CSS1.jsp">CSS-1</a>
         <a href="CSS2.jsp">CSS-2</a>
         <a href="CSS3.jsp">CSS-3</a>
	<a href="program695.jsp">Feedback</a>
		 </div></div>
		 	 <div class="dropdown">
<button class="dropbtn">JavaScript</button>
<div class="dropdown-content">
         <a href="javascript1.jsp">js-1</a>
         <a href="javascript2.jsp">js-2</a>
         <a href="javascript3.jsp">js-3</a>
		 </div></div>
<div class="Login">
<a href="Login.jsp">Login</a>
</div>		
</div>
<h2>HTML I frames example</h2>
<p>use the highest and width attributes to specify the size of the iframe:</p>
<iframe src="https://www.mtitech.edu.in"height="60%"width="90%"style="border:none;"></iframe>
</body>
</html>