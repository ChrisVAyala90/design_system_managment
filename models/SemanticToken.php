<?php

class SemanticToken {
    private $conn;
    private $table_name = "semantic_tokens";

    public $id;
    public $name;
    public $primitive_token_id;
    public $context;
    public $is_live;
    public $created_at;
    public $updated_at;

    public function __construct($db) {
        $this->conn = $db;
    }

    // Create a new semantic token
    public function create() {
        $query = "INSERT INTO " . $this->table_name . " SET name=:name, primitive_token_id=:primitive_token_id, context=:context, is_live=:is_live";
        $stmt = $this->conn->prepare($query);

        $stmt->bindParam(":name", $this->name);
        $stmt->bindParam(":primitive_token_id", $this->primitive_token_id);
        $stmt->bindParam(":context", $this->context);
        $stmt->bindParam(":is_live", $this->is_live);

        if ($stmt->execute()) {
            return true;
        }
        return false;
    }

    // Read all semantic tokens
    public function read() {
        $query = "SELECT * FROM " . $this->table_name;
        $stmt = $this->conn->prepare($query);
        $stmt->execute();
        return $stmt;
    }

    // Read a single semantic token by ID
    public function readOne() {
        $query = "SELECT * FROM " . $this->table_name . " WHERE id = ? LIMIT 0,1";

        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(1, $this->id);
        $stmt->execute();

        $row = $stmt->fetch(PDO::FETCH_ASSOC);

        if($row) {
            $this->name = $row['name'];
            $this->primitive_token_id = $row['primitive_token_id'];
            $this->context = $row['context'];
            $this->is_live = $row['is_live'];
        } else {
            $this->id = null;
        }
    }

    // Log the activity in the activity log
    private function logActivity() {
        include_once '../models/ActivityLog.php';
        $activityLog = new ActivityLog($this->conn);

        $activityLog->user_id = $_SESSION['user_id']; 
        $activityLog->token_type = 'semantic';
        $activityLog->token_id = $this->id;
        $activityLog->action = $this->is_live ? 'set_live' : 'set_not_live';
        $activityLog->create();
    }
    
    // Update a semantic token and log the activity
    public function update() {
        $query = "UPDATE " . $this->table_name . " SET name=:name, primitive_token_id=:primitive_token_id, context=:context, is_live=:is_live, updated_at=NOW() WHERE id = :id";
        $stmt = $this->conn->prepare($query);

        $stmt->bindParam(":id", $this->id);
        $stmt->bindParam(":name", $this->name);
        $stmt->bindParam(":primitive_token_id", $this->primitive_token_id);
        $stmt->bindParam(":context", $this->context);
        $stmt->bindParam(":is_live", $this->is_live);

        if ($stmt->execute()) {
            $this->logActivity();
            return true;
        }
        return false;
    }
    // Delete a semantic token
    public function delete() {
        $query = "DELETE FROM " . $this->table_name . " WHERE id = :id";
        $stmt = $this->conn->prepare($query);

        $stmt->bindParam(":id", $this->id);

        if ($stmt->execute()) {
            return true;
        }
        return false;
    }
    
    // Update only the is_live status of a semantic token
    public function updateLiveStatus() {
        $query = "UPDATE " . $this->table_name . " SET is_live=:is_live WHERE id = :id";
        $stmt = $this->conn->prepare($query);

        $stmt->bindParam(":is_live", $this->is_live);
        $stmt->bindParam(":id", $this->id);

        if ($stmt->execute()) {
            return true;
        }
        return false;
    }
}
