pragma solidity ^0.8.1;
//SPDX-License-Identifier: UNLICENSED

contract DataTypes{
    //local variable : only accesible in the function
    function getValue() public pure returns(uint){
        uint value =1;
        value+8;
        return value;
    }
    
    //state variable : accesible everywhere, this exists in the blockchain database
    uint public myUint = 1;//unsigned integer , can't be negative
    string public myStr = "Hello There!";
    
    //address public myAddress = 0x1sduhaw23eywuqye78236487632874638724632;
    
    struct MyStruct{
        uint myId;
        string myString;
    }
    
    MyStruct public myStruct = MyStruct(1,"Satyansh");
    
    //Array
    uint[] public uintarray = [1,2,3];
    string[] public strarray = ['a','b','c'];
    string[] public myarray;
    uint[][] public array2D = [[1,2,3],[4,5,6]];
    
    function addValue(string memory _value) public{
        myarray.push(_value);
    }
    
    function valueCount() public view returns(uint){
        return myarray.length;
    }
}