//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract Students {
      constructor() public{
          address owner = msg.sender; //Make owner a state variable with value type address and make it public
        require(msg.sender == owner); //Have a constructor that ensures that owner is equal to the msg.sender
      }  

     //Have a mapping of address to students 
     mapping(address => students) Marks;  
     address[] public students;


   //Have a modifier called onlyOwner and require that msg.sender = owner
    modifier onlyOwner(){
        require(msg.sender == owner);    
        _;
    }

    //Have a struct to contain details of students
        struct studentDetails{
            string studentName;
            address studentID;
            uint totalMarks;
            uint percentageScore;
        }

    //Make sure that a student cannot register twice


    //Have a function to register students and it should be onlyOwner
    function addDetails() public onlyOwner(msg.sender) {
     
    }

    //Have a function to get student details and it accepts one argument
    function getStudentDetails(address studentID) public view{
        return studentDetails;

    }
 
    //function register(address studentID) then add all the rest details of the student from your struct to the argument of this function
    function register(address studentID) public view onlyOwner() {
        
    }

    //function getStudentDetails(address studentID)
    function getStudentDetails(address studentID) public view {
        return studentDetails; 
    }

}
