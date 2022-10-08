//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract StudentRegistration {
    constructor(){
        address studentID;
        address public owner;
        let students = map(address => studentID);
        require(msg.sender = owner, "You lack ownership privileges!");
    }
 
    modifier onlyOwner(adress){
        require(msg.sender = owner, "You lack ownership privileges!");
        _;
    }


}
