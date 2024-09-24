<?php

include_once '../models/PrimitiveToken.php';

class PrimitiveTokenController {
    private $db;
    private $primitiveToken;

    public function __construct($db) {
        $this->db = $db;
        $this->primitiveToken = new PrimitiveToken($db);
    }

    public function create() {
        $data = json_decode(file_get_contents("php://input"));

        $this->primitiveToken->name_reference = $data->name;
        $this->primitiveToken->color = $data->color;
        $this->primitiveToken->value = $data->value;
        $this->primitiveToken->hex_value = $data->hex_value;
        $this->primitiveToken->opacity = $data->opacity;

        if ($this->primitiveToken->create()) {
            echo json_encode(["message" => "Primitive Token created successfully."]);
        } else {
            echo json_encode(["message" => "Unable to create Primitive Token."]);
        }
    }

    public function read() {
        $stmt = $this->primitiveToken->read();
        $tokens = $stmt->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode($tokens);
    }

    public function update() {
        $data = json_decode(file_get_contents("php://input"));

        $this->primitiveToken->id = $data->id;
        $this->primitiveToken->name_reference = $data->name;
        $this->primitiveToken->color = $data->color;
        $this->primitiveToken->value = $data->value;
        $this->primitiveToken->hex_value = $data->hex_value;
        $this->primitiveToken->opacity = $data->opacity;

        if ($this->primitiveToken->update()) {
            echo json_encode(["message" => "Primitive Token updated successfully."]);
        } else {
            echo json_encode(["message" => "Unable to update Primitive Token."]);
        }
    }

    public function delete() {
        $data = json_decode(file_get_contents("php://input"));

        $this->primitiveToken->id = $data->id;

        if ($this->primitiveToken->delete()) {
            echo json_encode(["message" => "Primitive Token deleted successfully."]);
        } else {
            echo json_encode(["message" => "Unable to delete Primitive Token."]);
        }
    }
}

