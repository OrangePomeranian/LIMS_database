<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Projekty zrealizowane</title>
    <link rel="stylesheet" href="styl1.css">    
</head>
<body>
<div id="menu">
    <a class="strona" href="strona.html">Główna</a>
    <a class="projekty" href="Projekty.php">Projekty zrealizowane</a>
    <a class="eksperymenty" href="Eksperymenty.php">Eksperymenty</a>
    <a class="dodaj" href="Dodaj projekt.html">Dodaj Projekt</a>
</div>
<div id="log">
    <a href="glowna.html">Wyloguj się</a>
</div>
<div id="glowna">
<h1>Zrealizowane projekty</h1>
    <table>
        <tr>
            <th>Osoba odpowiedzialna</th>
            <th>Nazwa </th>
            <th>Data rozpoczęcia</th>
            <th>Data Zakończenia</th>
            <th>Opis</th>
        </tr>
        <?php skrypt(); ?>
    </table>
</div>
<footer>
    <h3>Strone przygotowali: Daria Plewa, Julia Piasecka, Jakub Niedziołka</h3>
</footer>
</body>

</html>

<?php
function skrypt(){
    $conn = mysqli_connect("localhost", "root", "", "mbdo");

    $sql = "SELECT user.surname as Responsible, experiments.start_date as start, experiments.finish_date as finish ,projects.name as name, projects.project_details as details FROM samples 
    JOIN experiments ON (samples.id_experiments=experiments.id_experiments) 
    JOIN projects ON (experiments.id_projects=projects.id_projects) 
    JOIN project_workers ON (projects.id_projects=project_workers.id_projects)
    JOIN user ON (project_workers.id_user=user.id_user)";

    $res = mysqli_query($conn, $sql);

    while($row = mysqli_fetch_assoc($res)){
        echo "<tr>";
        echo "<td>".$row["Responsible"]."</td>";
        echo "<td>".$row["name"]."</td>";
        echo "<td>".$row["start"]."</td>";
        echo "<td>".$row["finish"]."</td>";
        echo "<td>".$row["details"]."</td>";
        echo "</tr>";
    }
}

?>