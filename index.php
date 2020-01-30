<!DOCTYPE html>
<html>
    <head>
        <title>Formulaire FAQ</title>
    </head>
    <body>
        <h1>FAQ</h1>
        <form action="index.php" method="post">
            <select name='selected_question'>
                <option>Choisissez une question</option>
                <?php
                $bdd = new PDO('mysql:host=localhost;dbname=faq;charset=utf8', 'root', '');
                // récupération du contenu de la table faq
                $quest_query = $bdd->query("SELECT * FROM faq_alq");
                while ($question = $quest_query->fetch())
                {
                    echo "<option>";
                    echo $question['questions'];
                    echo "</option>";
                }
                $quest_query->closeCursor(); //Termine le traitement de la requête
                ?>
            </select>
            <input type="submit" value="Valider" />
        </form>
        <br />
        <?php
            if(isset($_POST['selected_question']))
            {
                $bdd = new PDO('mysql:host=localhost;dbname=faq;charset=utf8', 'root', '');
                // récupération du contenu de la table faq
                $resp_query = $bdd->query('SELECT * FROM faq_alq WHERE questions="' . $_POST['selected_question'] . '"');
                $reponse = $resp_query->fetch();
                echo '<textarea name="reponses" rows="2" cols="50" readonly>';
                echo $reponse['reponses'];
                echo '</textarea>';
                $resp_query->closeCursor();
            }  
        ?>

    </body>
</html>