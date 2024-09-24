<?php
class ActivityLog {
    private $conn;
    private $table_name = "activity_logs";

    public $id;
    public $user_id;
    public $user_name;
    public $token_type;
    public $token_id;
    public $action;
    public $created_at;

    public function __construct($db) {
        $this->conn = $db;
    }

    // Create a new activity log entry
    public function create() {
        $query = "INSERT INTO " . $this->table_name . " SET user_id=:user_id, token_type=:token_type, token_id=:token_id, action=:action";
        $stmt = $this->conn->prepare($query);

        $stmt->bindParam(":user_id", $this->user_id);
        $stmt->bindParam(":token_type", $this->token_type);
        $stmt->bindParam(":token_id", $this->token_id);
        $stmt->bindParam(":action", $this->action);

        if ($stmt->execute()) {
            return true;
        }
        return false;
    }

    // Read all activity logs with user information
    public function read() {
        $query = "SELECT 
                    activity_logs.id, 
                    users.name AS user_name, 
                    activity_logs.token_type, 
                    activity_logs.token_id, 
                    activity_logs.action, 
                    activity_logs.created_at 
                  FROM " . $this->table_name . "
                  LEFT JOIN users ON activity_logs.user_id = users.id
                  ORDER BY activity_logs.created_at DESC";
        $stmt = $this->conn->prepare($query);
        $stmt->execute();
        return $stmt;
    }

    // Read a single activity log entry by ID
    public function readOne() {
        $query = "SELECT 
                    activity_logs.id, 
                    activity_logs.user_id, 
                    users.name AS user_name, 
                    activity_logs.token_type, 
                    activity_logs.token_id, 
                    activity_logs.action, 
                    activity_logs.created_at 
                  FROM " . $this->table_name . "
                  LEFT JOIN users ON activity_logs.user_id = users.id
                  WHERE activity_logs.id = ? 
                  LIMIT 0,1";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(1, $this->id);
        $stmt->execute();

        $row = $stmt->fetch(PDO::FETCH_ASSOC);

        if($row) {
            $this->id = $row['id'];
            $this->user_id = $row['user_id']; 
            $this->user_name = $row['user_name'];
            $this->token_type = $row['token_type'];
            $this->token_id = $row['token_id'];
            $this->action = $row['action'];
            $this->created_at = $row['created_at'];
        } else {
            $this->id = null;
        }
    }

    // Read all activity logs without user information
    public function readAll() {
        $query = "SELECT * FROM " . $this->table_name . " ORDER BY created_at DESC";
        $stmt = $this->conn->prepare($query);
        $stmt->execute();
        return $stmt;
    }

    // Update an activity log entry
    public function update() {
        $query = "UPDATE " . $this->table_name . " 
                  SET user_id = :user_id, 
                      token_type = :token_type, 
                      token_id = :token_id, 
                      action = :action 
                  WHERE id = :id";
        $stmt = $this->conn->prepare($query);

        $stmt->bindParam(":user_id", $this->user_id);
        $stmt->bindParam(":token_type", $this->token_type);
        $stmt->bindParam(":token_id", $this->token_id);
        $stmt->bindParam(":action", $this->action);
        $stmt->bindParam(":id", $this->id);

        if ($stmt->execute()) {
            return true;
        }
        return false;
    }

    // Delete an activity log entry
    public function delete() {
        $query = "DELETE FROM " . $this->table_name . " WHERE id = :id";
        $stmt = $this->conn->prepare($query);

        $stmt->bindParam(":id", $this->id);

        if ($stmt->execute()) {
            return true;
        }
        return false;
    }

    // Read activity logs by a specific user
    public function readByUser($user_id) {
        $query = "SELECT 
                    activity_logs.id, 
                    users.name AS user_name, 
                    activity_logs.token_type, 
                    activity_logs.token_id, 
                    activity_logs.action, 
                    activity_logs.created_at 
                  FROM " . $this->table_name . "
                  LEFT JOIN users ON activity_logs.user_id = users.id
                  WHERE activity_logs.user_id = :user_id
                  ORDER BY activity_logs.created_at DESC";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':user_id', $user_id);
        $stmt->execute();
        return $stmt;
    }
}
