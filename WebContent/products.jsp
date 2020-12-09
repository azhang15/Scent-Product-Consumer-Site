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
            <form action="">
                <h3>Brand:</h3>
                <div class="brand">
                    <input type="checkbox" />Acqua di Parma<br />
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
                    <input type="checkbox" />Yves Saint Laurent<br />
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
                <div class="notes"></div>
                    <input type="checkbox" />Leather Accord<br />
                    <input type="checkbox" />amber<br />
                    <input type="checkbox" />Amber Gris<br />
                    <input type="checkbox" />Amber Wood<br />
                    <input type="checkbox" />ambergris<br />
                    <input type="checkbox" />amberwood<br />
                    <input type="checkbox" />apple<br />
                    <input type="checkbox" />aquatic notes<br />
                    <input type="checkbox" />bamboo<br />
                    <input type="checkbox" />basil<br />
                    <input type="checkbox" />bergamot<br />
                    <input type="checkbox" />birch leaf<br />
                    <input type="checkbox" />Bitter Almond Oil<br />
                    <input type="checkbox" />black peppers<br />
                    <input type="checkbox" />blackcurrant<br />
                    <input type="checkbox" />Blood orange<br />
                    <input type="checkbox" />bourbon vanilla<br />
                    <input type="checkbox" />Bulgarian Lavender<br />
                    <input type="checkbox" />Bulgarian Rose<br />
                    <input type="checkbox" />caramel accord<br />
                    <input type="checkbox" />casablanca lily<br />
                    <input type="checkbox" />Cashmeran Wood<br />
                    <input type="checkbox" />Cedarwood<br />
                    <input type="checkbox" />Cetalox<br />
                    <input type="checkbox" />chinese pepper<br />
                    <input type="checkbox" />Cinnamon<br />
                    <input type="checkbox" />Cinnamon Spiced Bruleé<br />
                    <input type="checkbox" />clean chypre accord<br />
                    <input type="checkbox" />cloves buds<br />
                    <input type="checkbox" />Coffee Accord<br />
                    <input type="checkbox" />cognac<br />
                    <input type="checkbox" />Crushed Sugar Cane<br />
                    <input type="checkbox" />crystal moss accord<br />
                    <input type="checkbox" />Damascus Rose<br />
                    <input type="checkbox" />dark rum<br />
                    <input type="checkbox" />Driftwood<br />
                    <input type="checkbox" />Eucalyptus<br />
                    <input type="checkbox" />flint<br />
                    <input type="checkbox" />Fluffy Vanilla Marshmallow<br />
                    <input type="checkbox" />Freesia<br />
                    <input type="checkbox" />French Cade Wood<br />
                    <input type="checkbox" />Fresh Kabocha Pumpkin<br />
                    <input type="checkbox" />Fresh Mint<br />
                    <input type="checkbox" />frosted grapefuit<br />
                    <input type="checkbox" />Geranium<br />
                    <input type="checkbox" />ginger<br />
                    <input type="checkbox" />Goji Berry<br />
                    <input type="checkbox" />Guaiac Wood<br />
                    <input type="checkbox" />guaiacwood<br />
                    <input type="checkbox" />honey<br />
                    <input type="checkbox" />hot chili pepper<br />
                    <input type="checkbox" />Huckleberry<br />
                    <input type="checkbox" />immortal flower<br />
                    <input type="checkbox" />incense<br />
                    <input type="checkbox" />Italian Lemon<br />
                    <input type="checkbox" />Jasmine<br />
                    <input type="checkbox" />Jasmine Sambac<br />
                    <input type="checkbox" />King William Pear<br />
                    <input type="checkbox" />lavender<br />
                    <input type="checkbox" />lavender essence<br />
                    <input type="checkbox" />leather<br />
                    <input type="checkbox" />lemon<br />
                    <input type="checkbox" />lily<br />
                    <input type="checkbox" />lily of the valley<br /> 
                    <input type="checkbox" />magnolia<br />
                    <input type="checkbox" />Mandarin<br />
                    <input type="checkbox" />Mandarin Aquatic Note<br />
                    <input type="checkbox" />Mandarin Orange<br />
                    <input type="checkbox" />mimosa flower<br />
                    <input type="checkbox" />mint leaves<br />
                    <input type="checkbox" />musk<br />
                    <input type="checkbox" />musk accord<br />
                    <input type="checkbox" />neroli petals<br />
                    <input type="checkbox" />oak wood<br />
                    <input type="checkbox" />Orange<br />
                    <input type="checkbox" />Orange Blossom<br />
                    <input type="checkbox" />Orris Accord<br />
                    <input type="checkbox" />Patchouli<br />
                    <input type="checkbox" />pear<br />
                    <input type="checkbox" />Peony<br />
                    <input type="checkbox" />pepper<br />
                    <input type="checkbox" />Pine<br />
                    <input type="checkbox" />pineapple leaves<br />
                    <input type="checkbox" />Pink Chypre<br />
                    <input type="checkbox" />Pink Floral<br />
                    <input type="checkbox" />Pomegranate<br />
                    <input type="checkbox" />Raspberry<br />
                    <input type="checkbox" />red berries<br />
                    <input type="checkbox" />rice powder<br />
                    <input type="checkbox" />Ripe Mango<br />
                    <input type="checkbox" />rose<br />
                    <input type="checkbox" />Rose Absolute<br />
                    <input type="checkbox" />saffron<br />
                    <input type="checkbox" />sage<br />
                    <input type="checkbox" />Sandalwood<br />
                    <input type="checkbox" />sea salt<br />
                    <input type="checkbox" />spices<br />
                    <input type="checkbox" />star anise<br />
                    <input type="checkbox" />Strawberry<br />
                    <input type="checkbox" />Tarocco Orange<br />
                    <input type="checkbox" />tasty vanilla<br />
                    <input type="checkbox" />Texas Cedarwood<br />
                    <input type="checkbox" />thyme<br />
                    <input type="checkbox" />tobacco leaf<br />
                    <input type="checkbox" />tonka beans<br />
                    <input type="checkbox" />tropical melon<br />
                    <input type="checkbox" />Tumeric<br />
                    <input type="checkbox" />vanilla<br />
                    <input type="checkbox" />Vanilla Beans<br />
                    <input type="checkbox" />Verbena<br />
                    <input type="checkbox" />Vetiver<br />
                    <input type="checkbox" />violet leaves<br />
                    <input type="checkbox" />warm woods<br />
                    <input type="checkbox" />Whipped Coconut Crema<br />
                    <input type="checkbox" />White florals<br />
                    <input type="checkbox" />white gardenia<br />
                    <input type="checkbox" />white ginger<br />
                    <input type="checkbox" />Woods<br />
                    <input type="checkbox" />Ylang Ylang<br />
                    <input type="checkbox" />yuzu lemon<br />
                    <input type="checkbox" />Zesty Lemon<br />
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