<?php
class header{  


        static function header(){
                echo '<header>
                <a id="accueil" href="/public/actu"><img src="../public/images/logo.png"></a>
                <a id="actu" href="/public/actu">Actu</a>
                <a id="prono" href="/public/pronostique">Prono</a>
                <a id="boutique" href="/public/boutique">Boutique</a>
                <a id="jeu" href="../public/js/jeu/SportyJump/Menu.html">Mini-Jeu</a>
                <a id="deconnexion" href="/public/deconnexion">Déconnexion</a>
                </header>';
        }


}
