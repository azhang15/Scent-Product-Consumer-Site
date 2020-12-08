<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Account</title>
    <link rel="stylesheet" href="css/myAccount.css">
    <link rel="stylesheet" href="css/products.css">
</head>

<body>
    <main>
        <!-- the very top part -->
        <div class="top" style="letter-spacing: 2px;">
            <ul>
                <li style="float:left!important" class="barlist"><a href="index.jsp">Fragrance Finder</a></li>
                <li style="padding-right: 30px;" class="barlist"><a href="index.jsp#login">Log Out</a></li>
                <li style="padding-right: 30px;" class="barlist"><a href="products.jsp">Find Products</a></li>
                <li class="barlist"><a href="index.jsp#filter">Home</a></li>
            </ul>
        </div>

        <div id="profile-upper">
            <div id="profile-banner-image">
                <img src="img/background_banner.png" alt="Banner image">
            </div>
            <div id="profile-d">
                <div id="profile-pic">
                    <img src="img/avatar.jpg">
                </div>
                <!-- TODO -->
                <div id="u-name" action="/Scent-Product-Consumer-Site/LoginController"><c:out value="${sessionScope.currentSessionUser.getFirstName()}"/> <c:out value="${sessionScope.lastname}"/></div>
            </div>
            <div id="black-grd"></div>
        </div>

        <br>
        <div class="myCollection" style="letter-spacing: 2px;">
            My Fragrance Collection
        </div>
		
		<div>
			<c:forEach items="${wishlist}" var="product">
	        <!-- product card 1 -->
	        <div class="container" style="margin-top: 75px;margin-left: 30px;margin-right: 50px;" ;>
	            <div class="images">
	                <img src="img/perfume.png" />
	            </div>
	            <div class="product">
	                <p><c:out value="${product.brand}"/></p>
	                <h1 class="subheading"><c:out value="${product.title}"/></h1>
	                <h4>$<c:out value="${product.price}"/></h4>
	                <!-- 
	                 <div class="rating">
	                    <span class="fa fa-star checked"></span>
	                    <span class="fa fa-star checked"></span>
	                    <span class="fa fa-star checked"></span>
	                    <span class="fa fa-star checked"></span>
	                    <span class="fa fa-star"></span>
	                </div>
	                 -->
	                <p class="desc"><c:out value="${product.occasion}"/></p>
	                <div class="buttons" style="font-family: Playfair Display; ">
	                    <button class="add ">Save Product ♥</button>
	                </div>
	            </div>
	        </div>
        </c:forEach>
		</div>


        <!-- 
        <div class="container" style="margin-right: 25px" ;>
            <div class="images">
                <img src="img/perfume.png" />
            </div>
            <div class="product">
                <p>Victor & Rolf</p>
                <h1 class="subheading">Flowerbomb</h1>
                <h4>$99.00</h4>
                <div class="rating">
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star"></span>
                </div>
                <p class="desc">This veritable garden party in a bottle is an intoxicating perfume for women that is an enchanting whirl of cattleya, jasmine, and rose perfumes. Grounded in patchouli and vanilla, Flowerbomb is an addictive women’s fragrance of lavish
                    beauty and voluptuous sensuality.</p>
                <div class="buttons" style="font-family: Playfair Display; ">
                    <button class="add ">Remove</button>
                </div>
            </div>
        </div>
        -->


        <!-- 
        <div class="container" style="margin-right: 25px" ;>
            <div class="images">
                <img src="img/perfume.png" />
            </div>
            <div class="product">
                <p>Victor & Rolf</p>
                <h1 class="subheading">Flowerbomb</h1>
                <h4>$99.00</h4>
                <div class="rating">
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star"></span>
                </div>
                <p class="desc">This veritable garden party in a bottle is an intoxicating perfume for women that is an enchanting whirl of cattleya, jasmine, and rose perfumes. Grounded in patchouli and vanilla, Flowerbomb is an addictive women’s fragrance of lavish
                    beauty and voluptuous sensuality.</p>
                <div class="buttons" style="font-family: Playfair Display; ">
                    <button class="add ">Remove</button>
                </div>
            </div>
        </div>
        -->

    </main>

</html>