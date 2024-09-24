<?php
$view = isset($_GET['view']) ? $_GET['view'] : 'home';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="../assets/styles.css">
</head>
<body>
    <div class="admin-dashboard">
        <h1>Admin Dashboard</h1>
        <div>
            <h2>Welcome, Product Person!</h2>
            <p>Select an option from the navigation to get started.</p>
        </div>
        <nav class="admin-nav">
            <ul>
                <li><a href="/chrisayala_finalproject/pages/admin_dashboard.php?view=primitive" class="btn">Manage Primitive Tokens</a></li>
                <li><a href="/chrisayala_finalproject/pages/admin_dashboard.php?view=semantic" class="btn">Manage Semantic Tokens</a></li>
                <li><a href="/chrisayala_finalproject/pages/admin_dashboard.php?view=users" class="btn">Manage Users</a></li>
                <li><a href="/chrisayala_finalproject/pages/admin_dashboard.php?view=log" class="btn">View Activity Log</a></li>
            </ul>
        </nav>
        <div class="admin-content">
            <?php
            switch ($view) {
                case 'primitive':
                    include 'primitive_tokens_view.php';
                    break;
                case 'semantic':
                    include 'semantic_tokens_view.php';
                    break;
                case 'users':
                    include 'users_management_view.php';
                    break;
                case 'log':
                    include 'activity_log_view.php';
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
