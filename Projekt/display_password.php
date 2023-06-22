<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="index.css">
    <title>Display Password</title>
</head>
<body>
    <section>
        <div class="form-box">
            <div class="form-value">
                <h2>Your Password</h2>
                <div class="password-display password-big">
                    <?php
                        if (isset($_GET['password'])) {
                            echo $_GET['password'];
                        } else {
                            echo "No password to display";
                        }
                    ?>
                </div>
                <button onclick="location.href='glowna.html'">Go back to login</button>
            </div>
        </div>
    </section>
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>
</html>
