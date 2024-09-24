<?php
// Include the database configuration and model
include_once '../config/database.php';
include_once '../models/ActivityLog.php';

// Instantiate the database and ActivityLog object
$database = new Database();
$db = $database->getConnection();

$activityLog = new ActivityLog($db);

// Retrieve all activity logs
$stmt = $activityLog->read();
$logs = $stmt->fetchAll(PDO::FETCH_ASSOC);

?>

<h2>View Activity Log</h2>

<!-- Display the Activity Logs in a Table -->
<table border="1">
    <thead>
        <tr>
            <th>ID</th>
            <th>User</th>
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
                <td><?php echo htmlspecialchars($log['user_name']); ?></td>
                <td><?php echo htmlspecialchars($log['token_type']); ?></td>
                <td><?php echo htmlspecialchars($log['token_id']); ?></td>
                <td><?php echo htmlspecialchars($log['action']); ?></td>
                <td><?php echo htmlspecialchars($log['created_at']); ?></td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>
