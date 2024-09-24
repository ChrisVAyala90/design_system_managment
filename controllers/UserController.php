<?php

include_once '../models/User.php';

class UserController {
    private $db;
    private $user;

    public function __construct($db) {
        $this->db = $db;
        $this->user = new User($db);
    }

    public function create() {
        $data = json_decode(file_get_contents("php://input"));

        $this->user->name = $data->name;
        $this->user->email = $data->email;
        $this->user->password = $data->password;
        $this->user->department = $data->department;
        $this->user->role = $data->role;

        if ($this->user->create()) {
            echo json_encode(["message" => "User created successfully."]);
        } else {
            echo json_encode(["message" => "Unable to create User."]);
        }
    }

    public function read() {
        $stmt = $this->user->read();
        $users = $stmt->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode($users);
    }

    public function update() {
        $data = json_decode(file_get_contents("php://input"));

        $this->user->id = $data->id;
        $this->user->name = $data->name;
        $this->user->email = $data->email;
        $this->user->password = $data->password;
        $this->user->department = $data->department;
        $this->user->role = $data->role;

        if ($this->user->update()) {
            echo json_encode(["message" => "User updated successfully."]);
        } else {
            echo json_encode(["message" => "Unable to update User."]);
        }
    }

    public function delete() {
        $data = json_decode(file_get_contents("php://input"));

        $this->user->id = $data->id;

        if ($this->user->delete()) {
            echo json_encode(["message" => "User deleted successfully."]);
        } else {
            echo json_encode(["message" => "Unable to delete User."]);
        }
    }
}
