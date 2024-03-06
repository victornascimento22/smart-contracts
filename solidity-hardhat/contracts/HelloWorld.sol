// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;


contract HelloWorld {
   
   string public message = "hello world";

   function helloWorld() public view returns (string memory){
    return message;
   }
}
