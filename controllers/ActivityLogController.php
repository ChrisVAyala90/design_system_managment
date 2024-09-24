<?php

include_once '../models/ActivityLog.php';

class ActivityLogController {
    private $db;
    private $activityLog;

    public function __construct($db) {
        $this->db = $db;
        $this->activityLog = new ActivityLog($db);
    }

    // Create a new activity log entry
    public function create() {
        $data = json_decode(file_get_contents("php://input"));

        $this->activityLog->user_id = $data->user_id;
        $this->activityLog->token_type = $data->token_type;
        $this->activityLog->token_id = $data->token_id;
        $this->activityLog->action = $data->action;

        if ($this->activityLog->create()) {
            echo json_encode(["message" => "Activity Log created successfully."]);
        } else {
            echo json_encode(["message" => "Unable to create Activity Log."]);
        }
    }

    // Read all activity logs
    public function read() {
        $stmt = $this->activityLog->read();
        $logs = $stmt->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode($logs);
    }

    // Read a single activity log entry by ID
    public function readOne($id) {
        $this->activityLog->id = $id;
        $this->activityLog->readOne();
        if ($this->activityLog->id !== null) {
            $data = [
                'id' => $this->activityLog->id,
                'user_id' => $this->activityLog->user_id,
                'user_name' => $this->activityLog->user_name,
                'token_type' => $this->activityLog->token_type,
                'token_id' => $this->activityLog->token_id,
                'action' => $this->activityLog->action,
                'created_at' => $this->activityLog->created_at
            ];
            echo json_encode($data);
        } else {
            echo json_encode(["message" => "Activity Log not found."]);
        }
    }

    // Update an activity log entry
    public function update() {
        $data = json_decode(file_get_contents("php://input"));

        $this->activityLog->id = $data->id;
        $this->activityLog->user_id = $data->user_id;
        $this->activityLog->token_type = $data->token_type;
        $this->activityLog->token_id = $data->token_id;
        $this->activityLog->action = $data->action;

        if ($this->activityLog->update()) {
            echo json_encode(["message" => "Activity Log updated successfully."]);
        } else {
            echo json_encode(["message" => "Unable to update Activity Log."]);
        }
    }

    // Delete an activity log entry
    public function delete($id) {
        $this->activityLog->id = $id;

        if ($this->activityLog->delete()) {
            echo json_encode(["message" => "Activity Log deleted successfully."]);
        } else {
            echo json_encode(["message" => "Unable to delete Activity Log."]);
        }
    }
}
