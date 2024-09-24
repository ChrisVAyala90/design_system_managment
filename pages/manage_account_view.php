<?php
// Include the database configuration and model
include_once '../config/database.php';
include_once '../models/User.php';

// Instantiate the database and User object
$database = new Database();
$db = $database->getConnection();

$user = new User($db);

// Retrieve Charlie Brown's information
$charlieEmail = 'charlie.brown@example.com'; 
$user->email = $charlieEmail;
$user->readByEmail(); 

// Handle form submissions for editing the user's information
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['edit'])) {
    $user->id = $_POST['id'];
    $user->name = $_POST['name'];
    $user->email = $_POST['email'];
    if (!empty($_POST['password'])) {
        $user->password = password_hash($_POST['password'], PASSWORD_BCRYPT);
    }
    // Department and role are not editable by the user
    if ($user->update()) {
        echo "<p>Account updated successfully.</p>";
    } else {
        echo "<p>Failed to update account.</p>";
    }
}
?>

<h2>Manage My Account</h2>

<!-- Form to Edit User Information -->
<form method="POST" action="">
    <input type="hidden" name="id" value="<?php echo $user->id; ?>">
    <label for="name">Name:</label>
    <input type="text" name="name" value="<?php echo htmlspecialchars($user->name); ?>" required>
    
    <label for="email">Email:</label>
    <input type="email" name="email" value="<?php echo htmlspecialchars($user->email); ?>" required>
    
    <label for="password">New Password (Optional):</label>
    <input type="password" name="password" placeholder="Leave blank to keep current password">
    
    <label for="department">Department:</label>
    <input type="text" name="department" value="<?php echo htmlspecialchars($user->department); ?>" readonly>
    
    <label for="role">Role:</label>
    <input type="text" name="role" value="<?php echo htmlspecialchars($user->role); ?>" readonly>
    
    <input type="submit" name="edit" value="Update Account">
</form>
