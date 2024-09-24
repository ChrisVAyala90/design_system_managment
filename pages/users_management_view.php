<?php
// Include the database configuration and model
include_once '../config/database.php';
include_once '../models/User.php';

// Instantiate the database and User object
$database = new Database();
$db = $database->getConnection();

$user = new User($db);

// Handle form submissions for creating, editing, or deleting users
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST['create'])) {
        $user->name = $_POST['name'];
        $user->email = $_POST['email'];
        $user->password = password_hash($_POST['password'], PASSWORD_BCRYPT);
        $user->department = $_POST['department'];
        $user->role = $_POST['role'];
        $user->create();
    } elseif (isset($_POST['edit'])) {
        $user->id = $_POST['id'];
        $user->name = $_POST['name'];
        $user->email = $_POST['email'];
        if (!empty($_POST['password'])) {
            $user->password = password_hash($_POST['password'], PASSWORD_BCRYPT);
        }
        $user->department = $_POST['department'];
        $user->role = $_POST['role'];
        $user->update();
    } elseif (isset($_POST['delete'])) {
        $user->id = $_POST['id'];
        $user->delete();
    }
}

// Retrieve all users
$stmt = $user->read();
$users = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>

<h2>Manage Users</h2>

<!-- Form to Create a New User -->
<form method="POST" action="">
    <h3>Create New User</h3>
    <label for="name">Name:</label>
    <input type="text" name="name" required>
    <label for="email">Email:</label>
    <input type="email" name="email" required>
    <label for="password">Password:</label>
    <input type="password" name="password" required>
    <label for="department">Department:</label>
    <select name="department" required>
        <option value="product">Product</option>
        <option value="engineer">Engineering</option>
    </select>
    <label for="role">Role:</label>
    <select name="role" required>
        <option value="admin">Admin</option>
        <option value="engineer">Engineer</option>
    </select>
    <input type="submit" name="create" value="Create User">
</form>

<!-- Display the Users in a Table -->
<table border="1">
    <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Department</th>
            <th>Role</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($users as $user) : ?>
            <tr>
                <td><?php echo htmlspecialchars($user['id']); ?></td>
                <td><?php echo htmlspecialchars($user['name']); ?></td>
                <td><?php echo htmlspecialchars($user['email']); ?></td>
                <td><?php echo htmlspecialchars($user['department']); ?></td>
                <td><?php echo htmlspecialchars($user['role']); ?></td>
                <td>
                    <!-- Form to Edit a User -->
                    <form method="POST" action="" style="display:inline;">
                        <input type="hidden" name="id" value="<?php echo $user['id']; ?>">
                        <input type="text" name="name" value="<?php echo htmlspecialchars($user['name']); ?>" required>
                        <input type="email" name="email" value="<?php echo htmlspecialchars($user['email']); ?>" required>
                        <input type="password" name="password" placeholder="New Password (Optional)">
                        <select name="department" required>
                            <option value="product" <?php echo $user['department'] == 'product' ? 'selected' : ''; ?>>Product</option>
                            <option value="engineering" <?php echo $user['department'] == 'engineering' ? 'selected' : ''; ?>>Engineering</option>
                        </select>
                        <select name="role" required>
                            <option value="admin" <?php echo $user['role'] == 'admin' ? 'selected' : ''; ?>>Admin</option>
                            <option value="engineer" <?php echo $user['role'] == 'engineer' ? 'selected' : ''; ?>>Engineer</option>
                        </select>
                        <input type="submit" name="edit" value="Edit">
                    </form>

                    <!-- Form to Delete a User -->
                    <form method="POST" action="" style="display:inline;">
                        <input type="hidden" name="id" value="<?php echo $user['id']; ?>">
                        <input type="submit" name="delete" value="Delete">
                    </form>
                </td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>
