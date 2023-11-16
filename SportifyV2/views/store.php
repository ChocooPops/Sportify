<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Views/css/storestyle.css">
    <title>Document</title>
</head>
<body>
    <header>
        <a id="accueil" href="actu.html"><img src="Views/images/logo.png"></a>
        <a id="actu" href="">Actu</a>
        <a id="prono" href="">Prono</a>
        <a id="boutique" href="">Boutique</a>
        <a id="deconnexion" href="">Déconnexion</a>
    </header>

    <section id="corps">
        <aside id="categorie">
            <form>
                <fieldset>
                    <legend>Catégories</legend>
                    <input type="checkbox" name="categorie" value="tshirt">T-shirt<br>
                    <input type="checkbox" name="categorie" value="pull">Pull<br>
                    <input type="checkbox" name="categorie" value="casquette">Casquette<br>
                    <input type="checkbox" name="categorie" value="short">Short<br>
                    <input type="checkbox" name="categorie" value="pantalon">Pantalon<br>
                    <input type="checkbox" name="categorie" value="chaussure">Chaussure<br>
                    <input type="submit" value="Filtrer">
                </fieldset>
            </form>
        </aside>

        <section id="articles">
        </section>
        
        <aside id="options">
        </aside>
    </section>
</body>
</html>