// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.0;

contract arrayContract {
    uint[] myArray = [1,4,3];
    string[] public values;
    
    function testFunction(string memory _value ) public {
        values.push(_value);
    }

    function valueCount() public view returns (uint) {
        return values.length;
    }
}