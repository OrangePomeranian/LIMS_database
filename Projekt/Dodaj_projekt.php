<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $conn = mysqli_connect("localhost", "root", "", "mbdo");

    $responsible = $_POST['responsible'];
    $name = $_POST['name'];
    $start = $_POST['start'];
    $finish = $_POST['finish'];
    $details = $_POST['details'];

    $sql = "INSERT INTO projects (name, project_details) VALUES ('$name', '$details')";
    $result = mysqli_query($conn, $sql);

    if ($result) {
        $projectId = mysqli_insert_id($conn);
        $experimentSql = "INSERT INTO experiments (start_date, finish_date, id_projects) VALUES ('$start', '$finish', '$projectId')";
        $experimentResult = mysqli_query($conn, $experimentSql);

        if ($experimentResult) {
            $experimentId = mysqli_insert_id($conn);
            $workerSql = "INSERT INTO project_workers (id_user, id_projects) VALUES ('$responsible', '$projectId')";
            $workerResult = mysqli_query($conn, $workerSql);

            if ($workerResult) {
                echo "Projekt został dodany.";
            } else {
                echo "Wystąpił błąd podczas dodawania pracownika projektu.";
            }
        } else {
            echo "Wystąpił błąd podczas dodawania eksperymentu.";
        }
    } else {
        echo "Wystąpił błąd podczas dodawania projektu.";
    }

    mysqli_close($conn);
}
?>
