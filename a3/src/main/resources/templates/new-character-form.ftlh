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

<body class="add-character-body">
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


    <div class="content">
        <h1>Add a new CareBear!</h1>
        <p>Use the form below to add a new CareBear to the website. Please fill out all the fields with accurate
            information about the CareBear you want to add.</p>
        <form class="pure-form pure-form-stacked" action="/characters/create" method="POST">
            <fieldset class="pure-group">
                <input type="text" name="name" class="pure-input-1-2" placeholder="CareBear Name:" />
                <input type="text" name="imageUrl" class="pure-input-1-2" placeholder="Image URL:" />
                <textarea name="description" class="pure-input-1" placeholder="Short description"></textarea>
            </fieldset>
            <fieldset class="pure-group">

                <input type="text" name="bellyBadge" class="pure-input-1-2" placeholder="Belly Badge: " />
                <input type="text" name="specialAbility" class="pure-input-1-2" placeholder="Special Ability:" />
                <input type="text" name="favFood" class="pure-input-1-2" placeholder="Favorite Food:" />
                <input type="text" name="funFact" class="pure-input-1-2" placeholder="FUN FACT:" />
            </fieldset>

            <button type="submit" class="pure-button pure-button-primary">Add Character</button>
        </form>
    </div>

</body>

</html>