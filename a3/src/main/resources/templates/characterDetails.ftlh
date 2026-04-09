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


    <div class="pure-g" style="padding: 20px; align-items: center;">

        <div class="pure-u-1 pure-u-md-1-2">
            <img src="details-bear.jpg" alt="Grumpy Bear" class="detail-img">
        </div>
        <div class="pure-u-1 pure-u-md-1-2">
            <h1>${name}</h1>
            <p class="detail-desc">Grumpy Bear is known for being grumpy and always trying to find the negative in
                situations. Despite his grumpiness, Grumpy Bear cares deeply about his friends and will do anything to
                help them when they are in need</p>
            <ul class="bear-details">
                <li> <b>Belly Badge:</b> Rain Cloud with hearts and raindrops</li>
                <li><b>Special Ability:</b> Creates storm clouds, produces rain, and sometimes lightning.</li>
                <li><b>Favorite Food:</b> Bumbleberries</li>
                <li><b>FUN FACT:</b> Grumpy bear is one of the ten original Care Bears created in 1982!.</li>
            </ul>
        </div>
    </div>

</body>

</html>