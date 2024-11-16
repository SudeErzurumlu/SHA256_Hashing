function hash = sha256_hashing(inputString)
    % Generates a SHA-256 hash for a given input string using MATLAB's built-in functions.

    % Convert the input string to a uint8 array
    byteData = uint8(inputString);

    % Compute the SHA-256 hash
    hashBytes = matlab.net.base64.encode(java.security.MessageDigest.getInstance('SHA-256').digest(byteData));
    
    % Convert the hash to hexadecimal
    hash = char(join(arrayfun(@(x) dec2hex(x, 2), typecast(uint8(hashBytes), 'uint8'), 'UniformOutput', false), ''));
end

% Example Usage
disp('Enter a string to hash with SHA-256:');
userInput = input('', 's');
hashResult = sha256_hashing(userInput);
fprintf('SHA-256 Hash: %s\n', hashResult);
