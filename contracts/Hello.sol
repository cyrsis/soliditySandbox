pragma solidity ^0.4.17;


contract Hello {


    string  hello = "hello world";

    function sayHello() public view returns (string)
    {
        return hello;
    }

}
