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
<h1>Eksperymenty</h1>
    <table>
        <tr>
            <th>Osoba odpowiedzialna</th>
            <th>Nazwa </th>
            <th>Data rozpoczęcia</th>
            <th>Data Zakończenia</th>
            <th>Opis</th>
            <th>Rezultat</th>
        </tr>
        <?php skrypt(); ?>
    </table>
<div id="prz" class="text-center">
  <button class="center-button" onclick="pokazTabele('tabelaProbki')">Próbki</button>
  <div id="tabelaContainerProbki"></div>
</div>

<div id="sprzet" class="text-center">
  <button class="center-button" onclick="pokazTabele('tabelaSprzet')">Sprzęt</button>
  <div id="tabelaContainerSprzet"></div>
</div>
<script>

function pokazTabele(tabelaId) {
  var tabelaContainer = document.getElementById(tabelaId);

  if (tabelaContainer.style.display === 'none') {
    tabelaContainer.style.display = 'block'; // Wyświetlanie tabeli
  } else {
    tabelaContainer.style.display = 'none'; // Ukrywanie tabeli
  }
}

</script>

</body>
</html>

<?php
function skrypt(){
    $conn = mysqli_connect("localhost", "root", "", "mbdo");

    $sql = "SELECT user.surname AS Responsible,experiments.start_date AS start, experiments.finish_date AS finish, experiments.experiment_details AS details, experiments.name AS name ,experiments.result AS result FROM user 
    JOIN projects ON (user.id_user=projects.id_chef)
    JOIN experiments ON (projects.id_projects=experiments.id_projects)";

    $res = mysqli_query($conn, $sql);

    while($row = mysqli_fetch_assoc($res)){
        echo "<tr>";
        echo "<td>".$row["Responsible"]."</td>";
        echo "<td>".$row["name"]."</td>";
        echo "<td>".$row["start"]."</td>";
        echo "<td>".$row["finish"]."</td>";
        echo "<td>".$row["details"]."</td>";
        echo "<td>".$row["result"]."</td>";
        echo "</tr>";
    }
}

function skryptProbki() {
    $conn = mysqli_connect("localhost", "root", "", "mbdo");
  
    $sql = "SELECT experiments.name, samples.collection_date, samples.temp, samples_lista.details, samples_lista.recommended_storage FROM experiments 
      JOIN samples ON (experiments.id_experiments=samples.id_experiments)
      JOIN samples_lista ON (samples.id_samples_list=samples_lista.id_samples_list)";
  
    $res = mysqli_query($conn, $sql);
  
    echo '<table id="tabelaProbki" style="display: none;">'; // Ukrywanie tabeli na początku
    echo '<tr>
            <th>Nazwa eksperymentu</th>
            <th>Data zbierania próbki</th>
            <th>Temperatura</th>
            <th>Detale</th>
            <th>Zalecane przechowywanie</th>
          </tr>';
  
    while ($row = mysqli_fetch_assoc($res)) {
      echo '<tr>';
      echo '<td>' . $row["name"] . '</td>';
      echo '<td>' . $row["collection_date"] . '</td>';
      echo '<td>' . $row["temp"] . '</td>';
      echo '<td>' . $row["details"] . '</td>';
      echo '<td>' . $row["recommended_storage"] . '</td>';
      echo '</tr>';
    }
  
    echo '</table>';
  }
  
  function skryptSprzet() {
    $conn = mysqli_connect("localhost", "root", "", "mbdo");
  
    $sql = "SELECT user.surname, equipment.name, equipment.production_year, equipment.producer, methods.naame, methods.procedures FROM equipment 
      JOIN user ON (equipment.id_user = user.id_user)
      JOIN equipment_methods ON (equipment.id_equipment = equipment_methods.id_equipment)
      JOIN methods ON (equipment_methods.id_methods = methods.id_methods)";
  
    $res = mysqli_query($conn, $sql);
  
    echo '<table id="tabelaSprzet" style="display: none;">';
    echo '<tr>
            <th>Nazwisko</th>
            <th>Nazwa sprzętu</th>
            <th>Rok produkcji</th>
            <th>Producent</th>
            <th>Nazwa metody</th>
            <th>Procedury</th>
          </tr>';
  
    while ($row = mysqli_fetch_assoc($res)) {
      echo '<tr>';
      echo '<td>' . $row["surname"] . '</td>';
      echo '<td>' . $row["name"] . '</td>';
      echo '<td>' . $row["production_year"] . '</td>';
      echo '<td>' . $row["producer"] . '</td>';
      echo '<td>' . $row["name"] . '</td>';
      echo '<td>' . $row["procedures"] . '</td>';
      echo '</tr>';
    }
  
    echo '</table>';
}
  
  skryptProbki();
  skryptSprzet();
?>

