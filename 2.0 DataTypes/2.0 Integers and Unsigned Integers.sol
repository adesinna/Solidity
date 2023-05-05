// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract ExampleUint {
    /*
     Unsigned integers take value from zero to a very large number, infact unitNum takes value from 
     zero to (2^Num)-1, while int can take negative values to positive values.
     */
    uint public myUnit = 67367376; // this is an unsigned integer and has a default value of zero
    int public  myInt = -10;

    function setMyUnit(uint _myUint) public {
        myUnit = _myUint;
    }

    uint8 public uinteger = 250; // it range is [0, 256)

    function increaseUint() public {
        uinteger += 1; // it will fail when it try to increase it to more than 256
        
    }

    function unChecked() public { // this function will make an exemption for the rules on unsigned integers and restart from zero instead of going to 256
        unchecked {
            uinteger += 1;

        }
        myInt += 1;

    }

}