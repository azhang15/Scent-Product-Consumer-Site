<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>FragranceFinder</title>
    <style>
        body {
            font-family: "Times New Roman", Georgia, Serif;
        }
        
        h1,
        h2,
        h3,
        h4,
        h5,
        h6 {
            font-family: "Playfair Display";
        }
        /* .mySlides {
            display: none;
        } */
    </style>
    <link rel="stylesheet" href="/css/main.css">
    <link rel="stylesheet" href="/css/loginsignup.css">
</head>

<body>

    <!-- the very top part -->
    <div class="top" style="letter-spacing: 2px;">
        <ul>
            <li style="float:left!important" class="barlist"><a href="#">Fragrance Finder</a></li>
            <li style="padding-right: 30px;" class="barlist"><a href="#login">My Account</a></li>
            <li style="padding-right: 30px;" class="barlist"><a href="products.html">Find Products</a></li>
            <li class="barlist"><a href="#filter">Home</a></li>
        </ul>
    </div>

    <!-- the good afternoon what do you want to smell part -->
    <div class="header">
        <h1 id="greetings"></h1>
        <img src="/img/headerimg.jpg" alt="headerimage" width=100%>
        <!-- the header pic  -->
        <!-- <div class="headerimg">
            <img class="mySlides" src="/img/headerimg.png" style="width:100%">
            <img class="mySlides" src="/img/headerimg2.jpg" style="width:100%">
        </div> -->

    </div>
    <div id="filter" class="filter">
        <h1>Find your perfect fragrance.</h1>
        <div class="filterbar">
            <!-- TODO: Add the controller name inside the action -->
            <form action="">
                <div style="margin-top:10px;">
                    <label>Who are you shopping for?</label>
                    <br>
                    <select name="gender">
                    <option value="showall">Show all</option>
                    <option value="men">Men's</option>
                    <option value="women">Women's</option>
                    <option value="neutral">Gender Neutral</option>
                  </select>
                </div>
                <!-- the preferred item  -->
                <div style="margin-top:30px;">
                    <label>What are you shopping for?</label>
                    <br>
                    <select name="category">
                    <option value="showall">Show all</option>
                    <option value="wear">Fragrances to wear</option>
                    <option value="body">Bath and Body</option>
                    <option value="home">Home Fragrances</option>
                  </select>
                </div>
                <div style="margin-top:30px;">
                    <label>What's your occasion?</label>
                    <br>
                    <select name="occasion">
                    <option value="showall">Show all</option>
                    <option value="date">Date Night</option>
                    <option value="office">Office</option>
                    <option value="outdoors">Outdoors Adventures</option>
                  </select>
                    <div style="margin-top:30px;">
                        <label>What's your personality?</label>
                        <br>
                        <select name="personality">
                    <option value="showall">Show all</option>
                    <option value="seductive">Seductive</option>
                    <option value="bright">Bright and Bubbly</option>
                    <option value="sweet">Sweet</option>
                  </select>
                    </div>
                    <br>
                    <input type="submit" value="Apply">
                    <div class="loginimg">
                        <img src="/img/loginimage.png" alt="img" class="loginimg">
                    </div>
            </form>
            </div>

        </div>

        <!-- the part where user can login  -->
        <div id="login" class="login">

            <h1>Want to discover more scents?</h1>
            <h3 style="margin-left: 10px;font-weight: lighter;">Log in to your account or create one to save your selections</h3>
            <br>
            <button class="loginbutton" onclick="document.getElementById('loginsheet').style.display='block'" style="width:auto;">Login</button>
            <button class="signupbutton" onclick="document.getElementById('signupsheet').style.display='block'" style="width:auto;">Sign Up</button>
            <br>
            <br>
            <br>
            <div id="loginsheet" class="modal1">
                <form class="modal1_content" action="/data/login.php">
                    <div class="imgcontainer">
                        <span onclick="document.getElementById('loginsheet').style.display='none'" class="closeit" title="Close Modal1">&times;</span>
                        <img src="/img/avatar.jpg" alt="Avatar" class="avatar">
                    </div>
                    <!-- log in questions  -->
                    <div class="container">
                        <label for="uname"><b>Username</b></label>
                        <input class="uname" type="text" placeholder="Enter Username" name="uname" required>

                        <label for="psw"><b>Password</b></label>
                        <input class="pswinput" type="password" placeholder="Enter Password" name="psw" required>

                        <button type="submit" class="loginbtn">Login</button>
                        <label>
                    <input type="checkbox" checked="checked" name="remember"> Remember me
                    </label>
                    </div>
                    <!-- forget password part  -->
                    <div class="container" style="background-color:#f1f1f1">
                        <span class="forgetpsw"> <a href="">Forgot password?</a></span>
                        <br>

                        <!-- password page will add  -->
                    </div>
                </form>
            </div>

            <div id="signupsheet" class="modal1">
                <form class="modal2_content" action="/data/signup.php">
                    <div class="imgcontainer">
                        <span onclick="document.getElementById('signupsheet').style.display='none'" class="closeit" title="Close Modal1">&times;</span>
                    </div>
                    <div class="container">
                        <h1>Sign Up</h1>
                        <p>Please fill in this form to create an account.</p>
                        <hr>
                        <label for="uname"><b>Username</b></label>
                        <input class="uname" type="text" placeholder="Create Your Own Username" name="uname" required>

                        <label for="psw"><b>Password</b></label>
                        <input class="pswinput" type="password" placeholder="Enter Password" name="psw" required>

                        <label for="psw-repeat"><b>Repeat Password</b></label>
                        <input class="pswinput" type="password" placeholder="Repeat Password" name="psw-repeat" required>

                        <label>
                    <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
                    </label>

                        <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>

                        <div class="clearfix">

                            <button type="submit" class="signupbtn">Sign Up</button>
                            <button type="button" onclick="document.getElementById('signupsheet').style.display='none'" class="cancelbtn">Cancel</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>





        <!-- myscript -->
        <script src=" /js/main.js "></script>
        <script src="/js/login.js "></script>

</body>

</html>
</page>