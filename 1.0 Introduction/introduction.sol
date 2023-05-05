//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract MyContract {  // name of the class is MyContract
    string public myString = "Hello world";  //  you declare a variable and public makes it interactive

    function updateOurString(string memory _myString) public { // this is a method that will be interactive
        myString = _myString;
    }
}
