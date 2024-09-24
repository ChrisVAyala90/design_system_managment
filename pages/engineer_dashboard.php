<?php
$view = isset($_GET['view']) ? $_GET['view'] : 'home';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Engineer Dashboard</title>
    <link rel="stylesheet" href="../assets/styles.css">
</head>
<body>
    <div class="engineer-dashboard">
        <h1>Engineer Dashboard</h1>
        <div>
            <h2>Welcome, Charlie Brown!</h2>
            <p>Select an option from the navigation to get started.</p>
            <p>You can manage your activity, view and manage tokens, and update your account information using the navigation above.</p>
        </div>
        <nav class="engineer-nav">
            <ul>
                <li><a href="/chrisayala_finalproject/pages/engineer_dashboard.php?view=my_activity" class="btn">My Activity</a></li>
                <li><a href="/chrisayala_finalproject/pages/engineer_dashboard.php?view=manage_account" class="btn">Manage My Account</a></li>
                <li><a href="/chrisayala_finalproject/pages/engineer_dashboard.php?view=semantic" class="btn">View Semantic Tokens</a></li>
                <li><a href="/chrisayala_finalproject/pages/engineer_dashboard.php?view=primitive" class="btn">View Primitive Tokens</a></li>
            </ul>
        </nav>
        <div class="engineer-content">
        <div>
        </div>
            <?php
            switch ($view) {
                case 'my_activity':
                    include 'my_activity_view.php';
                    break;
                case 'manage_account':
                    include 'manage_account_view.php';
                    break;
                case 'semantic':
                    include 'semantic_tokens_eng.php';
                    break;
                case 'primitive':
                    include 'primitive_tokens_eng.php';
                    break;
                case 'home':
                default:
                    ?>
                    <?php
                    break;
            }
            ?>
        </div>
    </div>
</body>
</html>
