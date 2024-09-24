CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    department ENUM('product', 'engineering') NOT NULL,
    role ENUM('admin', 'engineer') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


    INSERT INTO users (name, email, password, department, role)
    VALUES ('Alice Smith', 'alice.smith@example.com', 'hello1', 'engineering', 'engineer');
    

    INSERT INTO users (name, email, password, department, role)
    VALUES ('Bob Johnson', 'bob.johnson@example.com', 'hello2', 'product', 'admin');
    

    INSERT INTO users (name, email, password, department, role)
    VALUES ('Charlie Brown', 'charlie.brown@example.com', 'hello3', 'engineering', 'engineer');
    

    INSERT INTO users (name, email, password, department, role)
    VALUES ('Diana Prince', 'diana.prince@example.com', 'hello4', 'product', 'admin');
    

CREATE TABLE primitive_tokens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name_reference VARCHAR(100) NOT NULL,
    color VARCHAR(50) NOT NULL,
    value VARCHAR(50) NOT NULL,
    hex_value VARCHAR(7) NOT NULL,
    opacity DECIMAL(3, 2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('grey-900', 'grey', '900', '121212', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('grey-800', 'grey', '800', '242424', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('grey-700', 'grey', '700', '373737', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('grey-600', 'grey', '600', '4D4D4D', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('grey-500', 'grey', '500', '6F6F6F', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('grey-400', 'grey', '400', 'ABABAB', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('grey-300', 'grey', '300', 'C5C5C5', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('grey-200', 'grey', '200', 'DADADA', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('grey-100', 'grey', '100', 'EDEDED', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('grey-000', 'grey', '0', 'F5F5F5', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('green-900', 'green', '900', '12320B', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('green-800', 'green', '800', '1E5412', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('green-700', 'green', '700', '2A751A', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('green-600', 'green', '600', '379721', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('green-500', 'green', '500', '43B828', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('green-400', 'green', '400', '53D337', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('green-300', 'green', '300', '7EDE68', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('green-200', 'green', '200', 'A9E99B', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('green-100', 'green', '100', 'D4F4CD', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('green-000', 'green', '0', 'F1FBEE', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('orange-900', 'orange', '900', '802D07', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('orange-800', 'orange', '800', 'A53A09', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('orange-700', 'orange', '700', 'C4450B', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('orange-600', 'orange', '600', 'DC4E0C', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('orange-500', 'orange', '500', 'EE540D', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('orange-400', 'orange', '400', 'F3601B', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('orange-300', 'orange', '300', 'F6824C', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('orange-200', 'orange', '200', 'F8A47D', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('orange-100', 'orange', '100', 'FCD1BE', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('orange-000', 'orange', '0', 'FEF4EF', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('purple-900', 'purple', '900', '29086C', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('purple-800', 'purple', '800', '450EB4', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('purple-700', 'purple', '700', '6320EE', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('purple-600', 'purple', '600', '6F31F0', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('purple-500', 'purple', '500', '7B42F1', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('purple-400', 'purple', '400', '9263F3', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('purple-300', 'purple', '300', 'AA84F6', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('purple-200', 'purple', '200', 'C1A6F8', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('purple-100', 'purple', '100', 'E0D2FC', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('purple-000', 'purple', '0', 'F7F4FE', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('red-900', 'red', '900', '5E0A14', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('red-800', 'red', '800', '7D0E1B', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('red-700', 'red', '700', 'B81427', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('red-600', 'red', '600', 'CA162B', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('red-500', 'red', '500', 'DC182F', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('red-400', 'red', '400', 'E9344A', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('red-300', 'red', '300', 'EF6C7B', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('red-200', 'red', '200', 'F5A3AD', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('red-100', 'red', '100', 'FBDADE', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('red-000', 'red', '0', 'FDEDEF', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('yellow-900', 'yellow', '900', '816100', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('yellow-800', 'yellow', '800', 'B88A00', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('yellow-700', 'yellow', '700', 'F6B700', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('yellow-600', 'yellow', '600', 'F7C401', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('yellow-500', 'yellow', '500', 'F7CA02', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('yellow-400', 'yellow', '400', 'F7D002', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('yellow-300', 'yellow', '300', 'FDDF49', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('yellow-200', 'yellow', '200', 'FEEA86', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('yellow-100', 'yellow', '100', 'FEF4C2', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('yellow-000', 'yellow', '0', 'FFFBEB', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('blue-900', 'blue', '900', '003067', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('blue-800', 'blue', '800', '0050AB', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('blue-700', 'blue', '700', '076CDF', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('blue-600', 'blue', '600', '0088F7', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('blue-500', 'blue', '500', '0094FA', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('blue-400', 'blue', '400', '009FFD', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('blue-300', 'blue', '300', '37B6FF', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('blue-200', 'blue', '200', '6DCAFF', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('blue-100', 'blue', '100', 'B6E4FF', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('blue-000', 'blue', '0', 'EDF8FF', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('volt', 'volt', '-', 'B1FF14', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('clear', 'clear', '-', 'FFFFFF', 0.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('black', 'black', '-', '000000', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('black-a02', 'black', 'a02', '000000', 0.02);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('black-a04', 'black', 'a04', '000000', 0.04);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('black-a08', 'black', 'a08', '000000', 0.08);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('black-a12', 'black', 'a12', '000000', 0.12);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('black-a16', 'black', 'a16', '000000', 0.16);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('black-a24', 'black', 'a24', '000000', 0.24);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('black-a32', 'black', 'a32', '000000', 0.32);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('black-a40', 'black', 'a40', '000000', 0.4);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('white', 'white', '-', 'FFFFFF', 1.0);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('white-a02', 'white', 'a02', '000000', 0.02);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('white-a04', 'white', 'a04', '000000', 0.04);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('white-a08', 'white', 'a08', '000000', 0.08);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('white-a12', 'white', 'a12', '000000', 0.12);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('white-a16', 'white', 'a16', '000000', 0.16);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('white-a24', 'white', 'a24', '000000', 0.24);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('white-a32', 'white', 'a32', '000000', 0.32);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('white-a40', 'white', 'a40', '000000', 0.4);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('green-a02', 'green', 'a02', '53D337', 0.02);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('green-a04', 'green', 'a04', '53D337', 0.04);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('green-a08', 'green', 'a08', '53D337', 0.08);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('green-a12', 'green', 'a12', '53D337', 0.12);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('green-a16', 'green', 'a16', '53D337', 0.16);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('green-a24', 'green', 'a24', '53D337', 0.24);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('green-a32', 'green', 'a32', '53D337', 0.32);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('green-a40', 'green', 'a40', '53D337', 0.4);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('orange-a02', 'orange', 'a02', 'F3601B', 0.02);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('orange-a02', 'orange', 'a04', 'F3601B', 0.04);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('orange-a08', 'orange', 'a08', 'F3601B', 0.08);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('orange-a12', 'orange', 'a12', 'F3601B', 0.12);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('orange-a16', 'orange', 'a16', 'F3601B', 0.16);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('orange-a24', 'orange', 'a24', 'F3601B', 0.24);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('orange-a32', 'orange', 'a32', 'F3601B', 0.32);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('orange-a40', 'orange', 'a40', 'F3601B', 0.4);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('purple-a02', 'purple', 'a02', '9263F3', 0.02);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('purple-a04', 'purple', 'a04', '9263F3', 0.04);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('purple-a08', 'purple', 'a08', '9263F3', 0.08);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('purple-a12', 'purple', 'a12', '9263F3', 0.12);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('purple-a16', 'purple', 'a16', '9263F3', 0.16);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('purple-a24', 'purple', 'a24', '9263F3', 0.24);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('purple-a32', 'purple', 'a32', '9263F3', 0.32);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('purple-a40', 'purple', 'a40', '9263F3', 0.4);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('red-a02', 'red', 'a02', 'E9344A', 0.02);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('red-a04', 'red', 'a04', 'E9344A', 0.04);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('red-a08', 'red', 'a08', 'E9344A', 0.08);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('red-a12', 'red', 'a12', 'E9344A', 0.12);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('red-a16', 'red', 'a16', 'E9344A', 0.16);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('red-a24', 'red', 'a24', 'E9344A', 0.24);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('red-a32', 'red', 'a32', 'E9344A', 0.32);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('red-a40', 'red', 'a40', 'E9344A', 0.4);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('yellow-a02', 'yellow', 'a02', 'F7D002', 0.02);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('yellow-a04', 'yellow', 'a04', 'F7D002', 0.04);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('yellow-a08', 'yellow', 'a08', 'F7D002', 0.08);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('yellow-a12', 'yellow', 'a12', 'F7D002', 0.12);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('yellow-a16', 'yellow', 'a16', 'F7D002', 0.16);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('yellow-a24', 'yellow', 'a24', 'F7D002', 0.24);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('yellow-a32', 'yellow', 'a32', 'F7D002', 0.32);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('yellow-a40', 'yellow', 'a40', 'F7D002', 0.4);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('blue-a02', 'blue', 'a02', '009FFD', 0.02);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('blue-a04', 'blue', 'a04', '009FFD', 0.04);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('blue-a08', 'blue', 'a08', '009FFD', 0.08);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('blue-a12', 'blue', 'a012', '009FFD', 0.12);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('blue-a16', 'blue', 'a16', '009FFD', 0.16);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('blue-a24', 'blue', 'a24', '009FFD', 0.24);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('blue-a32', 'blue', 'a32', '009FFD', 0.32);
    

    INSERT INTO primitive_tokens (name_reference, color, value, hex_value, opacity)
    VALUES ('blue-a40', 'blue', 'a40', '009FFD', 0.4);
    

CREATE TABLE semantic_tokens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    primitive_token_id INT NOT NULL,
    context TEXT NOT NULL,
    is_live BOOLEAN DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (primitive_token_id) REFERENCES primitive_tokens(id) ON DELETE CASCADE
);


    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('bg-default', 43, 'background');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('bg-nav', 16, 'background');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('surface-level-1', 42, 'surface');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('surface-level-2', 21, 'surface');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('surface-level-1-alt', 91, 'surface');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('surface-level-2-alt', 102, 'surface');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('surface-recessed', 117, 'surface');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('surface-invert', 47, 'surface');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('surface-critical', 90, 'surface');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('surface-critical-subdued', 59, 'surface');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('surface-caution', 130, 'surface');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('surface-caution-subdued', 52, 'surface');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('surface-success', 11, 'surface');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('surface-success-subdued', 71, 'surface');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('surface-info', 20, 'surface');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('surface-info-subdued', 130, 'surface');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('surface-neutral', 15, 'surface');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('surface-neutral-subdued', 42, 'surface');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('surface-brand', 66, 'surface');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('surface-brand-subdued', 137, 'surface');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('surface-interactive', 66, 'surface');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('surface-interactive-hover', 5, 'surface');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('surface-interactive-pressed', 129, 'surface');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('surface-interactive-focused', 86, 'surface');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('surface-interactive-selected', 35, 'surface');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('surface-interactive-disabled', 20, 'surface');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('surface-interactive-subdued', 56, 'surface');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('surface-interactive-subdued-hover', 128, 'surface');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('surface-interactive-subdued-pressed', 13, 'surface');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('surface-interactive-subdued-focused', 79, 'surface');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('surface-interactive-subdued-selected', 75, 'surface');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('text-default', 91, 'text');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('text-strong', 101, 'text');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('text-subdued', 100, 'text');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('text-minimal', 97, 'text');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('text-disabled', 83, 'text');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('text-invert', 107, 'text');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('text-brand', 18, 'text');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('text-critical', 115, 'text');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('text-caution', 53, 'text');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('text-success', 136, 'text');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('text-info', 29, 'text');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('text-on-critical', 17, 'text');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('text-on-caution', 28, 'text');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('text-on-success', 113, 'text');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('text-on-info', 129, 'text');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('text-on-primary', 114, 'text');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('text-on-secondary', 129, 'text');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('text-on-tertiary', 24, 'text');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('text-on-disabled', 25, 'text');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('text-interactive-active', 47, 'text');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('text-interactive-inactive', 7, 'text');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('text-interactive-primary', 96, 'text');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('text-interactive-primary-hover', 28, 'text');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('text-interactive-primary-pressed', 99, 'text');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('text-interactive-subdued', 12, 'text');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('text-interactive-subdued-hover', 88, 'text');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('text-interactive-subdued-pressed', 129, 'text');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('text-interactive-invert-primary', 10, 'text');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('text-interactive-invert', 58, 'text');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('text-interactive-invert-hover', 89, 'text');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('text-interactive-invert-pressed', 9, 'text');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('text-on-green', 29, 'text');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('text-on-gold', 33, 'text');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('text-on-yellow', 86, 'text');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('text-on-purple', 19, 'text');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('text-on-indigo', 82, 'text');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('text-on-blue', 22, 'text');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('text-on-orange', 128, 'text');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('text-on-red', 81, 'text');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('text-on-nav', 100, 'text');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('text-interactive-on-nav', 82, 'text');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('border-default', 106, 'border');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('border-subdued', 122, 'border');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('border-medium', 84, 'border');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('border-strong', 108, 'border');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('border-max-contrast', 124, 'border');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('border-invert', 12, 'border');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('border-success', 74, 'border');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('border-success-subdued', 32, 'border');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('border-caution', 19, 'border');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('border-caution-subdued', 77, 'border');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('border-critical', 92, 'border');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('border-critical-subdued', 71, 'border');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('border-info', 73, 'border');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('border-info-subdued', 38, 'border');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('border-primary', 108, 'border');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('border-secondary', 35, 'border');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('border-tertiary', 21, 'border');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('border-selected', 112, 'border');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('border-deselected', 115, 'border');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('border-level', 84, 'border');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('border-divider', 116, 'border');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('icon-default', 115, 'icon');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('icon-strong', 9, 'icon');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('icon-subdued', 127, 'icon');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('icon-minimal', 4, 'icon');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('icon-disabled', 5, 'icon');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('icon-invert', 131, 'icon');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('icon-primary', 37, 'icon');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('icon-brand', 12, 'icon');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('icon-critical', 55, 'icon');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('icon-caution', 31, 'icon');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('icon-success', 11, 'icon');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('icon-info', 18, 'icon');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('icon-on-critical', 76, 'icon');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('icon-on-caution', 28, 'icon');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('icon-on-success', 94, 'icon');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('icon-on-info', 8, 'icon');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('icon-on-primary', 34, 'icon');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('icon-on-secondary', 74, 'icon');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('icon-on-tertiary', 62, 'icon');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('icon-on-disabled', 22, 'icon');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('icon-active', 53, 'icon');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('icon-inactive', 78, 'icon');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('icon-on-green', 112, 'icon');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('icon-on-gold', 54, 'icon');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('icon-on-yellow', 83, 'icon');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('icon-on-purple', 118, 'icon');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('icon-on-indigo', 82, 'icon');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('icon-on-blue', 16, 'icon');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('icon-on-orange', 81, 'icon');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('icon-on-red', 29, 'icon');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('icon-on-nav', 91, 'icon');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('icon-interactive-on-nav', 115, 'icon');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('action-primary', 46, 'action');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('action-primary-hover', 72, 'action');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('action-primary-pressed', 118, 'action');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('action-secondary', 3, 'action');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('action-secondary-hover', 36, 'action');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('action-secondary-pressed', 121, 'action');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('action-tertiary', 12, 'action');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('action-tertiary-hover', 62, 'action');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('action-tertiary-pressed', 27, 'action');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('action-critical', 51, 'action');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('action-critical-hover', 126, 'action');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('action-critical-pressed', 73, 'action');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('action-caution', 79, 'action');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('action-caution-hover', 118, 'action');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('action-caution-pressed', 45, 'action');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('action-disabled', 83, 'action');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('decorative-green', 103, 'decorative');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('decorative-gold', 128, 'decorative');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('decorative-yellow', 128, 'decorative');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('decorative-purple', 30, 'decorative');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('decorative-indigo', 100, 'decorative');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('decorative-blue', 62, 'decorative');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('decorative-red', 26, 'decorative');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('decorative-orange', 108, 'decorative');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('decorative-green-subdued', 5, 'decorative');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('decorative-gold-subdued', 26, 'decorative');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('decorative-yellow-subdued', 58, 'decorative');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('decorative-purple-subdued', 70, 'decorative');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('decorative-purple-subdued', 7, 'decorative');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('decorative-blue-subdued', 62, 'decorative');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('decorative-red-subdued', 78, 'decorative');
    

    INSERT INTO semantic_tokens (name, primitive_token_id, context)
    VALUES ('decorative-orange-subdued', 35, 'decorative');
    

CREATE TABLE activity_logs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    token_type ENUM('primitive', 'semantic') NOT NULL,
    token_id INT NOT NULL,
    action ENUM('set_live', 'update', 'create', 'delete') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);


    INSERT INTO activity_logs (user_id, token_type, token_id, action)
    VALUES (4, 'primitive', 131, 'create');
    

    INSERT INTO activity_logs (user_id, token_type, token_id, action)
    VALUES (2, 'semantic', 71, 'update');
    

    INSERT INTO activity_logs (user_id, token_type, token_id, action)
    VALUES (2, 'primitive', 21, 'create');
    

    INSERT INTO activity_logs (user_id, token_type, token_id, action)
    VALUES (4, 'primitive', 71, 'update');
    

    INSERT INTO activity_logs (user_id, token_type, token_id, action)
    VALUES (3, 'semantic', 6, 'set_live');
    

    INSERT INTO activity_logs (user_id, token_type, token_id, action)
    VALUES (3, 'semantic', 2, 'create');
    

    INSERT INTO activity_logs (user_id, token_type, token_id, action)
    VALUES (3, 'semantic', 118, 'set_live');
    

    INSERT INTO activity_logs (user_id, token_type, token_id, action)
    VALUES (3, 'primitive', 15, 'create');
    

    INSERT INTO activity_logs (user_id, token_type, token_id, action)
    VALUES (2, 'semantic', 57, 'set_live');
    

    INSERT INTO activity_logs (user_id, token_type, token_id, action)
    VALUES (1, 'semantic', 114, 'set_live');
    