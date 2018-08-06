pragma solidity ^0.4.17;

import "zeppelin-solidity/contracts/crowdsale/validation/WhitelistedCrowdsale.sol";
import "zeppelin-solidity/contracts/crowdsale/validation/CappedCrowdsale.sol";
import "zeppelin-solidity/contracts/crowdsale/distribution/FinalizableCrowdsale.sol";


contract AnnCrowdSales is WhitelistedCrowdsale, CappedCrowdsale, FinalizableCrowdsale {

    uint public constant TOTAL_SHARE = 100;
    uint public constant CROWD_SALES = 40;
    uint public constant FOUNDATION = 60;

    uint public buyrateforWhiteList;

    mapping(address => uint) public  buyerRate; //Different buy rate for different person

    uint public constant initRate;
    uint public constant endRate;

    //<------events----->.

    event WallentChanges(address wallet); // Event
    event buyrateforWhiteListChange(address indexed buyer, uint rate); // Event

}
