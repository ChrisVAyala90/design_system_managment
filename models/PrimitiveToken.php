<?php
class PrimitiveToken {
    private $conn;
    private $table_name = "primitive_tokens";

    public $id;
    public $name_reference; 
    public $color;
    public $value;
    public $hex_value;
    public $opacity;
    public $created_at;
    public $updated_at;

    public function __construct($db) {
        $this->conn = $db;
    }

    // Create a new primitive token
    public function create() {
        $query = "INSERT INTO " . $this->table_name . " SET name_reference=:name_reference, color=:color, value=:value, hex_value=:hex_value, opacity=:opacity";
        $stmt = $this->conn->prepare($query);

        $stmt->bindParam(":name_reference", $this->name_reference);
        $stmt->bindParam(":color", $this->color);
        $stmt->bindParam(":value", $this->value);
        $stmt->bindParam(":hex_value", $this->hex_value);
        $stmt->bindParam(":opacity", $this->opacity);

        if ($stmt->execute()) {
            return true;
        }
        return false;
    }

    // Read all primitive tokens
    public function read() {
        $query = "SELECT * FROM " . $this->table_name;
        $stmt = $this->conn->prepare($query);
        $stmt->execute();
        return $stmt;
    }

    // Read one primitive token by ID
    public function readOne() {
        $query = "SELECT * FROM " . $this->table_name . " WHERE id = ? LIMIT 0,1";
        $stmt = $this->conn->prepare($query);

        // Bind the ID of the primitive token to be read
        $stmt->bindParam(1, $this->id);

        $stmt->execute();

        $row = $stmt->fetch(PDO::FETCH_ASSOC);

        // Set the object properties if a row is found
        if ($row) {
            $this->name_reference = $row['name_reference'];  // Match the correct column name
            $this->color = $row['color'];
            $this->value = $row['value'];
            $this->hex_value = $row['hex_value'];
            $this->opacity = $row['opacity'];
            $this->created_at = $row['created_at'];
            $this->updated_at = $row['updated_at'];
        } else {
            $this->name_reference = null;
        }
    }

    // Update a primitive token
    public function update() {
        $query = "UPDATE " . $this->table_name . " SET name_reference=:name_reference, color=:color, value=:value, hex_value=:hex_value, opacity=:opacity WHERE id = :id";
        $stmt = $this->conn->prepare($query);

        $stmt->bindParam(":id", $this->id);
        $stmt->bindParam(":name_reference", $this->name_reference);
        $stmt->bindParam(":color", $this->color);
        $stmt->bindParam(":value", $this->value);
        $stmt->bindParam(":hex_value", $this->hex_value);
        $stmt->bindParam(":opacity", $this->opacity);

        if ($stmt->execute()) {
            return true;
        }
        return false;
    }

    // Delete a primitive token
    public function delete() {
        $query = "DELETE FROM " . $this->table_name . " WHERE id = :id";
        $stmt = $this->conn->prepare($query);

        $stmt->bindParam(":id", $this->id);

        if ($stmt->execute()) {
            return true;
        }
        return false;
    }
}