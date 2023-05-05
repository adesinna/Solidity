//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract msgSender {
    address public someAddress;

    // the function below will give you the address that interacted with this contract more details to come later
    function updateSomeAddress() public {
        someAddress = msg.sender; // the msg is an object that is publicly available
    } 


    /*
    To understand  functions we have 3 types
    - write:
        They use variable outside the scope function and they just write to the a variable and they can have parameters
    - view:
        View functions dont write and use variables outside the scope and return something and they dont have parameters
    - pure:
        View functions dont write and use variables inside the scope and return something and have its own parameters

    */

    uint256 public myVar = 40; // our test variable
    // write function

    function writeFunction(address _someAddress, uint256 _myVar) public {
        someAddress = _someAddress;
        myVar = _myVar;
    }

    // view function 

    function viewFunction() public view returns(uint256) {
        return myVar;
    }

    // pure function
    
    function pureFunctions(int a, int b) public pure returns(int) {
        return (a % b); // can only view em 


    }


}