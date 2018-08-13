pragma solidity ^0.4.23;

contract Inbox {

    string public message;



    constructor(string initMessage){
        message = initMessage;

    }

    function setMessage(string newMessage) public
    {
        message = newMessage;
    }


    function getMessage() public view returns (string) {
        return message;
    }
}
