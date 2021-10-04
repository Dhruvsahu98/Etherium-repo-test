pragma solidity ^0.5.13;

contract StartStopUpdateExample {
    address owner;
    
    bool public paused;
    
    function setPaused(bool _paused) public {
                require(msg.sender == owner,"You are not the owner");  //when contract is paused I can send money but cannot withdraw money
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
    
    function destroySmartContract(address payable _to) public {
         require(msg.sender == owner,"You are not the owner");
        selfdestruct(_to);  //selfdestruct is used to destroy a smart contract
    }
}
