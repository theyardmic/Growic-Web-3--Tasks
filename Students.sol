//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract StudentRegistration {
    constructor(){
        address studentID;
        address public owner;                           //Make owner a state variable with value type address and make it public
        let students = map(address => studentID);       //Have a mapping of address to students 
        require(msg.sender = owner, "You lack ownership privileges!");    //Have a constructor that ensures that owner is equal to the msg.sender
    }
 

   //Have a modifier called onlyOwner and require that msg.sender = owner
    modifier onlyOwner(msg.sender){
        require(msg.sender = owner, "You lack ownership privileges!");    
        _;
    }

    //Have a struct to contain details of students
        struct studentDetails{
            string name;
            address studentID;
            uint totalMarks;
            uint percentageScore;
        }

    //Make sure that student cannot register twice


    //Have a function to get student details and it accepts one argument
    function getStudentDetails(address studentID) public view returns() {
        return studentDetails;

    }


    //Have a function to register students and it should be onlyOwner
    function addDetails() public onlyOwner(msg.sender) {
       _studentDetails = new  studentDetails;
    }
 
    //function register(address studentID) then add all the rest details of the student from your struct to the argument of this function
    function register(address studentID) public view onlyOwner(msg.sender) {

    }


    //function getStudentDetails(address studentID)
    function getStudentDetails(address studentID) public view returns(){
        return studentDetails; 
    }

}
