<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CareBears</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/purecss@3.0.0/build/pure-min.css"
        integrity="sha384-X38yfunGUhNzHpBaEBsWLO+A0HDYOQi8ufWDkZ0k9e0eXz/tH3II7uKZ9msv++Ls" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/purecss@3.0.0/build/grids-responsive-min.css">
</head>


<body>
    <!-- Header, navigation, and search -->
    <div class="header">
        <div class="home-menu pure-menu pure-menu-horizontal pure-menu-fixed">
            <a class="pure-menu-heading" href=""><img src="logo.jpeg" alt="Carebears Logo" class="logo"></a>


            <ul class="pure-menu-list">
                <li class="pure-menu-item"><a href="index.html" class="pure-menu-link">Home</a></li>
                <li class="pure-menu-item"><a href="details.html" class="pure-menu-link">Details</a></li>
                <li class="pure-menu-item"><a href="about.html" class="pure-menu-link">About</a></li>
                <li class="pure-menu-item"><a href="add-character.html" class="pure-menu-link">Add new Character</a>
                </li>
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
<#character-list as characters>
<div class="pure-u-1 pure-u-md-1-3 bear-card">
            <h2>${name}</h2>
            <img src="grumpyB.jpeg" alt="Grumpy Bear" class="bear-img">
            <p class="bear-desc">${description}</p>
            <a href="details.html" class="pure-button pure-button-primary">More</a>
        </div>
</#list>
        <!--Card 1 -->
        <div class="pure-u-1 pure-u-md-1-3 bear-card">
            <h2>Grumpy Bear</h2>
            <img src="grumpyB.jpeg" alt="Grumpy Bear" class="bear-img">
            <p class="bear-desc">Grumpy Bear is known for being grumpy and always trying to find the negative in
                situations.</p>
            <a href="details.html" class="pure-button pure-button-primary">More</a>
        </div>


        <!--Card 2 -->
        <div class="pure-u-1 pure-u-md-1-3 bear-card">
            <h2>Cheer Bear</h2>
            <img src="cheerBear.jpeg" alt="Cheer Bear" class="bear-img">
            <p class="bear-desc">Cheer Bear is known for being optimistic and always trying to make others feel better.
            </p>
            <a href="details.html" class="pure-button pure-button-primary">More</a>
        </div>


        <!--Card 3 -->
        <div class="pure-u-1 pure-u-md-1-3 bear-card">
            <h2>Funshine Bear</h2>
            <img src="funshineB.jpeg" alt="Funshine Bear" class="bear-img">
            <p class="bear-desc">Funshine Bear is known for being cheerful and always trying to have fun.</p>
            <a href="details.html" class="pure-button pure-button-primary">More</a>
        </div>
    </div>

    <!--Container for Carebear cards (Second row)-->
    <div class="pure-g" style="padding: 20px;">

        <!--Card 4 -->
        <div class="pure-u-1 pure-u-md-1-3 bear-card">
            <h2>Good Luck Bear</h2>
            <img src="goodluckB.jpeg" alt="Good Luck Bear" class="bear-img">
            <p class="bear-desc">Good Luck Bear is known for being lucky and always trying to bring good luck to others.
            </p>
            <a href="details.html" class="pure-button pure-button-primary">More</a>
        </div>


        <!--Card 5 -->
        <div class="pure-u-1 pure-u-md-1-3 bear-card">
            <h2>Bedtime Bear</h2>
            <img src="bedtimeB.jpg" alt="Bedtime Bear" class="bear-img">
            <p class="bear-desc">Bedtime Bear is known for being sleepy and always trying to help others get a good
                night's sleep.</p>
            <a href="details.html" class="pure-button pure-button-primary">More</a>
        </div>


        <!--Card 6 -->
        <div class="pure-u-1 pure-u-md-1-3 bear-card">
            <h2>Harmony Bear</h2>
            <img src="harmonyB.jpeg" alt="Harmony Bear" class="bear-img">
            <p class="bear-desc">Harmony Bear is known for being peaceful and always trying to promote harmony among
                others.</p>
            <a href="details.html" class="pure-button pure-button-primary">More</a>
        </div>
    </div>


</body>

</html>