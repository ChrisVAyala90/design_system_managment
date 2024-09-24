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

// Handle form submissions for updating the "Is Live" status of tokens
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST['update_live_status'])) {
        $semanticToken->id = $_POST['id'];
        $semanticToken->is_live = isset($_POST['is_live']) ? 1 : 0;
        $semanticToken->updateLiveStatus();
    }
}

// Retrieve all semantic tokens
$stmt = $semanticToken->read();
$tokens = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Retrieve all primitive tokens for selection in the form
$primitiveStmt = $primitiveToken->read();
$primitiveTokens = $primitiveStmt->fetchAll(PDO::FETCH_ASSOC);
?>

<h2>View Semantic Tokens</h2>

<!-- Display the Semantic Tokens in a Table -->
<table border="1">
    <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Primitive Token</th>
            <th>Context</th>
            <th>Is Live</th>
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
                <td>
                    <!-- Form to Update the "Is Live" Status -->
                    <form method="POST" action="" style="display:inline;">
                        <input type="hidden" name="id" value="<?php echo $token['id']; ?>">
                        <label for="is_live">Is Live:</label>
                        <input type="checkbox" name="is_live" <?php echo $token['is_live'] ? 'checked' : ''; ?>>
                        <input type="submit" name="update_live_status" value="Update">
                    </form>
                </td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>
