
pragma solidity ^0.8.0;

interface IOriginalContract {
    function setSecret(address secretOwner, string memory secret) external;
    function getSecret(address secretOwner) external view returns(string memory secret);
}

contract MyContract {
    
    IOriginalContract originalContract;
    
    constructor(address _originalContractAddress) {
        originalContract = IOriginalContract(_originalContractAddress);
    }
    
    function setSecret(address secretOwner, string memory secret) external {
        originalContract.setSecret(secretOwner, secret);
    }
    
    function getSecret(address secretOwner) external view returns(string memory secret) {
        return originalContract.getSecret(secretOwner);
    }
}