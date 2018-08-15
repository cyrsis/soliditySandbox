pragma solidity ^0.4.17;

// Example for storage
contract ScoreStore {

    mapping(string => int) public PersonScore;

    function addPersonScore(string name,int startingscore) public
    {
        require(PersonScore[name]>0, "Person Score bigger than 0");
      PersonScore[name] = startingscore;

    }
}
