//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

// adddress are data types that store eth address

contract Address {
    address public someAddress; // default 0x0000000000000000000000000000000000000000


    function setSomeAddress(address _someAddress) public  {
        someAddress = _someAddress;
    }

    function showBalance() public view returns(uint256) { // more on view later
       return  someAddress.balance; // balance is in WEI
    }
}