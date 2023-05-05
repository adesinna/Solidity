// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

/* 
Strings are really expensive to store on blockchain, so solidity really do have much strings methods for manipulations. 
Bytes are the codes representation of strings and they have a length attribute.
*/

contract stringsContract {
    string public myString = "Hello World";

    function setString(string memory _myString) public { // memory is like a place where it will store the string and it is mandatory to use it
        myString = _myString;
    }
    // To compare two strings 

    function compareStrings(string memory _string1) public view returns(bool) { // this will compare two strings 
        return keccak256(abi.encodePacked(_string1)) == keccak256(abi.encodePacked(myString));
    }
}