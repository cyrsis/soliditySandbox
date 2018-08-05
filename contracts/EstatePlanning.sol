pragma solidity ^0.4.21;

import "zeppelin-solidity/contracts/token/ERC20/ERC20.sol";

//Goal: In the event of death, that transfer the assets to beneficiary

//Contract Owner Info ,
//Full Name
//Nationality
//Address
//PostCode
//E-mail
//Mobile-no
//Wallet Address(ERC20 transfer function)


//


contract Ownable is ERC20 {
    address owner = msg.sender;
    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
}

contract Mortal is Ownable {
    function kill() public onlyOwner {
        selfdestruct(msg.sender);
    }
}

contract EstatePlanning is Mortal {

    address beneficiary;

    uint256 waitingPeriodLength;
    uint256 endOfWaitingPeriod;


    modifier onlyBeneficiary {
        require(msg.sender == beneficiary);
        _;
    }


    modifier heartbeat {
        _;
        endOfWaitingPeriod = 10 ** 18;
        // approximate age of universe
    }


    constructor(address _beneficiary, uint256 _waitingPeriodLength) public
    {
        beneficiary = _beneficiary;
        waitingPeriodLength = _waitingPeriodLength;
    }

    function deposit() public payable onlyOwner heartbeat {}

    function withdraw(uint256 amount) public onlyOwner heartbeat {
        msg.sender.transfer(amount);
    }

    event Challenge(uint256 timestamp);

    function assertDeath() public onlyBeneficiary {
        endOfWaitingPeriod = now + waitingPeriodLength;
        emit Challenge(now);
    }

    function claimInheritance(address newBeneficiary)
    public
    onlyBeneficiary
    heartbeat
    {
        require(now >= endOfWaitingPeriod);

        owner = msg.sender;
        beneficiary = newBeneficiary;
    }
}