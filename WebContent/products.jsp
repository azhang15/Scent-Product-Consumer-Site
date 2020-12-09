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
            <form method="POST">
                <h3>Brand:</h3>
                <div class="brand">
                <!-- <%-- The name is what request.getParamter("NAME") --%>
                <%-- request.getParamter("NAME") = VALUE --%> -->
                    <input type="checkbox" name = "brandcb" value="default" checked=checked/>Show All<br />
                    <input type="checkbox" name = "brandcb" value="Acqua di Parma"/>Acqua di Parma<br />
                    <input type="checkbox" name = "brandcb" value="Armani Beauty"/>Armani Beauty <br />
                    <input type="checkbox" name = "brandcb" value="Atelier Cologne"/>Atelier Cologne<br />
                    <input type="checkbox" name = "brandcb" value="Burberry"/>Burberry<br />
                    <input type="checkbox" name = "brandcb" value="BVLGARI"/>BVLGARI<br />
                    <input type="checkbox" name = "brandcb" value="Calvin Klein"/>Calvin Klein<br />
                    <input type="checkbox" name = "brandcb" value="Capri Blue"/>Capri Blue<br />
                    <input type="checkbox" name = "brandcb" value="Chloe"/>Chloe<br />
                    <input type="checkbox" name = "brandcb" value="Dior"/>Dior<br />
                    <input type="checkbox" name = "brandcb" value="Dolce&Gabbana"/>Dolce&Gabbana<br />
                    <input type="checkbox" name = "brandcb" value="Etat Libre d'Orange"/>Etat Libre d'Orange<br />
                    <input type="checkbox" name = "brandcb" value="Floral Street"/>Floral Street<br />
                    <input type="checkbox" name = "brandcb" value="Guerlain"/>Guerlain<br />
                    <input type="checkbox" name = "brandcb" value="Hermes"/>Hermes<br />
                    <input type="checkbox" name = "brandcb" value="Jean Paul Gaultier"/>Jean Paul Gaultier<br />
                    <input type="checkbox" name = "brandcb" value="Jo Malone London"/>Jo Malone London<br />
                    <input type="checkbox" name = "brandcb" value="Juliette Has a Gun"/>Juliette Has a Gun<br />
                    <input type="checkbox" name = "brandcb" value="Kilian"/>Kilian<br />
                    <input type="checkbox" name = "brandcb" value="Lancome"/>Lancome<br />
                    <input type="checkbox" name = "brandcb" value="Maison Louis Marie"/>Maison Louis Marie<br />
                    <input type="checkbox" name = "brandcb" value="Marc Jacobs Fragrances"/>Marc Jacobs Fragrances<br />
                    <input type="checkbox" name = "brandcb" value="Montblanc"/>Montblanc<br />
                    <input type="checkbox" name = "brandcb" value="Moschino"/>Moschino<br />
                    <input type="checkbox" name = "brandcb" value="Mugler"/>Mugler<br />
                    <input type="checkbox" name = "brandcb" value="Narciso Rodriguez"/>Narciso Rodriguez<br />
                    <input type="checkbox" name = "brandcb" value="NEST New York"/>NEST New York<br />
                    <input type="checkbox" name = "brandcb" value="Paco Rabanne"/>Paco Rabanne<br />
                    <input type="checkbox" name = "brandcb" value="philosophy"/>philosophy<br />
                    <input type="checkbox" name = "brandcb" value="PHLUR"/>PHLUR<br />
                    <input type="checkbox" name = "brandcb" value="prada"/>prada<br />
                    <input type="checkbox" name = "brandcb" value="Ralph Lauren"/>Ralph Lauren<br />
                    <input type="checkbox" name = "brandcb" value="Serge Lutens"/>Serge Lutens<br />
                    <input type="checkbox" name = "brandcb" value="TOCCA"/>TOCCA<br />
                    <input type="checkbox" name = "brandcb" value="Tom Ford"/>Tom Ford<br />
                    <input type="checkbox" name = "brandcb" value="Tory Burch"/>Tory Burch<br />
                    <input type="checkbox" name = "brandcb" value="Valentino"/>Valentino<br />
                    <input type="checkbox" name = "brandcb" value="Versace"/>Versace<br />
                    <input type="checkbox" name = "brandcb" value="Viktor&Rolf"/>Viktor&Rolf<br />
                    <input type="checkbox" name = "brandcb" value="Voluspa"/>Voluspa<br />
                    <input type="checkbox" name = "brandcb" value="Yves Saint Laurent"/>Yves Saint Laurent<br />
                </div>
                <!-- 
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
                 -->
                <h3>Scent Notes:</h3>
                <div class="notes">
                    <input type="checkbox" name = "notescb" value="default" checked=checked/>Show All<br />
                    <input type="checkbox" name = "notescb" value="Leather Accord"/>Leather Accord<br />
                    <input type="checkbox" name = "notescb" value="amber"/>amber<br />
                    <input type="checkbox" name = "notescb" value="Amber Gris"/>Amber Gris<br />
                    <input type="checkbox" name = "notescb" value="Amber Wood"/>Amber Wood<br />
                    <input type="checkbox" name = "notescb" value="ambergris"/>ambergris<br />
                    <input type="checkbox" name = "notescb" value="amberwood"/>amberwood<br />
                    <input type="checkbox" name = "notescb" value="apple"/>apple<br />
                    <input type="checkbox" name = "notescb" value="aquatic notes"/>aquatic notes<br />
                    <input type="checkbox" name = "notescb" value="bamboo"/>bamboo<br />
                    <input type="checkbox" name = "notescb" value="basil"/>basil<br />
                    <input type="checkbox" name = "notescb" value="bergamot"/>bergamot<br />
                    <input type="checkbox" name = "notescb" value="birch leaf"/>birch leaf<br />
                    <input type="checkbox" name = "notescb" value="Bitter Almond Oil"/>Bitter Almond Oil<br />
                    <input type="checkbox" name = "notescb" value="black peppers"/>black peppers<br />
                    <input type="checkbox" name = "notescb" value="blackcurrant"/>blackcurrant<br />
                    <input type="checkbox" name = "notescb" value="Blood orange"/>Blood orange<br />
                    <input type="checkbox" name = "notescb" value="bourbon vanilla"/>bourbon vanilla<br />
                    <input type="checkbox" name = "notescb" value="Bulgarian Lavender"/>Bulgarian Lavender<br />
                    <input type="checkbox" name = "notescb" value="Bulgarian Rose"/>Bulgarian Rose<br />
                    <input type="checkbox" name = "notescb" value="caramel accord"/>caramel accord<br />
                    <input type="checkbox" name = "notescb" value="casablanca lily"/>casablanca lily<br />
                    <input type="checkbox" name = "notescb" value="Cashmeran Wood"/>Cashmeran Wood<br />
                    <input type="checkbox" name = "notescb" value="Cedarwood"/>Cedarwood<br />
                    <input type="checkbox" name = "notescb" value="Cetalox"/>Cetalox<br />
                    <input type="checkbox" name = "notescb" value="chinese pepper"/>chinese pepper<br />
                    <input type="checkbox" name = "notescb" value="Cinnamon"/>Cinnamon<br />
                    <input type="checkbox" name = "notescb" value="Cinnamon Spiced Bruleé"/>Cinnamon Spiced Bruleé<br />
                    <input type="checkbox" name = "notescb" value="clean chypre accord"/>clean chypre accord<br />
                    <input type="checkbox" name = "notescb" value="cloves buds"/>cloves buds<br />
                    <input type="checkbox" name = "notescb" value="Coffee Accord"/>Coffee Accord<br />
                    <input type="checkbox" name = "notescb" value="cognac"/>cognac<br />
                    <input type="checkbox" name = "notescb" value="Crushed Sugar Cane"/>Crushed Sugar Cane<br />
                    <input type="checkbox" name = "notescb" value="crystal moss accord"/>crystal moss accord<br />
                    <input type="checkbox" name = "notescb" value="Damascus Rose"/>Damascus Rose<br />
                    <input type="checkbox" name = "notescb" value="dark rum"/>dark rum<br />
                    <input type="checkbox" name = "notescb" value="Driftwood"/>Driftwood<br />
                    <input type="checkbox" name = "notescb" value="Eucalyptus"/>Eucalyptus<br />
                    <input type="checkbox" name = "notescb" value="flint"/>flint<br />
                    <input type="checkbox" name = "notescb" value="Fluffy Vanilla Marshmallow"/>Fluffy Vanilla Marshmallow<br />
                    <input type="checkbox" name = "notescb" value="Freesia"/>Freesia<br />
                    <input type="checkbox" name = "notescb" value="French Cade Wood"/>French Cade Wood<br />
                    <input type="checkbox" name = "notescb" value="Fresh Kabocha Pumpkin"/>Fresh Kabocha Pumpkin<br />
                    <input type="checkbox" name = "notescb" value="Fresh Mint"/>Fresh Mint<br />
                    <input type="checkbox" name = "notescb" value="frosted grapefuit"/>frosted grapefuit<br />
                    <input type="checkbox" name = "notescb" value="Geranium"/>Geranium<br />
                    <input type="checkbox" name = "notescb" value="ginger"/>ginger<br />
                    <input type="checkbox" name = "notescb" value="Goji Berry"/>Goji Berry<br />
                    <input type="checkbox" name = "notescb" value="Guaiac Wood"/>Guaiac Wood<br />
                    <input type="checkbox" name = "notescb" value="guaiacwood"/>guaiacwood<br />
                    <input type="checkbox" name = "notescb" value="honey"/>honey<br />
                    <input type="checkbox" name = "notescb" value="hot chili pepper"/>hot chili pepper<br />
                    <input type="checkbox" name = "notescb" value="Huckleberry"/>Huckleberry<br />
                    <input type="checkbox" name = "notescb" value="immortal flower"/>immortal flower<br />
                    <input type="checkbox" name = "notescb" value="incense"/>incense<br />
                    <input type="checkbox" name = "notescb" value="Italian Lemon"/>Italian Lemon<br />
                    <input type="checkbox" name = "notescb" value="Jasmine"/>Jasmine<br />
                    <input type="checkbox" name = "notescb" value="Jasmine Sambac"/>Jasmine Sambac<br />
                    <input type="checkbox" name = "notescb" value="King William Pear"/>King William Pear<br />
                    <input type="checkbox" name = "notescb" value="lavender"/>lavender<br />
                    <input type="checkbox" name = "notescb" value="lavender essence"/>lavender essence<br />
                    <input type="checkbox" name = "notescb" value="leather"/>leather<br />
                    <input type="checkbox" name = "notescb" value="lemon"/>lemon<br />
                    <input type="checkbox" name = "notescb" value="lily"/>lily<br />
                    <input type="checkbox" name = "notescb" value="lily of the valley"/>lily of the valley<br />
                    <input type="checkbox" name = "notescb" value="magnolia"/>magnolia<br />
                    <input type="checkbox" name = "notescb" value="Mandarin"/>Mandarin<br />
                    <input type="checkbox" name = "notescb" value="Mandarin Aquatic Note"/>Mandarin Aquatic Note<br />
                    <input type="checkbox" name = "notescb" value="Mandarin Orange"/>Mandarin Orange<br />
                    <input type="checkbox" name = "notescb" value="mimosa flower"/>mimosa flower<br />
                    <input type="checkbox" name = "notescb" value="mint leaves"/>mint leaves<br />
                    <input type="checkbox" name = "notescb" value="musk"/>musk<br />
                    <input type="checkbox" name = "notescb" value="musk accord"/>musk accord<br />
                    <input type="checkbox" name = "notescb" value="neroli petals"/>neroli petals<br />
                    <input type="checkbox" name = "notescb" value="oak wood"/>oak wood<br />
                    <input type="checkbox" name = "notescb" value="Orange"/>Orange<br />
                    <input type="checkbox" name = "notescb" value="Orange Blossom"/>Orange Blossom<br />
                    <input type="checkbox" name = "notescb" value="Orris Accord"/>Orris Accord<br />
                    <input type="checkbox" name = "notescb" value="Patchouli"/>Patchouli<br />
                    <input type="checkbox" name = "notescb" value="pear"/>pear<br />
                    <input type="checkbox" name = "notescb" value="Peony"/>Peony<br />
                    <input type="checkbox" name = "notescb" value="pepper"/>pepper<br />
                    <input type="checkbox" name = "notescb" value="Pine"/>Pine<br />
                    <input type="checkbox" name = "notescb" value="pineapple leaves"/>pineapple leaves<br />
                    <input type="checkbox" name = "notescb" value="Pink Chypre"/>Pink Chypre<br />
                    <input type="checkbox" name = "notescb" value="Pink Floral"/>Pink Floral<br />
                    <input type="checkbox" name = "notescb" value="Pomegranate"/>Pomegranate<br />
                    <input type="checkbox" name = "notescb" value="Raspberry"/>Raspberry<br />
                    <input type="checkbox" name = "notescb" value="red berries"/>red berries<br />
                    <input type="checkbox" name = "notescb" value="rice powder"/>rice powder<br />
                    <input type="checkbox" name = "notescb" value="Ripe Mango"/>Ripe Mango<br />
                    <input type="checkbox" name = "notescb" value="rose"/>rose<br />
                    <input type="checkbox" name = "notescb" value="Rose Absolute"/>Rose Absolute<br />
                    <input type="checkbox" name = "notescb" value="saffron"/>saffron<br />
                    <input type="checkbox" name = "notescb" value="sage"/>sage<br />
                    <input type="checkbox" name = "notescb" value="Sandalwood"/>Sandalwood<br />
                    <input type="checkbox" name = "notescb" value="sea salt"/>sea salt<br />
                    <input type="checkbox" name = "notescb" value="spices"/>spices<br />
                    <input type="checkbox" name = "notescb" value="star anise"/>star anise<br />
                    <input type="checkbox" name = "notescb" value="Strawberry"/>Strawberry<br />
                    <input type="checkbox" name = "notescb" value="Tarocco Orange"/>Tarocco Orange<br />
                    <input type="checkbox" name = "notescb" value="tasty vanilla"/>tasty vanilla<br />
                    <input type="checkbox" name = "notescb" value="Texas Cedarwood"/>Texas Cedarwood<br />
                    <input type="checkbox" name = "notescb" value="thyme"/>thyme<br />
                    <input type="checkbox" name = "notescb" value="tobacco leaf"/>tobacco leaf<br />
                    <input type="checkbox" name = "notescb" value="tonka beans"/>tonka beans<br />
                    <input type="checkbox" name = "notescb" value="tropical melon"/>tropical melon<br />
                    <input type="checkbox" name = "notescb" value="Tumeric"/>Tumeric<br />
                    <input type="checkbox" name = "notescb" value="vanilla"/>vanilla<br />
                    <input type="checkbox" name = "notescb" value="Vanilla Beans"/>Vanilla Beans<br />
                    <input type="checkbox" name = "notescb" value="Verbena"/>Verbena<br />
                    <input type="checkbox" name = "notescb" value="Vetiver"/>Vetiver<br />
                    <input type="checkbox" name = "notescb" value="violet leaves"/>violet leaves<br />
                    <input type="checkbox" name = "notescb" value="warm woods"/>warm woods<br />
                    <input type="checkbox" name = "notescb" value="Whipped Coconut Crema"/>Whipped Coconut Crema<br />
                    <input type="checkbox" name = "notescb" value="White florals"/>White florals<br />
                    <input type="checkbox" name = "notescb" value="white gardenia"/>white gardenia<br />
                    <input type="checkbox" name = "notescb" value="white ginger"/>white ginger<br />
                    <input type="checkbox" name = "notescb" value="Woods"/>Woods<br />
                    <input type="checkbox" name = "notescb" value="Ylang Ylang"/>Ylang Ylang<br />
                    <input type="checkbox" name = "notescb" value="yuzu lemon"/>yuzu lemon<br />
                    <input type="checkbox" name = "notescb" value="Zesty Lemon"/>Zesty Lemon<br />
                </div>
                <h3>Price Range:</h3>
                <div class="price">
                    <input type="checkbox" name = "pricecb" value = "0" checked=checked/> Show All <br />
                    <input type="checkbox" name = "pricecb" value = "50"/> Under $50 <br />
                    <input type="checkbox" name = "pricecb" value = "100"/> $50 to $100 <br />
                    <input type="checkbox" name = "pricecb" value = "200"/> $100 to $200 <br />
                    <input type="checkbox" name = "pricecb" value = "10000"/> Over $200 <br />
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
    	<div class="contents" style="margin-left:25%;padding:1px 16px;">
			<c:forEach items="${products}" var="product" varStatus="loop">
                <c:if test="${loop.count == 1}">
                    	<!-- product card 1 -->
                    <div class="container" style="margin-top: 75px;margin-right: 30px;" ;>
                        <div class="images">
                            <!-- <img src="img/perfume.png" /> -->
                            <img src="<c:url value="${product.imageLink}"></c:url>" />
                        </div>
                        <div class="product" style="width: 150px;">
                            <p><c:out value="${product.brand}"/></p>
                            <h1 class="subheading"><c:out value="${product.title}"/></h1>
                            <h3>$<c:out value="${product.price}"/></h3>
                            <p class="desc"><c:out value="${product.personality}"/></p>
                            <div class="buttons" style="font-family: Playfair Display; ">
                            	<!-- 
                            	<form method="POST" action="/Scent-Product-Consumer-Site/wishlist">
                                    <button name="prodid" type="submit" class="add" value="${product.prodId}">Save Product</button>
                                </form>
                            	  -->
                               <button name="prodid" type="submit" class="add" value="${product.prodId}">Save Product</button>
                            </div>
                        </div>
                    </div>
                </c:if>
                <c:if test="${loop.count > 1}">
                    	<!-- product card 2 -->
                    <div class="container" style="margin-top: 75px; margin-right: 50px;" ;>
                        <div class="images">
                            <!-- <img src="img/perfume.png" /> -->
                            <img src="<c:url value="${product.imageLink}"></c:url>" />
                        </div>
                        <div class="product" style="width: 150px;">
                            <p><c:out value="${product.brand}"/></p>
                            <h1 class="subheading"><c:out value="${product.title}"/></h1>
                            <h3>$<c:out value="${product.price}"/></h3>
                            <p class="desc"><c:out value="${product.personality}"/></p>
                            <div class="buttons" style="font-family: Playfair Display; ">
                                <!-- 
                            	<form method="POST" action="/Scent-Product-Consumer-Site/wishlist">
                                    <button name="prodid" type="submit" class="add" value="${product.prodId}">Save Product</button>
                                </form>
                            	  -->
                               <button name="prodid" type="submit" class="add" value="${product.prodId}">Save Product</button>
                            </div>
                        </div>
                    </div>
                </c:if>
			</c:forEach>
		</div>
		
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