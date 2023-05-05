//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract TheblockchainMessenger {
    uint public changeCounter;

    address public owner;

    constructor(){
        owner = msg.sender; // the eth address that made the transaction
    }

    string public theMessage;

    function updateMessage(string memory _newMessage) public {
        if (msg.sender == owner) {
            theMessage = _newMessage;
            changeCounter += 1;
        }
    }

}