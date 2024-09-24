<?php
// Include the database configuration and model
include_once '../config/database.php';
include_once '../models/PrimitiveToken.php';

// Instantiate the database and PrimitiveToken object
$database = new Database();
$db = $database->getConnection();

$primitiveToken = new PrimitiveToken($db);

// Retrieve all primitive tokens
$stmt = $primitiveToken->read();
$tokens = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>

<h2>View Primitive Tokens</h2>

<!-- Display the Primitive Tokens in a Table -->
<table border="1">
    <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Color</th>
            <th>Value</th>
            <th>Hex Value</th>
            <th>Opacity</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($tokens as $token) : ?>
            <tr>
                <td><?php echo htmlspecialchars($token['id']); ?></td>
                <td><?php echo htmlspecialchars($token['name_reference']); ?></td>
                <td><?php echo htmlspecialchars($token['color']); ?></td>
                <td><?php echo htmlspecialchars($token['value']); ?></td>
                <td><?php echo htmlspecialchars($token['hex_value']); ?></td>
                <td><?php echo htmlspecialchars($token['opacity']); ?></td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>
