<!DOCTYPE html>
<html>
<head>
  <style>
    table {
      border-collapse: collapse;
      width: 100%;
      background-color: #00ff00;
    }
    
    th, td {
      padding: 8px;
      text-align: left;
      border-bottom: 1px solid #ddd;
    }
    
    tr:hover {
      background-color: #f5f5f5;
    }
    
    .container {
      max-width: 400px;
      margin: 20px auto;
      background-color: #7fffd4;
    }
    
    .input-group {
      margin-bottom: 10px;
    }
    
    .input-group label {
      display: block;
      margin-bottom: 5px;
    }
    
    .input-group input {
      width: 100%;
      padding: 8px;
      box-sizing: border-box;
      border-radius: 4px;
      border: 1px solid #ccc;
    }
    
    .btn-group {
      margin-top: 20px;
    }
    
    .btn-group button {
      padding: 10px 20px;
      border-radius: 4px;
      border: none;
      background-color: #4CAF50;
      color: white;
      cursor: pointer;
      margin-right: 10px;
    }
    
    .btn-group button:last-child {
      background-color: #f44336;
    }
    
    /* Navigation Bar Styles */
    .navbar {
      background-color: #333;
      overflow: hidden;
    }
    
    .navbar a {
      float: left;
      color: white;
      text-align: center;
      padding: 14px 16px;
      text-decoration: none;
    }
    
    .dropdown {
      float: left;
      overflow: hidden;
    }
    
    .dropdown .dropbtn {
      font-size: 16px;
      border: none;
      outline: none;
      color: white;
      padding: 14px 16px;
      background-color: inherit;
      font-family: inherit;
      margin: 0;
    }
    
    .navbar a:hover, .dropdown:hover .dropbtn {
      background-color: #ddd;
      color: black;
    }
    
    .dropdown-content {
      display: none;
      position: absolute;
      background-color: #f9f9f9;
      min-width: 160px;
      box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
      z-index: 1;
    }
    
    .dropdown-content a {
      float: none;
      color: black;
      padding: 12px 16px;
      text-decoration: none;
      display: block;
      text-align: left;
    }
    
    .dropdown-content a:hover {
      background-color: #ddd;
    }
    
    .dropdown:hover .dropdown-content {
      display: block;
    }
  </style>
</head>
<body>
  <div class="navbar">
    <a href="#home">Home</a>
    <div class="dropdown">
      <button class="dropbtn">User
        <i class="fa fa-caret-down"></i>
      </button>
      <div class="dropdown-content">
        <a href="#">Admin</a>
        <a href="#">Student</a>
      </div>
    </div>
  </div>

  <div class="container">
    <h2>Student Records</h2>
    <div class="input-group">
      <label for="name">Name:</label>
      <input type="text" id="name" placeholder="Enter name">
    </div>
    <div class="input-group">
      <label for="id">ID:</label>
      <input type="text" id="id" placeholder="Enter ID">
    </div>
    <div class="input-group">
      <label for="aadhar">Aadhar:</label>
      <input type="text" id="aadhar" placeholder="Enter Aadhar number">
    </div>
    <div class="input-group">
      <label for="course">Course:</label>
      <input type="text" id="course" placeholder="Enter course">
    </div>
    <div class="btn-group">
      <button onclick="submitRecord()">Submit</button>
      <button onclick="exit()">Exit</button>
    </div>
    <table id="recordTable">
      <tr>
        <th>Name</th>
        <th>ID</th>
        <th>Aadhar</th>
        <th>Course</th>
      </tr>
    </table>
  </div>

  <script>
    function submitRecord() {
      var name = document.getElementById("name").value;
      var id = document.getElementById("id").value;
      var aadhar = document.getElementById("aadhar").value;
      var course = document.getElementById("course").value;

      var table = document.getElementById("recordTable");
      var row = table.insertRow(-1);
      var nameCell = row.insertCell(0);
      var idCell = row.insertCell(1);
      var aadharCell = row.insertCell(2);
      var courseCell = row.insertCell(3);

      nameCell.innerHTML = name;
      idCell.innerHTML = id;
      aadharCell.innerHTML = aadhar;
      courseCell.innerHTML = course;
    }

    function exit() {
      document.getElementById("name").value = "";
      document.getElementById("id").value = "";
      document.getElementById("aadhar").value = "";
      document.getElementById("course").value = "";
    }
  </script>
</body>
</html>
