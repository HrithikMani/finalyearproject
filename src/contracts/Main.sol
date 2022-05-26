pragma solidity >=0.5.16;

contract Main{
    string public name = "Hrithik";
    uint public UserCount = 0;
    //store posts
    struct Land{
        uint id;
        address owner;
        string addre;
        string description;
    }
    struct User{
        address  id;
        string name;
        string age;
        string city;
        string aadharNumber;
        
        string email;
        bool isUserVerified;
    }

    event UserCreated (
        address  id,
        string name,
        string age,
        string city,
        string aadharNumber,
        string email,
        bool isUserVerified
    );
    
    
    mapping(uint=> User) public usersMapping;
    
    //user functions
    function createUser(string memory _name, string memory _age, string memory _city, string memory _adhar,  string memory _email) public{
        UserCount++;
        usersMapping[UserCount] = User(msg.sender, _name, _age,_city,_adhar,_email,false);
        emit UserCreated(msg.sender, _name, _age,_city,_adhar,_email,false);
    }
    function getUser(uint _id) public {
        User memory _user = usersMapping[_id];
        emit UserCreated(_user.id, _user.name, _user.age, _user.city, _user.aadharNumber, _user.email, _user.isUserVerified);
    }




}