# Design_system_managment
MVP for Internal Design System Tool (DKNG - Preview)

# BU MET CS602 Term Project by Chris V. Ayala

## Design System Management Tool

This is a PHP-based web app designed to manage design tokens across different use cases. The tool is built to help product admins and engineers maintain a consistent design system, and features CRUD operations, data persistence, and token management.

## Features

- **Role-based Dashboards**: Separate views and functionalities for product admins and engineers.
- **CRUD Operations**: Manage primitive and semantic design tokens efficiently.
- **Activity Logs**: Track changes made by engineers with detailed logging.
- **Token Status Management**: Engineers can update token statuses and notify admins.
- **REST API**: Provides endpoints in both JSON and XML formats for data access and manipulation.

## Technology Stack

- **Backend**: PHP, MySQL
- **Frontend**: React.js
- **Server**: XAMPP (Apache, PHP, MySQL)
- **Database Management**: phpMyAdmin for SQL database management
- **Localhost**: Access via `http://localhost/chrisayala_finalproject/`

## Usage

- **Admin Dashboard**: Manage tokens and view engineer activity logs.
  - URL: `http://localhost/chrisayala_finalproject/admin_dashboard.php`
- **Engineer Dashboard**: Update token statuses and log activities.
  - URL: `http://localhost/chrisayala_finalproject/engineer_dashboard.php`

## API Endpoints

### Primitive Tokens

- **GET** `routes/api.php?resource=primitive_token` - Retrieve all primitive tokens.
- **POST** `routes/api.php?resource=primitive_token` - Create a new primitive token, for example with id=1.
- **PUT** `routes/api.php?resource=primitive_token&id=1` - Update an existing primitive token.
- **DELETE** `routes/api.php?resource=primitive_token&id=1` - Delete a primitive token via id.

### Semantic Tokens

- **GET** `routes/api.php?resource=semantic_token` - Retrieve all semantic tokens.
- **POST** `routes/api.php?resource=semantic_token` - Create a new semantic token, for example with id=1.
- **PUT** `routes/api.php?resource=semantic_token&id=1` - Update an existing semantic token.
- **DELETE** `routes/api.php?resource=semantic_token&id=1` - Delete a semantic token via id.


### Users

- **GET** `routes/api.php?resource=users` - Retrieve all users.
- **POST** `/routes/api.php?resource=users` - Create a new user, for example, with id=1.
- **PUT** `routes/api.php?resource=users&id=1` - Update an existing user.
- **DELETE** `routes/api.php?resource=users&id=1` - Delete a user.

