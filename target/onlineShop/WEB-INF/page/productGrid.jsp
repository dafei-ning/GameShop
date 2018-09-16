<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet"
          href="<c:url value="/resource/bootstrap/css/bootstrap.min.css"/>">
    <script src="<c:url value="/resource/js/jquery.js"/>"></script>
    <script src="<c:url value="/resource/bootstrap/js/bootstrap.min.js"/>"></script>
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
    <style>
        body, h1, h2, h3, h4, h5 {
            font-family: "Raleway", sans-serif
        }

        .w3-sidenav a, .w3-sidenav h4 {
            font-weight: bold
        }
    </style>
</head>
<body>

<div class="w3-row-padding switchgames">
<div id ="gameCate">
<h3>Xbox games</h3>
</div>
    <div class="w3-third w3-container w3-margin-bottom">
        <img src="<c:url value="/resource/images/Gamefiles/1.jpg"/>" alt="Norway" style="width: 100%"
             class="w3-hover-opacity">
        <div class="w3-container w3-white">
            <p>
                <b>The Witcher 3: Wild Hunt</b>
            </p>
            <p>
            <ul class="productgridcontent">
                <li>$39.99+</li>
                <li>CD PROJEKT SA</li>
                <li>Action & Adventure, Role Playing</li>
                <li>MATURE 17+</li>
            </ul>
            </p>
        </div>
    </div>
    <div class="w3-third w3-container w3-margin-bottom">
        <img src="<c:url value="/resource/images/Gamefiles/2.jpg"/>" alt="NoPic" style="width: 100%"
             class="w3-hover-opacity">
        <div class="w3-container w3-white">
            <p>
                <b>Rise Of The Tomb Raider</b>
            </p>
            <p>
            <ul class="productgridcontent">
                <li>$59.99+</li>
                <li>Square Enix Ltd</li>
                <li>Action & Adventure</li>
                <li>ESRB: MATURE 17+</li>
            </ul>
            </p>
        </div>
    </div>
    <div class="w3-third w3-container w3-margin-bottom">
        <img src="<c:url value="/resource/images/Gamefiles/7.jpg"/>" alt="Norway" style="width: 100%"
             class="w3-hover-opacity">
        <div class="w3-container w3-white">
            <p>
                <b>Overcooked: Gourmet Edition</b>
            </p>
            <p>
            <ul class="productgridcontent">
                <li>$21.49+</li>
                <li>Team17 Digital Ltd.</li>
                <li>Family & kids, Strategy, Simulation</li>
                <li>ESRB: Everyone</li>
            </ul>
            </p>
        </div>
    </div>
    <div class="w3-third w3-container w3-margin-bottom">
        <img src="<c:url value="/resource/images/Gamefiles/8.jpg"/>" alt="Norway" style="width: 100%"
             class="w3-hover-opacity">
        <div class="w3-container w3-white">
            <p>
                <b>Don't Starve: Giant Edition</b>
            </p>
            <p>
            <ul class="productgridcontent">
                <li>$14.99+</li>
                <li>Klei Entertainment</li>
                <li>Action & Adventure</li>
                <li>ESRB: TEEN</li>
            </ul>
            </p>
        </div>
    </div>
    <div class="w3-third w3-container w3-margin-bottom">
        <img src="<c:url value="/resource/images/Gamefiles/10.jpg"/>" alt="Norway" style="width: 100%"
             class="w3-hover-opacity">
        <div class="w3-container w3-white">
            <p>
                <b>Gears Of War 4</b>
            </p>
            <p>
            <ul class="productgridcontent">
                <li>$39.99+</li>
                <li>Microsoft Studios</li>
                <li>Shooter</li>
                <li>ESRB: MATURE 17+</li>
            </ul>
            </p>
        </div>
    </div>
</div>



<div class="w3-row-padding xboxgames">
<div id ="gameCate">
<h3>PS4 games</h3>
</div>
    <div class="w3-third w3-container w3-margin-bottom">
        <img src="<c:url value="/resource/images/Gamefiles/11.jpg"/>" alt="Norway" style="width: 100%"
             class="w3-hover-opacity">
        <div class="w3-container w3-white">
            <p>
                <b>Assassin's Creed: The Ezio Collection</b>
            </p>
            <p>
            <ul class="productgridcontent">
                <li>$59.99+</li>
                <li>Ubisoft Entertainment</li>
                <li>Action & Adventure</li>
                <li>ESRB: MATURE 17+</li>
            </ul>
            </p>
        </div>
    </div>

    <div class="w3-third w3-container w3-margin-bottom">
        <img src="<c:url value="/resource/images/Gamefiles/17.jpg"/>" alt="Norway" style="width: 100%"
             class="w3-hover-opacity">
        <div class="w3-container w3-white">
            <p>
                <b>God Of War</b>
            </p>
            <p>
            <ul class="productgridcontent">
                <li>$59.99+</li>
                <li>SIEA</li>
                <li>Action & Adventure</li>
                <li>ESRB: MATURE 17+</li>
            </ul>
            </p>
        </div>
    </div>
    <div class="w3-third w3-container w3-margin-bottom">
        <img src="<c:url value="/resource/images/Gamefiles/20.jpg"/>" alt="Norway" style="width: 100%"
             class="w3-hover-opacity">
        <div class="w3-container w3-white">
            <p>
                <b>Horizon: Zero Dawn</b>
            </p>
            <p>
            <ul class="productgridcontent">
                <li>$59.99+</li>
                <li>Guerrilla Games</li>
                <li>Action / RPG</li>
                <li>ESRB: TEEN</li>
            </ul>
            </p>
        </div>
    </div>
    <div class="w3-third w3-container w3-margin-bottom">
        <img src="<c:url value="/resource/images/Gamefiles/12.jpg"/>" alt="Noway" style="width: 100%"
             class="w3-hover-opacity">
        <div class="w3-container w3-white">
            <p>
                <b>Soul Calibur VI</b>
            </p>
            <p>
            <ul class="productgridcontent">
                <li>$59.99+</li>
                <li>ANDAI NAMCO Entertainment Inc.</li>
                <li>Fighting</li>
                <li>ESRB: TEEN</li>
            </ul>
            </p>
        </div>
    </div>
    <div class="w3-third w3-container w3-margin-bottom">
        <img src="<c:url value="/resource/images/Gamefiles/14.jpg"/>" alt="Noway" style="width: 100%"
             class="w3-hover-opacity">
        <div class="w3-container w3-white">
            <p>
                <b>Extinction</b>
            </p>
            <p>
            <ul class="productgridcontent">
                <li>$59.99+</li>
                <li>Iron Galaxy</li>
                <li>TBC</li>
                <li>ESRB: MATURE 17+</li>
            </ul>
            </p>
        </div>
    </div>
</div>


<div class="w3-row-padding xboxgames">
<div id ="gameCate">
<h3>Switch games</h3>
</div>
    <div class="w3-third w3-container w3-margin-bottom">
        <img src="<c:url value="/resource/images/Gamefiles/21.jpg"/>" alt="Norway" style="width: 100%"
             class="w3-hover-opacity">
        <div class="w3-container w3-white">
            <p>
                <b>Octopath Traveler</b>
            </p>
            <p>
            <ul class="productgridcontent">
                <li>$59.99+</li>
                <li>Square Enix</li>
                <li>Role-Playing, Adventure</li>
                <li>ESRB: TEEN</li>
            </ul>
            </p>
        </div>
    </div>

    <div class="w3-third w3-container w3-margin-bottom">
        <img src="<c:url value="/resource/images/Gamefiles/22.jpg"/>" alt="Norway" style="width: 100%"
             class="w3-hover-opacity">
        <div class="w3-container w3-white">
            <p>
                <b>Super Mario: Odyssey</b>
            </p>
            <p>
            <ul class="productgridcontent">
                <li>$59.99+</li>
                <li>Nintendo</li>
                <li>Action, Platformer</li>
                <li>ESRB: EVERYONE</li>
            </ul>
            </p>
        </div>
    </div>
    <div class="w3-third w3-container w3-margin-bottom">
        <img src="<c:url value="/resource/images/Gamefiles/23.jpg"/>" alt="Norway" style="width: 100%"
             class="w3-hover-opacity">
        <div class="w3-container w3-white">
            <p>
                <b>Super Heroes 2</b>
            </p>
            <p>
            <ul class="productgridcontent">
                <li>$59.99+</li>
                <li>TT Games</li>
                <li>Action</li>
                <li>ESRB: EVERYONE</li>
            </ul>
            </p>
        </div>
    </div>
    <div class="w3-third w3-container w3-margin-bottom">
        <img src="<c:url value="/resource/images/Gamefiles/24.jpg"/>" alt="Norway" style="width: 100%"
             class="w3-hover-opacity">
        <div class="w3-container w3-white">
            <p>
                <b>Legend Of Zelda: Breath Of The Wild</b>
            </p>
            <p>
            <ul class="productgridcontent">
                <li>$14.99+</li>
                <li>Nintendo</li>
                <li>Adventure, Action, RPG</li>
                <li>ESRB: EVERYONE</li>
            </ul>
            </p>
        </div>
    </div>
    <div class="w3-third w3-container w3-margin-bottom">
        <img src="<c:url value="/resource/images/Gamefiles/25.jpg"/>" alt="Norway" style="width: 100%"
             class="w3-hover-opacity">
        <div class="w3-container w3-white">
            <p>
                <b>Wonder Boy</b>
            </p>
            <p>
            <ul class="productgridcontent">
                <li>$19.99+</li>
                <li>DotEmu</li>
                <li>Action, Adventure, Platformer</li>
                <li>ESRB: EVERYONE</li>
            </ul>
            </p>
        </div>
    </div>
</div>


</body>
</html>