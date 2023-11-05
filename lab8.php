<?php
$base = mysqli_connect('localhost', 'root', '', 'insert');
if(isset($_POST['submit'])){ 
    $name = $_POST['name'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $sql = "INSERT INTO insertform(name, email, password) VALUES ('$name', '$email', '$password')"; 
    if(mysqli_query($base, $sql)){ 
        echo "Inserted successfully";
    }
    else{
        echo "Insertion failed: " . mysqli_error($base); // Added error message for debugging
    }
}

mysqli_close($base); // Close the connection after use
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>indert form</title>
    <style>
        body{
            background-color: antiquewhite;
            font-family: Arial, Helvetica, sans-serif;
        }
        h1{
            text-align: center;
        }
       
        label {
            font-weight: bold; 
            margin-bottom: 5px; 
            
        }

        input {
            width: 100%; 
            padding: 8px; 
            margin-bottom: 10px; 
            border-radius: 8px; 
            border-color: green;
        }
        input[type="submit"] {
            background-color: blueviolet; 
            color: white; 
            cursor: pointer; 
            padding: 5px 5px; 
            margin: 0 auto; 
            display: block; 
            
        }
    </style>
</head>
<body>
    <h1>Personal Details</h1>
  
    <form action="" method="POST">
        
        <label for="name">First Name : </label>
        <input type="text" id="name" name="name" placeholder="Enter your name"><br>
        <label for="email">Email : </label>
        <input type="email" id="email" name="email" placeholder="Enter valid email "><br>
        <label for="passward">Passward : </label>
        <input type="password" id="password" name="password" placeholder="Enter 6 digit password"><br>
        <input type="submit" name="submit" value="submit">
    </form>
</body>
</html>
