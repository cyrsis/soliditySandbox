pragma solidity 0.4.24;

import "zeppelin-solidity/contracts/token/ERC721/ERC721Token.sol";


contract CryptoMonster is ERC721Token {

    struct Monster {
        string name;
        uint level;
        uint attackpower;
        uint defencepower;
    }

    Monster[] public monsters;

    address public owner;

    constructor() public {
        owner = msg.sender;
    }

    function createMonster(string _name, address _to) public {
        require(msg.sender == owner);
        uint id = monsters.length;
        monsters.push(Monster(_name, 20, 200, 100));
        _mint(_to, id);

    }

    function battle(uint _monsterID, uint _targetID) onlyOwnerOf(_monsterID) {
     
    }

}
