// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.15;
contract task1 
{
   struct Book {
      string name;
      string writter;
      uint id;
      bool available;
   }

    // Declaring a structure object
    Book book1;

    Book book2 = Book("Building Ethereum DApps", "Roberto Infante ",2, false);

   // Defining a function to set values
   // for the fields for structure book1
   function set_book_detail(string memory name, string memory writer, uint id) public {
      book1 = Book(name, writer, id, true);
   }

   // Defining function to print
   // book2 details
   function book_info()public view returns (string memory, string memory, uint, bool) {    
        return(book2.name, book2.writter,book2.id, book2.available); 
    }

   function get_details() public view returns (string memory, uint) {
      return (book1.name, book1.id);
   }


// MAPPINGS
  mapping(address => uint) balance;
    mapping(string => uint) data;

    address marketingAddress = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;


    function setBalance() public{
        // balance[msg.sender] = 2;
        balance[marketingAddress] = 2;
    }

    function getBalance() public view returns(uint) {
        // return balance[msg.sender];
        return balance[marketingAddress];
    }

        function setData() public{
        data["age"] = 24;
    }

        function getData() public view returns(uint) {
        return data["age"];
    }

// Struct with mapping 

    struct student {
        string name;
        string fame;
        address id;
    }
    
    mapping (address => student) students;

    event studentReg(string,string,address);

    function setStruct (string memory _name, string memory _parentName, address _id) public {
        student memory Student = student(_name,_parentName,_id);
        students[_id] = Student;
    }

    function getStudentData(address _id) public view returns(student memory) {
        student memory stdData = students[_id];
        return stdData;
    }
}