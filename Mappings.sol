pragma solidity ^0.8.1;
//SPDX-License-Identifier: UNLICENSED

contract Mappings{
    mapping(uint => string) public names;
    
    constructor(){
        names[1] = "Satyansh";
        names[2] = "Sagar";
        names[3] = "Abc";
    }
    
    //book database
    struct Book{
        string title;
        string author;
    }
    
    mapping(uint => Book) public books;
    
    function addBook(uint _id, string memory _title, string memory _author) public{
        books[_id] = Book(_title,_author);
    }
    
    //nested Mappings
    //mapping(key => mapping(key2 => value2)) public myMapping;
    mapping(address => mapping(uint => Book)) public myBooks;
    
    //get data based on user address
    function addMyBook(uint _id, string memory _title, string memory _author) public{
        myBooks[msg.sender][_id] = Book(_title,_author);
    }
}