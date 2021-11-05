pragma solidity ^0.8.1;
//SPDX-License-Identifier: UNLICENSED

contract Counter{
    uint public count = 1;
    
    function incrementCount() public{
        count++;
    }
}