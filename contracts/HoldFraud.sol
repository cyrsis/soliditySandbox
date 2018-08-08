pragma solidity ^0.4.18;

contract HoldFraud {

    uint ownerAmount;
    uint numberOfPayouts;
    address owner;

    struct HoldRecord {
        uint amount;
        uint unlockTime;
    }

    mapping(address => HoldRecord) balance;

    constructor(uint holdtime) public payable {
        owner = msg.sender;
        payIn(holdtime);
    }

    function balanceOf(address addres) public view returns (uint)
    {
        return balance[addres].amount;
    }

    function payIn(uint holdTime) public payable {
        require(msg.value > 0);


        HoldRecord memory newRecord; //memory or storage

        newRecord.amount += msg.value;
        newRecord.unlockTime = now + holdTime;
        balance[msg.sender] = newRecord;
    }

    function withdraw() public {
        require(balance[msg.sender].unlockTime < now && balance[msg.sender].amount > 0);
        msg.sender.transfer(balance[msg.sender].amount);
        balance[msg.sender].amount = 0;
        numberOfPayouts++;
    }

    function ownerWithdrawal() public {
        require(msg.sender == owner && ownerAmount > 0);
        msg.sender.transfer(ownerAmount);
        ownerAmount = 0;

    }
}