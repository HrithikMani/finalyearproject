pragma solidity >=0.5.16;

contract Main{
    string public name = "Hrithik";
    //store posts
    struct Image{
        uint id;
        string name;
        string description;
        address myacc;
    }
    mapping(uint => Image) public Images;

    //create posts 
}