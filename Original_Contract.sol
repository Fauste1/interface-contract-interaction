
pragma solidity ^0.8.0;

contract OriginalContract {
    mapping(address => string) private secretOf;
    
    function setSecret(address secretOwner, string memory secret) external {
        secretOf[secretOwner] = secret;
    }
    
    function getSecret(address secretOwner) external view returns(string memory secret) {
        // I know, it's not really a secret if anybody can call this function.
        return secretOf[secretOwner];
    }
}