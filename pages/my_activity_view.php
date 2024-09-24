<?php
// Include the necessary files and models
include_once '../config/database.php';
include_once '../models/ActivityLog.php';
include_once '../models/User.php';

// Instantiate the database and models
$database = new Database();
$db = $database->getConnection();

$activityLog = new ActivityLog($db);
$user = new User($db);

// Retrieve the user ID for Charlie Brown based on his email
$charlieEmail = 'charlie.brown@example.com'; 
$user->email = $charlieEmail;
$user->readByEmail(); 

if ($user->id !== null) {
    // Retrieve activity logs only for Charlie Brown using his dynamically retrieved ID
    $stmt = $activityLog->readByUser($user->id);
    $logs = $stmt->fetchAll(PDO::FETCH_ASSOC);
} else {
    $logs = [];
    echo "<p>User not found.</p>";
}

?>

<h2>My Activity</h2>

<!-- Display the Activity Logs in a Table -->
<table border="1">
    <thead>
        <tr>
            <th>ID</th>
            <th>Token Type</th>
            <th>Token ID</th>
            <th>Action</th>
            <th>Date</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($logs as $log) : ?>
            <tr>
                <td><?php echo htmlspecialchars($log['id']); ?></td>
                <td><?php echo htmlspecialchars($log['token_type']); ?></td>
                <td><?php echo htmlspecialchars($log['token_id']); ?></td>
                <td><?php echo htmlspecialchars($log['action']); ?></td>
                <td><?php echo htmlspecialchars($log['created_at']); ?></td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>
