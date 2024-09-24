<?php
include_once '../config/database.php';
include_once '../models/PrimitiveToken.php';

// Instantiate the database and PrimitiveToken object
$database = new Database();
$db = $database->getConnection();

$primitiveToken = new PrimitiveToken($db);

// Get the primitive token ID from the query string
$id = isset($_GET['id']) ? $_GET['id'] : die('ERROR: ID not found.');

// Set the ID property of the primitive token
$primitiveToken->id = $id;

// Read the details of the primitive token
$primitiveToken->readOne();

if($primitiveToken->name_reference == null) {
    echo "Primitive token not found.";
} else {
?> 
    <h2>Primitive Token Details</h2>
    <p><strong>ID:</strong> <?php echo htmlspecialchars($primitiveToken->id); ?></p>
    <p><strong>Name:</strong> <?php echo htmlspecialchars($primitiveToken->name_reference); ?></p>
    <p><strong>Color:</strong> <?php echo htmlspecialchars($primitiveToken->color); ?></p>
    <p><strong>Value:</strong> <?php echo htmlspecialchars($primitiveToken->value); ?></p>
    <p><strong>Hex Value:</strong> <?php echo htmlspecialchars($primitiveToken->hex_value); ?></p>
    <p><strong>Opacity:</strong> <?php echo htmlspecialchars($primitiveToken->opacity); ?></p>
<?php
}
?>
