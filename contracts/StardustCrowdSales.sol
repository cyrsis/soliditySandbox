pragma solidity ^0.4.23;
//
//import "zeppelin-solidity/contracts/crowdsale/validation/WhitelistedCrowdsale.sol";
//import "zeppelin-solidity/contracts/crowdsale/validation/CappedCrowdsale.sol";
//import "zeppelin-solidity/contracts/crowdsale/Crowdsale.sol";
//import "zeppelin-solidity/contracts/crowdsale/distribution/FinalizableCrowdsale.sol";
//import "./StardustToken.sol";
//
//
//contract StardustCrowdSales is WhitelistedCrowdsale, CappedCrowdsale, FinalizableCrowdsale {
//
//    constructor(uint _starBlock, uint _endBlock, uint _initRate, uint _endRate, uint _whiteListRate, address _walletAddress, MintableToken _token)
//
//    CappedCrowdsale(86206)
//    WhitelistedCrowdsale()
//    FinalizableCrowdsale()
//    //Crowdsale(_initRate, _walletAddress, _token)
//
//    public {
//
//        require(_initRate > 0, " Init Rate would not 0");
//        require(_endRate > 0, " End Rate would not 0");
//        require(_whiteListRate > 0, " White list Rate would not 0");
//
//        initRate = _initRate;
//        endRate = _endRate;
//        whiteListRate = _whiteListRate;
//
//        //To-do Continous  Sales
//
//        //StarDustToken(token).pause();
//
//
//    }
//
//    uint public constant TOTAL_SHARE = 100;
//    uint public constant CROWD_SALES = 40;
//    uint public constant FOUNDATION = 60;
//
//    uint public whiteListRate;
//
//    mapping(address => uint) public  buyerRate; //Different buy rate for different person
//
//    uint public  initRate; //init Rate at which Token are offer
//    uint public  endRate; //end rate at which Token are offer
//
//    //Maybe need continous crowdsale Contract
//
//    //<------events----->.
//
//    event WallentChanges(address wallet); // Event
//    event BuyrateforWhiteListChange(address indexed buyer, uint rate); // Event
//    event InitRateChange(uint rate); // Event
//    event EndRateChange(uint rate); // Event
//
//
//
//
//}
