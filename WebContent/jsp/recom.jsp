<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <div class="recom">
        <h1>We find these that might interest you.</h1>

        <!-- foodcard#1 -->
        <div class="food-card">
            <div class="card-contents">
                <div class="front">
                    <img src="/img/chicken.jpg" alt="foodimg" style="width:250px;height:300px;">
                </div>
                <div class="back">
                    <h2>Classic Roasted Chicken</h2>
                    <p>Come'n meat eaters! How can you say no to chicken!! Start right now! Let's make this wonderful dish together!</p>
                    <p>Prep time: <span class="pretime">35</span> mins</p>
                    <button onclick="location.href='/../html/detail.html'" class="startbtn">Let's start</button>

                </div>
            </div>
        </div>
        <!-- foodcard#2 -->
        <div class="food-card">
            <div class="card-contents">
                <div class="front">
                    <img src="/img/soup.jpg" alt="foodimg" style="width:250px;height:300px;">
                </div>
                <div class="back">
                    <h2>Creamy broccolli soup</h2>
                    <p>Nothing can be better than having a soup after a long day study, come let's make one together</p>
                    <p>Prep time: <span class="pretime">15</span> mins</p>
                    <button onclick="location.href='/../html/detail.html'" class="startbtn">Let's start</button>
                </div>
            </div>
        </div>

        <!-- foodcard#3 -->
        <div class="food-card">
            <div class="card-contents">
                <div class="front">
                    <img src="/img/noodle.jpg" alt="foodimg" style="width:250px;height:300px;">
                </div>
                <div class="back">
                    <h2>Tomato and meatball Spaghetti</h2>
                    <p>Yay! Time to get enough protein! Make your meatball Spaghetti no regretti!</p>
                    <p>Prep time: <span class="pretime">15</span> mins</p>
                    <button onclick="location.href='/../html/detail.html'" class="startbtn">Let's start</button>

                </div>
            </div>
        </div>


        <!-- will implement js function to connect the backend for adding recipes  -->

    </div>

</body>

</html>