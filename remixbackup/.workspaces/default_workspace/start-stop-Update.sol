pragma solidity ^0.5.13;

contract StartStopUpdateExample {
    address owner;
    constructor() public {
        owner = msg.sender;
    }
    
    function sendMoney() public payable {
        
    }
    
    function withdrawAllMoney(address payable _to) public {
        require(msg.sender == owner,"You are not the owner");
        _to.transfer(address(this).balance);
    }
}
