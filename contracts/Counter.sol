// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.0;

contract Counter {
    uint count;

    constructor() {
       count = 2;
    }

    function getCount() public view returns(uint) {
        return count;
    }

    function incrimentCount() public {
        count+=1;
    }

}