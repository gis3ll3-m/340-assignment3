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


    <div class="pure-g" style="padding: 20px; align-items: center;">

        <div class="pure-u-1 pure-u-md-1-2">
            <img src="${character.imageUrl!'/default.jpeg'}" alt="Grumpy Bear" class="detail-img">
        </div>
        <div class="pure-u-1 pure-u-md-1-2">
            <h1>${character.name}</h1>
            <p class="detail-desc">${character.description}</p>
            <ul class="bear-details">
                <li> <b>Belly Badge:</b> ${character.bellyBadge}</li>
                <li><b>Special Ability:</b> ${character.specialAbility}</li>
                <li><b>Favorite Food:</b> ${character.favFood}</li>
                <li><b>FUN FACT:</b> ${character.funFact}</li>
            </ul>

            <a href="/characters/edit/${character.characterId}" class="pure-button pure-button-primary">
                Edit
            </a>

            <form action="/characters/delete/${character.characterId}" method="POST">
                <button type="submit" class="pure-button pure-button-error">Delete</button>
            </form>
        </div>
    </div>

</body>

</html>