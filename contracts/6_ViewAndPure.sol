// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;

contract ViewAndPure {
    uint public x = 1;
    
    // Promise not to modify the state.
    function addToX(uint y) public view returns (uint) {
        return x + y;
    }

    // Promise not to modify or read from the state.
    function add(uint i, uint j) public pure returns (uint) {
        return i + j;
    }
    
    function SimpleX() public view returns (uint){
        return x;
    }
    
    function _addTox() public view returns (uint){
        return SimpleX();
    }
    
    function _add() public pure returns (uint i){
        i = add(1,2);
    }
}