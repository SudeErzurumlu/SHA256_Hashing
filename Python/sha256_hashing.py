import hashlib

def generate_sha256_hash(input_string):
    """
    Generates a SHA-256 hash for a given input string.

    Parameters:
    input_string (str): The string to be hashed.

    Returns:
    str: The hexadecimal representation of the SHA-256 hash.
    """
    # Encode the input string to bytes
    byte_data = input_string.encode('utf-8')
    
    # Create a SHA-256 hash object
    sha256_hash = hashlib.sha256(byte_data)
    
    # Return the hexadecimal representation of the hash
    return sha256_hash.hexdigest()

if __name__ == "__main__":
    # Example usage
    user_input = input("Enter a string to hash with SHA-256: ")
    hash_result = generate_sha256_hash(user_input)
    print(f"SHA-256 hash: {hash_result}")
