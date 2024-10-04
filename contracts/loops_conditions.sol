// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.0;

contract ConditionWithLoops {
 
    uint[] numbers = [2,7,8,52,36,47,77];

 // creating contract owner
       address public owner;
                  
       constructor() {
        owner =  msg.sender;
       }

    function evenCount() public view returns(uint) {
       uint count =0;
       for(uint i=0; i < numbers.length; i++){
            if(isEven(numbers[i])){
                count ++;
            }
       }
       return  count;
    }

    function isEven(uint _number) public pure returns(bool) {
        if(_number % 2 == 0) {
            return true;
        }else{
            return false;
        }
    }

    function checkowner() public view returns (bool){
        return(owner == msg.sender);
    }
}