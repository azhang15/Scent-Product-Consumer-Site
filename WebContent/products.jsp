<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">


<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/products.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
    </style>
</head>

<body>
    <!-- the very top part -->
    <div class="top" style="letter-spacing: 2px;">
        <ul>
            <li style="float:left!important" class="barlist"><a href="index.jsp">Fragrance Finder</a></li>
            <li style="padding-right: 30px;" class="barlist"><a href="myAccount.jsp">My Account</a></li>
            <li style="padding-right: 30px;" class="barlist"><a href="#">Find Products</a></li>
            <li class="barlist"><a href="index.jsp#filter">Home</a></li>
        </ul>
    </div>

    <div class="sidebar">
        <br>
        <br>
        <h2>Filter by:</h2>


        <div class="filters">
            <!-- TODO: Add controller -->
            <form action="FilterController" method = "POST">
                <h3>Brand:</h3>
                <div class="brand">
                <%-- The name is what request.getParamter("NAME") --%>
                <%-- request.getParamter("NAME") = VALUE --%>
                    <input type="checkbox" name = "brandcb" value="Acqua di Parma"/>Acqua di Parma<br />
                    <input type="checkbox" />Armani Beauty <br />
                    <input type="checkbox" />Atelier Cologne<br />
                    <input type="checkbox" />Burberry<br />
                    <input type="checkbox" />BVLGARI<br />
                    <input type="checkbox" />Calvin Klein<br />
                    <input type="checkbox" />Capri Blue<br />
                    <input type="checkbox" />Chloe<br />
                    <input type="checkbox" />Dior<br />
                    <input type="checkbox" />Dolce&Gabbana<br />
                    <input type="checkbox" />Etat Libre d'Orange<br />
                    <input type="checkbox" />Floral Street<br />
                    <input type="checkbox" />Guerlain<br />
                    <input type="checkbox" />Hermes<br />
                    <input type="checkbox" />Jean Paul Gaultier<br />
                    <input type="checkbox" />Jo Malone London<br />
                    <input type="checkbox" />Juliette Has a Gun<br />
                    <input type="checkbox" />Kilian<br />
                    <input type="checkbox" />Lancome<br />
                    <input type="checkbox" />Maison Louis Marie<br />
                    <input type="checkbox" />Marc Jacobs Fragrances<br />
                    <input type="checkbox" />Montblanc<br />
                    <input type="checkbox" />Moschino<br />
                    <input type="checkbox" />Mugler<br />
                    <input type="checkbox" />Narciso Rodriguez<br />
                    <input type="checkbox" />NEST New York<br />
                    <input type="checkbox" />Paco Rabanne<br />
                    <input type="checkbox" />philosophy<br />
                    <input type="checkbox" />PHLUR<br />
                    <input type="checkbox" />prada<br />
                    <input type="checkbox" />Ralph Lauren<br />
                    <input type="checkbox" />Serge Lutens<br />
                    <input type="checkbox" />TOCCA<br />
                    <input type="checkbox" />Tom Ford<br />
                    <input type="checkbox" />Tory Burch<br />
                    <input type="checkbox" />Valentino<br />
                    <input type="checkbox" />Versace<br />
                    <input type="checkbox" />Viktor&Rolf<br />
                    <input type="checkbox" />Voluspa<br />
                    <input type="checkbox" name = "brandcb"/>Yves Saint Laurent<br />
                </div>
                <h3>Rating:</h3>
                <div class="filter-menu">
                    <select id="dropdown" name="rating">
                        <option value=5>5 stars</option>
                        <option value=4>4 stars & above</option>
                        <option value=3>3 stars & above</option>
                        <option value=2>2 stars & above</option>
                        <option value=1>1 star & above</option>
                    </select>
                </div>
                <h3>Scent Notes:</h3>
                <div class="notes">
                    <input type="checkbox" /> <br />
                    <input type="checkbox" /> Armani Beauty <br />
                    <input type="checkbox" /> This is checkbox <br />
                    <input type="checkbox" /> This is checkbox <br />
                    <input type="checkbox" /> This is checkbox <br />
                    <input type="checkbox" /> This is checkbox <br />
                    <input type="checkbox" /> This is checkbox <br />
                    <input type="checkbox" /> This is checkbox <br />
                    <input type="checkbox" /> This is checkbox <br />
                    <input type="checkbox" /> This is checkbox <br />
                </div>
                <h3>Price Range:</h3>
                <div class="price">
                    <input type="checkbox" /> Under $50 <br />
                    <input type="checkbox" /> $50 to $100 <br />
                    <input type="checkbox" /> $100 to $200 <br />
                    <input type="checkbox" /> Over $200 <br />
                </div>
                <input type="reset" , value="Reset" , style="font-family: Georgia, 'Times New Roman', Times, serif;">
                <input type="submit" style="margin-top:15px;font-family: Georgia, 'Times New Roman', Times, serif;" , value="Apply">
            </form>
            <br>
            <br>
        </div>

    </div>

    
    	<!-- 
    		<div class="contents" style="margin-left:25%;padding:1px 16px;" method="GET" href="ProductController?action=listProduct" name="products" >
    	 -->
    
		<c:forEach items="${products}" var="product">
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
		
<!-- 
        <div class="container" style="margin-top: 75px ; " ;>
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
                    <button class="add ">Save Product ♥</button>
                </div>
            </div>
        </div>
 -->

    </div>
    <script src=" /js/products.js "></script>
</body>

</html>