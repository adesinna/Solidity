//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract Constructor {
    address public myAddress; // if constructor is not here it will be zero, but the constructor below gave it another value when deploying
    constructor() { // set a variable once during deployment
        myAddress = msg.sender;   
    }
}