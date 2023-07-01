<!DOCTYPE html>
<html>
<head>
  <title>Reverse String</title>
  <script>
    function reverseString() {
      var input = prompt("Enter a string:");
      var reversedString = "";
  
      for (var i = input.length - 1; i >= 0; i--) {
        reversedString += input.charAt(i);
      }
  
      var message = "Length: " + input.length + "\nReversed string: " + reversedString;
      alert(message);
    }
  </script>
</head>
<body>
<label></label>
  <button onclick="reverseString()">go</button>
</body>
</html>