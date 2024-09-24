<?php

include_once '../models/SemanticToken.php';

class SemanticTokenController {
    private $db;
    private $semanticToken;

    public function __construct($db) {
        $this->db = $db;
        $this->semanticToken = new SemanticToken($db);
    }

    public function create() {
        $data = json_decode(file_get_contents("php://input"));

        $this->semanticToken->name = $data->name;
        $this->semanticToken->primitive_token_id = $data->primitive_token_id;
        $this->semanticToken->context = $data->context;
        $this->semanticToken->is_live = $data->is_live;

        if ($this->semanticToken->create()) {
            echo json_encode(["message" => "Semantic Token created successfully."]);
        } else {
            echo json_encode(["message" => "Unable to create Semantic Token."]);
        }
    }

    public function read() {
        $stmt = $this->semanticToken->read();
        $tokens = $stmt->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode($tokens);
    }

    public function update() {
        $data = json_decode(file_get_contents("php://input"));

        $this->semanticToken->id = $data->id;
        $this->semanticToken->name = $data->name;
        $this->semanticToken->primitive_token_id = $data->primitive_token_id;
        $this->semanticToken->context = $data->context;
        $this->semanticToken->is_live = $data->is_live;

        if ($this->semanticToken->update()) {
            echo json_encode(["message" => "Semantic Token updated successfully."]);
        } else {
            echo json_encode(["message" => "Unable to update Semantic Token."]);
        }
    }

    public function delete() {
        $data = json_decode(file_get_contents("php://input"));

        $this->semanticToken->id = $data->id;

        if ($this->semanticToken->delete()) {
            echo json_encode(["message" => "Semantic Token deleted successfully."]);
        } else {
            echo json_encode(["message" => "Unable to delete Semantic Token."]);
        }
    }
}