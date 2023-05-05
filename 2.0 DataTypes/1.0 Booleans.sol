//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract ExampleBoolean { // the contract 

    bool public myBool;  // it takes a default value of false myBool=false

    function setMyBool(bool _myBool) public {
        myBool = _myBool;
    }

}
