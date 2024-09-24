<?php
// Include the database configuration and models
include_once '../config/database.php';
include_once '../models/SemanticToken.php';
include_once '../models/PrimitiveToken.php';

// Instantiate the database and SemanticToken object
$database = new Database();
$db = $database->getConnection();

$semanticToken = new SemanticToken($db);
$primitiveToken = new PrimitiveToken($db);

// Handle form submissions for creating, editing, or deleting tokens
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST['create'])) {
        $semanticToken->name = $_POST['name'];
        $semanticToken->primitive_token_id = $_POST['primitive_token_id'];
        $semanticToken->context = $_POST['context'];
        $semanticToken->is_live = isset($_POST['is_live']) ? 1 : 0;
        $semanticToken->create();
    } elseif (isset($_POST['edit'])) {
        $semanticToken->id = $_POST['id'];
        $semanticToken->name = $_POST['name'];
        $semanticToken->primitive_token_id = $_POST['primitive_token_id'];
        $semanticToken->context = $_POST['context'];
        $semanticToken->is_live = isset($_POST['is_live']) ? 1 : 0;
        $semanticToken->update();
    } elseif (isset($_POST['delete'])) {
        $semanticToken->id = $_POST['id'];
        $semanticToken->delete();
    }
}

// Retrieve all semantic tokens
$stmt = $semanticToken->read();
$tokens = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Retrieve all primitive tokens for selection in the form
$primitiveStmt = $primitiveToken->read();
$primitiveTokens = $primitiveStmt->fetchAll(PDO::FETCH_ASSOC);
?>

<h2>Manage Semantic Tokens</h2>

<!-- Form to Create a New Semantic Token -->
<form method="POST" action="">
    <h3>Create New Token</h3>
    <label for="name">Name:</label>
    <input type="text" name="name" required>
    <label for="primitive_token_id">Primitive Token:</label>
    <select name="primitive_token_id" required>
        <?php foreach ($primitiveTokens as $pToken) : ?>
            <option value="<?php echo $pToken['id']; ?>"><?php echo htmlspecialchars($pToken['name_reference']); ?></option>
        <?php endforeach; ?>
    </select>
    <label for="context">Context:</label>
    <input type="text" name="context" required>
    <label for="is_live">Is Live:</label>
    <input type="checkbox" name="is_live">
    <input type="submit" name="create" value="Create Token">
</form>

<!-- Display the Semantic Tokens in a Table -->
<table border="1">
    <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Primitive Token</th>
            <th>Context</th>
            <th>Is Live</th>
            <th>Last Updated</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($tokens as $token) : ?>
            <tr>
                <td><?php echo htmlspecialchars($token['id']); ?></td>
                <td><?php echo htmlspecialchars($token['name']); ?></td>
                <td>
                    <a href="primitive_token_details.php?id=<?php echo $token['primitive_token_id']; ?>">
                        <?php
                        // Find and display the name of the associated primitive token
                        foreach ($primitiveTokens as $pToken) {
                            if ($pToken['id'] == $token['primitive_token_id']) {
                                echo htmlspecialchars($pToken['name_reference']);
                                break;
                            }
                        }
                        ?>
                    </a>
                </td>
                <td><?php echo htmlspecialchars($token['context']); ?></td>
                <td><?php echo $token['is_live'] ? 'Yes' : 'No'; ?></td>
                <td><?php echo htmlspecialchars($token['updated_at']); ?></td>
                <td>
                    <!-- Form to Edit a Token -->
                    <form method="POST" action="" style="display:inline;">
                        <input type="hidden" name="id" value="<?php echo $token['id']; ?>">
                        <input type="text" name="name" value="<?php echo htmlspecialchars($token['name']); ?>" required>
                        <select name="primitive_token_id" required>
                            <?php foreach ($primitiveTokens as $pToken) : ?>
                                <option value="<?php echo $pToken['id']; ?>" <?php echo $pToken['id'] == $token['primitive_token_id'] ? 'selected' : ''; ?>><?php echo htmlspecialchars($pToken['name_reference']); ?></option>
                            <?php endforeach; ?>
                        </select>
                        <input type="text" name="context" value="<?php echo htmlspecialchars($token['context']); ?>" required>
                        <label for="is_live">Is Live:</label>
                        <input type="checkbox" name="is_live" <?php echo $token['is_live'] ? 'checked' : ''; ?>>
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
