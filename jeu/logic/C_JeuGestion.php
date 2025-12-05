<?php

$results = [];
class roomResult {
    public ?bool $solved = false;
    public int $independencyMod = 0;
    public int $behaviourMod = 0;
    public int $ecologyMod = 0;
}

if ((isset($_GET["reset"]) && $_GET["reset"] == true) || (!isset($_COOKIE["resultsCookie"]) || empty($_COOKIE["resultsCookie"]) || !is_object(json_decode($_COOKIE["resultsCookie"])))) {
    setcookie("resultsCookie", "{}", path: "/");
    $_COOKIE["resultsCookie"] = "{}";
}

function calculateScores() {
    global $independencyScore;
    $independencyScore = 8 + ((100 - 8) / 4) * 3;

    global $behaviourScore;
    $behaviourScore = 8 + ((100 - 8) / 6);

    global $ecoScore;
    $ecoScore = 8;

    if (isset($_COOKIE["resultsCookie"]) && !empty($_COOKIE["resultsCookie"]) && is_object(json_decode($_COOKIE["resultsCookie"]))) {
        $cookieValue = json_decode($_COOKIE["resultsCookie"], true);
        foreach ($cookieValue as $roomCookie) {
            if ($roomCookie["independencyMod"] > 0) {
                $independencyScore = $independencyScore + ((100 - 8) / 4);
            } else if ($roomCookie["independencyMod"] < 0) {
                $independencyScore = $independencyScore - ((100 - 8) / 4);
            }

            if ($roomCookie["behaviourMod"] > 0) {
                $behaviourScore = $behaviourScore + ((100 - 8) / 6);
            } else if ($roomCookie["behaviourMod"] < 0) {
                $behaviourScore = $behaviourScore - ((100 - 8) / 6);
            }

            if ($roomCookie["ecologyMod"] > 0) {
                $ecoScore = $ecoScore + ((100 - 8) / 3);
            } else if ($roomCookie["ecologyMod"] < 0) {
                $ecoScore = $ecoScore - ((100 - 8) / 3);
            }
        }
    }

}

function solvedCount() {
    if (isset($_COOKIE["resultsCookie"]) && !empty($_COOKIE["resultsCookie"]) && is_object(json_decode($_COOKIE["resultsCookie"]))) {
        $cookieValue = json_decode($_COOKIE["resultsCookie"], true);
        $solvedCount = 0;
        foreach ($cookieValue as $roomCookie) {
            if ($roomCookie["solved"] == true) $solvedCount++;
        }
        return $solvedCount;
    } else {
        return 0;
    }
}

function isSolved(string $roomId) {
    if (isset($_COOKIE["resultsCookie"]) && !empty($_COOKIE["resultsCookie"]) && is_object(json_decode($_COOKIE["resultsCookie"]))) {
        $cookieValue = json_decode($_COOKIE["resultsCookie"], true);
        return !isset($cookieValue[$roomId]) ? false : $cookieValue[$roomId]["solved"];
    } else {
        return false;
    }
}

function salleClasse($choix){
    switch($choix){
        case 1:
            $rep_salleClasse = "Incorrect. Windows est un système propriétaire, dépendant d’un éditeur unique. Ce choix ne permet pas de réduire les dépendances aux Big Tech.";
            break;

        case 2:
            $rep_salleClasse = "Bonne réponse ! Debian est entièrement open source et permet de prolonger la vie du matériel tout en favorisant l’autonomie numérique.";
            break;

        case 3:
            $rep_salleClasse = "Exact ! Ubuntu est un système libre basé sur Debian, adapté pour réduire l’obsolescence programmée et renforcer la résilience numérique.";
            break;

        case 4:
            $rep_salleClasse = "Mauvais choix. MacOS est propriétaire et fortement lié à un écosystème fermé, ce qui augmente la dépendance technologique.";
            break;

        default:
            $rep_salleClasse = "Choix invalide. Merci de sélectionner un numéro correspondant à un système libre.";
            break;
    }

    return $rep_salleClasse;
}

function hall($choix){
    switch($choix){
        case 1:
            $rep_hall = "Mauvais choix. Acheter un téléphone neuf augmente la demande de minerais rares "
                      . "(comme le coltan ou les terres rares), dont l'extraction a un fort impact social et environnemental. "
                      . "Mieux vaut privilégier la réparation ou le reconditionné.";
            break;

        case 2:
            $rep_hall = "Bonne réponse ! Le reconditionné permet de limiter l’extraction de nouveaux minerais "
                      . "et de prolonger la durée de vie d’appareils encore utilisables. C’est une solution durable et responsable.";
            break;

        case 3:
            $rep_hall = "Excellent choix ! Réparer le téléphone réduit les déchets électroniques et évite la consommation "
                      . "inutile de ressources naturelles. C’est l’option la plus durable.";
            break;

        default:
            $rep_hall = "Choix invalide. Merci de sélectionner une option.";
            break;
    }

    return $rep_hall;
}

function servers_room($choix){
    switch($choix){
        case 1:
            $rep_servers = "Mauvais choix. Un cloud non européen expose les données personnelles à des lois de surveillance étrangère et à une conservation prolongée hors de tout contrôle.";
            break;

        case 2:
            $rep_servers = "Bonne réponse ! Le serveur interne permet d'assurer un contrôle local, de maîtriser la durée de conservation et de limiter les accès.";
            break;

        case 3:
            $rep_servers = "Incorrect. Un disque externe non chiffré peut être perdu ou consulté sans autorisation, causant une fuite grave de données personnelles.";
            break;

        case 4:
            $rep_servers = "Bonne réponse ! Un cloud libre européen garantit transparence, respect du RGPD et maîtrise de la conservation des données.";
            break;

        default:
            $rep_servers = "Choix invalide. Merci de sélectionner une option.";
            break;
    }

    return $rep_servers;
}

function unused_room($choix){
    switch($choix){
        case 1:
            $rep_unused = "Possibilité envisageable, mais pas idéale. La pièce finirait probablement comme un simple lieu d'entassement, "
                        . "sans valoriser le matériel ni prolonger sa durée de vie. Cela ne réduit ni les déchets électroniques, "
                        . "ni les dépendances technologiques.";
            break;

        case 2:
            $rep_unused = "Idée sympathique, mais peu pertinente ici. Un espace de jeux vidéo demande du matériel énergivore "
                        . "et n'apporte aucune solution au cycle de vie des appareils. Cela ne favorise pas une démarche durable.";
            break;

        case 3:
            $rep_unused = "Excellent choix ! Un club de réparation permet de prolonger la vie des appareils, de réduire les déchets "
                        . "et de transmettre des compétences techniques. C'est l'usage le plus responsable et durable pour cette pièce.";
            break;

        default:
            $rep_unused = "Choix invalide. Merci de sélectionner une option.";
            break;
    }

    return $rep_unused;
}

function formation_room($choix){
    switch($choix){
        case 1:
            $rep_formation = "Excellent choix ! Une formation à la sobriété numérique et aux logiciels libres "
                            . "renforce l'autonomie, réduit les dépendances et encourage des pratiques durables.";
            break;

        case 2:
            $rep_formation = "Possibilité crédible, mais peu pertinente. Les réseaux sociaux renforcent la dépendance "
                            . "aux plateformes centralisées et ne favorisent pas une démarche numérique responsable.";
            break;

        case 3:
            $rep_formation = "Formation utile dans d'autres contextes, mais inadaptée ici. Elle encourage le renouvellement "
                            . "rapide du matériel au lieu de promouvoir le réemploi et la durabilité.";
            break;

        default:
            $rep_formation = "Choix invalide. Merci de sélectionner une option.";
            break;
    }

    return $rep_formation;
}

function entrance($choix){
    switch($choix){
        case 1:
            $rep_entrance = "Mauvais choix. La reconnaissance faciale implique des données biométriques sensibles "
                           . "et dépend de services externes, ce qui pose de sérieux problèmes de confidentialité.";
            break;

        case 2:
            $rep_entrance = "Excellent choix ! Un badge NFC interne permet un contrôle local des données, "
                           . "sans dépendance à une entreprise externe et en respectant la vie privée.";
            break;

        case 3:
            $rep_entrance = "Choix possible mais problématique. Utiliser un compte Google ou Apple crée une dépendance "
                           . "à une Big Tech et expose des données d'identité et d'usage.";
            break;

        default:
            $rep_entrance = "Choix invalide. Merci de sélectionner une option.";
            break;
    }

    return $rep_entrance;
}

function infirmary($choix){
    switch($choix){
        case 1:
            $rep_infirmary = "Mauvais choix. Un antivirus payant ne résout pas forcément le problème et crée une dépendance logicielle inutile.";
            break;

        case 2:
            $rep_infirmary = "Bonne réponse ! Le message 'non protégé' provient souvent du pare-feu ou des mises à jour. "
                            . "Réactiver les protections intégrées et mettre le système à jour suffit généralement.";
            break;

        case 3:
            $rep_infirmary = "Très mauvais choix. Les 'super nettoyeurs' sont souvent intrusifs ou indésirables et peuvent aggraver la situation.";
            break;

        default:
            $rep_infirmary = "Choix invalide. Merci de sélectionner une option.";
            break;
    }

    return $rep_infirmary;
}

function question ($id) {
    switch($id){
        case 'classroom':
            return "On installe un nouveau poste pour les élèves. Quel système d'exploitation est le plus adapté pour renforcer l'autonomie numérique de l'établissement ?";
        case 'hall':
            return "Vous êtes professeur et un élève vous demande conseil car son téléphone est tombé et ne démarre plus. Que lui conseillez-vous ?";
        case 'servers_room':
            return "Le campus souhaite stocker des données concernant les utilisateurs. Quelle solution est la meilleure ?";
        case 'unused_room':
            return "À quoi pourrait servir cette pièce inutilisée ?";
        case 'formation_room':
            return "Quel type de formation pourrions-nous organiser dans cette salle ?";
        case 'entrance':
            return "Quel système d'identification doit être utilisé pour entrer dans le campus ?";
        case 'infirmary':
            return "L'ordinateur de l'infirmière affiche \"vous n'êtes pas protégée contre les virus\". Que faut-il faire ?";
        default:
            return "Question inconnue.";
    }
}

function choix ($id) {
    switch($id){
        case 'classroom':
            return [
                "1" => "Windows",
                "2" => "Debian",
                "3" => "Ubuntu",
                "4" => "MacOS"
            ];
        case 'hall':
            return [
                "1" => "Acheter un téléphone neuf",
                "2" => "Acheter un téléphone reconditionné",
                "3" => "Faire réparer le téléphone"
            ];
        case 'servers_room':
            return [
                "1" => "Cloud américain grand public",
                "2" => "Serveur interne de l'établissement",
                "3" => "Disque externe non chiffré",
                "4" => "Cloud libre et européen"
            ];
        case 'unused_room':
            return [
                "1" => "Salle de stockage de vieux matériels",
                "2" => "Espace de jeux vidéo",
                "3" => "Club de réparation / atelier de reconditionnement"
            ];
        case 'formation_room':
            return [
                "1" => "Formation à la sobriété numérique et aux logiciels libres",
                "2" => "Formation à l'utilisation avancée des réseaux sociaux",
                "3" => "Formation pour optimiser l'achat de nouveaux équipements"
            ];
        case 'entrance':
            return [
                "1" => "Reconnaissance faciale via un service externe",
                "2" => "Badge NFC interne au lycée",
                "3" => "Connexion avec un compte Google ou Apple"
            ];
        case 'infirmary':
            return [
                "1" => "Installer un antivirus propriétaire payant",
                "2" => "Vérifier les mises à jour et réactiver le pare-feu intégré",
                "3" => "Télécharger un 'super nettoyeur gratuit' trouvé en ligne"
            ];
        default:
            return [];
    }
}

function verifyResponse($id, $choice) {
    switch($id){
        case 'classroom':
            $correctChoices = [2, 3];
            break;
        case 'hall':
            $correctChoices = [2, 3];
            break;
        case 'servers_room':
            $correctChoices = [2, 4];
            break;
        case 'unused_room':
            $correctChoices = [3];
            break;
        case 'formation_room':
            $correctChoices = [1];
            break;
        case 'entrance':
            $correctChoices = [2];
            break;
        case 'infirmary':
            $correctChoices = [2];
            break;
    }
    return in_array($choice, $correctChoices);
}

function getResponse($id, $choice) {
    switch($id){
        case 'classroom':
            return salleClasse($choice);
        case 'hall':
            return hall($choice);
        case 'servers_room':
            return servers_room($choice);
        case 'unused_room':
            return unused_room($choice);
        case 'formation_room':
            return formation_room($choice);
        case 'entrance':
            return entrance($choice);
        case 'infirmary':
            return infirmary($choice);
        default:
            return "Question inconnue.";
    }
}

function getIndependencyImpact($id, $choice) {
    switch($id){
        case 'classroom':
            switch ($choice) {
                case "-1": return 0;
                case "1": case "4": return -1;
                default: return 1;
            };
            break;
        case 'hall':
            return 0;
            break;
        case 'servers_room':
            return 0;
            break;
        case 'unused_room':
            return 0;
            break;
        case 'formation_room':
            switch ($choice) {
                case "2": return -1;
                default: return 0;
            };
            break;
        case 'entrance':
            switch ($choice) {
                case "3": return -1;
                default: return 0;
            };
            break;
        case 'infirmary':
            switch ($choice) {
                case "1": return -1;
                default: return 0;
            };
            break;
    }
    return 0;
}
function getBehaviourImpact($id, $choice) {
    switch($id){
        case 'classroom':
            return 0;
            break;
        case 'hall':
            switch ($choice) {
                case "2": return 1;
                default: return 0;
            };
            break;
        case 'servers_room':
            switch ($choice) {
                case "-1": return 0;
                case "2": case "4": return 1;
                default: return -1;
            };
            break;
        case 'unused_room':
            switch ($choice) {
                case "3": return 1;
                default: return 0;
            };
            break;
        case 'formation_room':
            switch ($choice) {
                case "-1": case "2": return 0;
                case "1": return 1;
                default: return -1;
            };
            break;
        case 'entrance':
            switch ($choice) {
                case "-1": return 0;
                case "2": return 1;
                default: return -1;
            };
            break;
        case 'infirmary':
            switch ($choice) {
                case "3": return -1;
                default: return 0;
            };
            break;
    }
    return 0;
}
function getEcologyImpact($id, $choice) {
    switch($id){
        case 'classroom':
            return 0;
            break;
        case 'hall':
            switch ($choice) {
                case "1": return -1;
                case "2": case "3": return 1;
                default: return 0;
            };
            break;
        case 'servers_room':
            return 0;
            break;
        case 'unused_room':
            switch ($choice) {
                case "3": return 1;
                case "2": return -1;
                default: return 0;
            };
            break;
        case 'formation_room':
            switch ($choice) {
                case "3": return -1;
                case "1": return 1;
                default: return 0;
            };
            break;
        case 'entrance':
            return 0;
            break;
        case 'infirmary':
            return 0;
            break;
    }
    return 0;
}
?>