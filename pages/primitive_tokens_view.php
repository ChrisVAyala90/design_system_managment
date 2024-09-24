<?php
// Include the database configuration and model
include_once '../config/database.php';
include_once '../models/PrimitiveToken.php';

// Instantiate the database and PrimitiveToken object
$database = new Database();
$db = $database->getConnection();

$primitiveToken = new PrimitiveToken($db);

// Handle form submissions for creating, editing, or deleting tokens
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST['create'])) {
        $primitiveToken->name_reference = $_POST['name_reference'];
        $primitiveToken->color = $_POST['color'];
        $primitiveToken->value = $_POST['value'];
        $primitiveToken->hex_value = $_POST['hex_value'];
        $primitiveToken->opacity = $_POST['opacity'];
        $primitiveToken->create();
    } elseif (isset($_POST['edit'])) {
        $primitiveToken->id = $_POST['id'];
        $primitiveToken->name_reference = $_POST['name_reference'];
        $primitiveToken->color = $_POST['color'];
        $primitiveToken->value = $_POST['value'];
        $primitiveToken->hex_value = $_POST['hex_value'];
        $primitiveToken->opacity = $_POST['opacity'];
        $primitiveToken->update();
    } elseif (isset($_POST['delete'])) {
        $primitiveToken->id = $_POST['id'];
        $primitiveToken->delete();
    }
}

// Retrieve all primitive tokens
$stmt = $primitiveToken->read();
$tokens = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>

<h2>Manage Primitive Tokens</h2>

<!-- Form to Create a New Primitive Token -->
<form method="POST" action="">
    <h3>Create New Token</h3>
    <label for="name">Name:</label>
    <input type="text" name="name_reference" required>
    <label for="color">Color:</label>
    <input type="text" name="color" required>
    <label for="value">Value:</label>
    <input type="text" name="value" required>
    <label for="hex_value">Hex Value:</label>
    <input type="text" name="hex_value" required>
    <label for="opacity">Opacity:</label>
    <input type="number" step="0.01" name="opacity" required>
    <input type="submit" name="create" value="Create Token">
</form>

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
            <th>Actions</th>
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
                <td>
                    <!-- Form to Edit a Token -->
                    <form method="POST" action="" style="display:inline;">
                        <input type="hidden" name="id" value="<?php echo $token['id']; ?>">
                        <input type="text" name="name_reference" value="<?php echo htmlspecialchars($token['name_reference']); ?>" required>
                        <input type="text" name="color" value="<?php echo htmlspecialchars($token['color']); ?>" required>
                        <input type="text" name="value" value="<?php echo htmlspecialchars($token['value']); ?>" required>
                        <input type="text" name="hex_value" value="<?php echo htmlspecialchars($token['hex_value']); ?>" required>
                        <input type="number" step="0.01" name="opacity" value="<?php echo htmlspecialchars($token['opacity']); ?>" required>
                        <input type="submit" name="edit" value="Edit">
                    </form>

                    <!-- Form to Delete a Token -->
                    <form method="POST" action="" style="display:inline;">
                        <input type="hidden" name="id" value="<?php echo $token['id']; ?>">
                        <input type="submit" name="delete" value="Delete">
                    </form>
                </td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>
