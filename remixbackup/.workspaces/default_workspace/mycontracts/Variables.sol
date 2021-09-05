pragma solidity ^0.8.4;
contract variables {
     uint256  public myint;
     
     bool public mybool;
      
     address public myaddress; 
    
   function setMyUint(uint __myint)  public {
        myint = __myint;
    }
    
    function setMyBool(bool __mybool) public{
        mybool = __mybool;
    }
    
    function increment()public{
        myint ++;
    }
    
    function decrement()public{
        myint--;
    }
    
    function setMyAddress(address __myaddress) public {
        myaddress = __myaddress;
    }
}