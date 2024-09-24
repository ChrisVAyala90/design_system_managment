<?php
include_once '../config/database.php';
include_once '../models/User.php';
include_once '../models/PrimitiveToken.php';
include_once '../models/SemanticToken.php';
include_once '../models/ActivityLog.php';

// Helper function to convert an array to XML
function arrayToXml($data, $rootElement = 'response', $xml = null) {
    if ($xml === null) {
        $xml = new SimpleXMLElement("<$rootElement/>");
    }

    foreach ($data as $key => $value) {
        if (is_array($value)) {
            arrayToXml($value, $key, $xml->addChild($key));
        } else {
            $xml->addChild($key, htmlspecialchars($value));
        }
    }

    return $xml->asXML();
}

// Function to format the response in JSON or XML based on the request header
function responseFormat($data) {
    $contentType = $_SERVER['HTTP_ACCEPT'];

    if (strpos($contentType, 'xml') !== false) {
        header('Content-Type: application/xml; charset=utf-8');
        echo arrayToXml($data);
    } else {
        header('Content-Type: application/json; charset=utf-8');
        echo json_encode($data);
    }
}

$database = new Database();
$db = $database->getConnection();

$user = new User($db);
$primitiveToken = new PrimitiveToken($db);
$semanticToken = new SemanticToken($db);
$activityLog = new ActivityLog($db);

$requestMethod = $_SERVER["REQUEST_METHOD"];
$resource = $_GET['resource'];

switch ($resource) {
    case 'user':
        handleUserRequest($requestMethod, $user);
        break;
    case 'primitive_token':
        handlePrimitiveTokenRequest($requestMethod, $primitiveToken);
        break;
    case 'semantic_token':
        handleSemanticTokenRequest($requestMethod, $semanticToken);
        break;
    case 'activity_log':
        handleActivityLogRequest($requestMethod, $activityLog);
        break;
    default:
        header("HTTP/1.0 404 Not Found");
        echo json_encode(["message" => "Resource not found"]);
        break;
}

// Function to handle User requests
function handleUserRequest($requestMethod, $user) {
    switch ($requestMethod) {
        case 'GET':
            if (isset($_GET['id'])) {
                $user->id = $_GET['id'];
                $user->readOne();
                $data = [
                    'id' => $user->id,
                    'name' => $user->name,
                    'email' => $user->email,
                    'department' => $user->department,
                    'role' => $user->role
                ];
            } else {
                $stmt = $user->read();
                $data = $stmt->fetchAll(PDO::FETCH_ASSOC);
            }
            responseFormat($data);
            break;

        case 'POST':
            $input = json_decode(file_get_contents("php://input"), true);
            if ($input === null) {
                header("HTTP/1.0 400 Bad Request");
                echo json_encode(["message" => "Invalid JSON input"]);
                exit;
            }

            $user->name = $input['name'];
            $user->email = $input['email'];
            $user->password = password_hash($input['password'], PASSWORD_BCRYPT);
            $user->department = $input['department'];
            $user->role = $input['role'];

            if ($user->create()) {
                responseFormat(['message' => 'User created successfully']);
            } else {
                responseFormat(['message' => 'User creation failed']);
            }
            break;

        case 'PUT':
            $input = json_decode(file_get_contents("php://input"), true);
            if ($input === null) {
                header("HTTP/1.0 400 Bad Request");
                echo json_encode(["message" => "Invalid JSON input"]);
                exit;
            }

            $user->id = $input['id'];
            $user->name = $input['name'];
            $user->email = $input['email'];
            if (!empty($input['password'])) {
                $user->password = password_hash($input['password'], PASSWORD_BCRYPT);
            }
            $user->department = $input['department'];
            $user->role = $input['role'];

            if ($user->update()) {
                responseFormat(['message' => 'User PUT update successful']);
            } else {
                responseFormat(['message' => 'User PUT update failed']);
            }
            break;

        case 'DELETE':
            $user->id = $_GET['id'];
            if ($user->delete()) {
                responseFormat(['message' => 'User deleted successfully']);
            } else {
                responseFormat(['message' => 'User deletion failed']);
            }
            break;

        default:
            header("HTTP/1.0 405 Method Not Allowed");
            break;
    }
}

function handlePrimitiveTokenRequest($requestMethod, $primitiveToken) {
    switch ($requestMethod) {
        case 'GET':
            if (isset($_GET['id'])) {
                $primitiveToken->id = $_GET['id'];
                $primitiveToken->readOne();
                $data = [
                    'id' => $primitiveToken->id,
                    'name_reference' => $primitiveToken->name_reference,
                    'color' => $primitiveToken->color,
                    'value' => $primitiveToken->value,
                    'hex_value' => $primitiveToken->hex_value,
                    'opacity' => $primitiveToken->opacity
                ];
            } else {
                $stmt = $primitiveToken->read();
                $data = $stmt->fetchAll(PDO::FETCH_ASSOC);
            }
            responseFormat($data);
            break;

        case 'POST':
            $input = json_decode(file_get_contents("php://input"), true);
            $primitiveToken->name_reference = $input['name_reference'];
            $primitiveToken->color = $input['color'];
            $primitiveToken->value = $input['value'];
            $primitiveToken->hex_value = $input['hex_value'];
            $primitiveToken->opacity = $input['opacity'];
            if ($primitiveToken->create()) {
                responseFormat(['message' => 'Primitive token created successfully']);
            } else {
                responseFormat(['message' => 'Primitive token creation failed']);
            }
            break;

        case 'PUT':
            $input = json_decode(file_get_contents("php://input"), true);
            $primitiveToken->id = $input['id'];
            $primitiveToken->name_reference = $input['name_reference'];
            $primitiveToken->color = $input['color'];
            $primitiveToken->value = $input['value'];
            $primitiveToken->hex_value = $input['hex_value'];
            $primitiveToken->opacity = $input['opacity'];
            if ($primitiveToken->update()) {
                responseFormat(['message' => 'Primitive token PUT update successful']);
            } else {
                responseFormat(['message' => 'Primitive token PUT update failed']);
            }
            break;

        case 'DELETE':
            $primitiveToken->id = $_GET['id'];
            if ($primitiveToken->delete()) {
                responseFormat(['message' => 'Primitive token deleted successfully']);
            } else {
                responseFormat(['message' => 'Primitive token deletion failed']);
            }
            break;

        default:
            header("HTTP/1.0 405 Method Not Allowed");
            break;
    }
}

function handleSemanticTokenRequest($requestMethod, $semanticToken) {
    switch ($requestMethod) {
        case 'GET':
            if (isset($_GET['id'])) {
                $semanticToken->id = $_GET['id'];
                $semanticToken->readOne();
                if ($semanticToken->id !== null) {
                    $data = [
                        'id' => $semanticToken->id,
                        'name' => $semanticToken->name,
                        'primitive_token_id' => $semanticToken->primitive_token_id,
                        'context' => $semanticToken->context,
                        'is_live' => $semanticToken->is_live
                    ];
                    responseFormat($data);
                } else {
                    header("HTTP/1.0 404 Not Found");
                    responseFormat(['message' => 'Semantic token not found']);
                }
            } else {
                // If no ID is provided, get all semantic tokens
                $stmt = $semanticToken->read();
                $data = $stmt->fetchAll(PDO::FETCH_ASSOC);
                responseFormat($data);
            }
            break;

        case 'POST':
            $input = json_decode(file_get_contents("php://input"), true);
            $semanticToken->name = $input['name'];
            $semanticToken->primitive_token_id = $input['primitive_token_id'];
            $semanticToken->context = $input['context'];
            $semanticToken->is_live = $input['is_live'];
            if ($semanticToken->create()) {
                responseFormat(['message' => 'Semantic token created successfully']);
            } else {
                responseFormat(['message' => 'Semantic token creation failed']);
            }
            break;

        case 'PUT':
            $input = json_decode(file_get_contents("php://input"), true);
            $semanticToken->id = $input['id'];
            $semanticToken->name = $input['name'];
            $semanticToken->primitive_token_id = $input['primitive_token_id'];
            $semanticToken->context = $input['context'];
            $semanticToken->is_live = $input['is_live'];
            if ($semanticToken->update()) {
                responseFormat(['message' => 'Semantic token PUT update successful']);
            } else {
                responseFormat(['message' => 'Semantic token PUT update failed']);
            }
            break;

        case 'DELETE':
            $semanticToken->id = $_GET['id'];
            if ($semanticToken->delete()) {
                responseFormat(['message' => 'Semantic token deleted successfully']);
            } else {
                responseFormat(['message' => 'Semantic token deletion failed']);
            }
            break;

        default:
            header("HTTP/1.0 405 Method Not Allowed");
            break;
    }
function handleActivityLogRequest($requestMethod, $activityLog) {
    switch ($requestMethod) {
        case 'GET':
            if (isset($_GET['id'])) {
                $activityLog->id = $_GET['id'];
                $activityLog->readOne();
                if ($activityLog->id !== null) {
                    $data = [
                        'id' => $activityLog->id,
                        'user_id' => $activityLog->user_id,
                        'user_name' => $activityLog->user_name, 
                        'token_type' => $activityLog->token_type,
                        'token_id' => $activityLog->token_id,
                        'action' => $activityLog->action,
                        'created_at' => $activityLog->created_at
                    ];
                    responseFormat($data); 
                } else {
                    header("HTTP/1.0 404 Not Found");
                    responseFormat(['message' => 'Activity log not found']);
                }
            } else {
                $stmt = $activityLog->readAll(); 
                $data = $stmt->fetchAll(PDO::FETCH_ASSOC);
                responseFormat($data); 
            }
            break;

        case 'POST':
            $input = json_decode(file_get_contents("php://input"), true);
            $activityLog->user_id = $input['user_id'];
            $activityLog->token_type = $input['token_type'];
            $activityLog->token_id = $input['token_id'];
            $activityLog->action = $input['action'];
            if ($activityLog->create()) {
                responseFormat(['message' => 'Activity log created successfully']);
            } else {
                header("HTTP/1.0 500 Internal Server Error");
                responseFormat(['message' => 'Activity log creation failed']);
            }
            break;

        case 'PUT':
            $input = json_decode(file_get_contents("php://input"), true);
            $activityLog->id = $input['id'];
            $activityLog->user_id = $input['user_id'];
            $activityLog->token_type = $input['token_type'];
            $activityLog->token_id = $input['token_id'];
            $activityLog->action = $input['action'];
            if ($activityLog->update()) {
                responseFormat(['message' => 'Activity log updated successfully']);
            } else {
                header("HTTP/1.0 500 Internal Server Error");
                responseFormat(['message' => 'Activity log update failed']);
            }
            break;

        case 'DELETE':
            if (isset($_GET['id'])) {
                $activityLog->id = $_GET['id'];
                if ($activityLog->delete()) {
                    responseFormat(['message' => 'Activity log deleted successfully']);
                } else {
                    header("HTTP/1.0 500 Internal Server Error");
                    responseFormat(['message' => 'Activity log deletion failed']);
                }
            } else {
                header("HTTP/1.0 400 Bad Request");
                responseFormat(['message' => 'ID is required for deletion']);
            }
            break;

        default:
            header("HTTP/1.0 405 Method Not Allowed");
            responseFormat(['message' => 'Method not allowed']);
            break;
        }
    }
}