// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.0;

// mapping is used to map a key with a value and cannot be iterable
contract understandMapping{
  mapping (uint => string) public names;
  mapping (uint => Book) public books;
  mapping(address => mapping (uint => Book)) public myBooks;  // nested mapping

  struct Book {
    string title;
    string author;
  } 

  constructor()  {
    names[1] = "Jonny";
    names[2] = "santro";
    names[3] = "fabian";
  }

  function addBook(uint _id, string memory _title, string memory _author) public  {
    books[_id] = Book(_title,_author);
  }

  function addMyBook(uint _id, string memory _title, string memory _author) public {
    myBooks[msg.sender][_id]= Book(_title,_author);
  }
}