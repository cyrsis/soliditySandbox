pragma solidity ^0.4.23;

contract MappingExample {


    mapping(address => uint256) public balance;

    function updateBalance(address addr, uint256 newbalance) public
    {
        balance[addr] = newbalance;
    }

    // {0xca35b7d915458ef540ade6068dfe2f44e8fa733c: 100,
    //   0x14723a09acff6d2a60dcdf7aa4aff308fddc160c: 200,
    //0x4b0897b0513fdc7c541b6d9d7e929c4e5364d2db: 300 }

    function getbalance(address addr) public view returns (uint256)
    {
        return balance[addr];
    }

}
