<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CareBears</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/purecss@3.0.0/build/pure-min.css"
        integrity="sha384-X38yfunGUhNzHpBaEBsWLO+A0HDYOQi8ufWDkZ0k9e0eXz/tH3II7uKZ9msv++Ls" crossorigin="anonymous">
    <link rel="stylesheet" href="/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/purecss@3.0.0/build/grids-responsive-min.css">
</head>


<body>
    <!-- Header, navigation, and search -->
    <div class="header">
        <div class="home-menu pure-menu pure-menu-horizontal pure-menu-fixed">
            <a class="pure-menu-heading" href=""><img src="/logo.jpeg" alt="Carebears Logo" class="logo"></a>


            <ul class="pure-menu-list">
                <li class="pure-menu-item"><a href="/characters/" class="pure-menu-link">Home</a></li>
                <li class="pure-menu-item"><a href="/characters/details/1" class="pure-menu-link">Details</a></li>
                <li class="pure-menu-item"><a href="/characters/about" class="pure-menu-link">About</a></li>
                <li class="pure-menu-item"><a href="/characters/add" class="pure-menu-link">Add new Character</a>
                <!--Search -->
                <li class="pure-menu-item">
                    <form class="pure-form">
                        <input class="pure-input-rounded" type="search" placeholder="Search" />
                    </form>
                </li>
            </ul>
        </div>
    </div>

    <!--Header Carebear-->
    <header class="content" style="margin-top: 50px;">
        <h1>Welcome to the Carebears World!</h1>
        <p>Carebears are a group of colorful bears who live in the magical land of Care-a-Lot. Each bear has a unique
            personality and a special "belly badge" that represents their caring mission. They work together to spread
            love, kindness, and happiness throughout the world.</p>
    </header>


    <!--Container for Carebear cards -->
    <div class="pure-g" style="padding: 20px;">
<#list characterList as characters>
<div class="pure-u-1 pure-u-md-1-3 bear-card">
            <h2>${characters.name}</h2>
            <img src="${characters.imageUrl!'/default.jpeg'}" alt="Grumpy Bear" class="bear-img">
            <p class="bear-desc">${characters.description}</p>
            <a href="/characters/details/${characters.characterId}" class="pure-button pure-button-primary">More</a>
        </div>
</#list>
        


</body>

</html>