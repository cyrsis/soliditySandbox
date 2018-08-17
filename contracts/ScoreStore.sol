pragma solidity ^0.4.17;

// Example for storage
contract ScoreStore {

    mapping(string => int)  PersonScore;

    function AddPersonScore(string name, int startingscore) public
    {
        //require(PersonScore[name] < 0);//to do figure out why this is not working later
        //map string to int
        PersonScore[name] = startingscore;

    }

    function GetStore(string name)  public view returns (int)
    {
        return PersonScore[name];
    }
}
