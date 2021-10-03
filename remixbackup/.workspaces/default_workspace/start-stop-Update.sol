pragma solidity ^0.5.13;

contract StartStopUpdateExample {
    address owner;
    
    bool public paused;
    
    function setPaused(bool _paused) public {
                require(msg.sender == owner,"You are not the owner");   //When contract is paused we can send money but cannot withdraw money from root account.
                 paused = _paused;
    }
    
     constructor() public {
        owner = msg.sender;
    }
    
    function sendMoney() public payable {
        
    }
    
    function withdrawAllMoney(address payable _to) public {
        require(msg.sender == owner,"You are not the owner");
        require(!paused , "Your contract is paused");
        _to.transfer(address(this).balance);
    }
}
