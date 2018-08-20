pragma solidity ^0.4.17;

//Calling an other Contract from ScoreStore

contract IScoreStore {

    function GetScore(string name) public view returns (uint256);


}

contract MyGame {

    function ShowScore(string name) public view returns (uint256)
    {

        //Calling other Contract by the address
        IScoreStore scoreStore = IScoreStore(0x29db6c3c03dd689be3afad2de0df232ca8e1ece2);

        return scoreStore.GetScore(name);
    }




}
