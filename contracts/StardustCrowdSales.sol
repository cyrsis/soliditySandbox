pragma solidity ^0.4.23;

import "zeppelin-solidity/contracts/crowdsale/validation/WhitelistedCrowdsale.sol";
import "zeppelin-solidity/contracts/crowdsale/validation/CappedCrowdsale.sol";
import "zeppelin-solidity/contracts/crowdsale/Crowdsale.sol";
import "zeppelin-solidity/contracts/crowdsale/distribution/FinalizableCrowdsale.sol";
import "./StardustToken.sol";


contract StardustCrowdSales is WhitelistedCrowdsale, CappedCrowdsale, FinalizableCrowdsale {

    constructor(uint _starBlock, uint _endBlock, uint _initRate, uint _endRate, uint _whiteListRate, address _walletAddress, MintableToken _token)

    CappedCrowdsale(86206)
    WhitelistedCrowdsale()
    FinalizableCrowdsale()
    Crowdsale(_initRate, _walletAddress, _token)

    public {

        require(_initRate > 0, " Init Rate would not 0");
        require(_endRate > 0, " End Rate would not 0");
        require(_whiteListRate > 0, " White list Rate would not 0");

        initRate = _initRate;
        endRate = _endRate;
        whiteListRate = _whiteListRate;
        //To-do Continous  Sales

        StarDustToken(token).pause();


    }

    uint public constant TOTAL_SHARE = 100;
    uint public constant CROWD_SALES = 40;
    uint public constant FOUNDATION = 60;

    uint public whiteListRate;

    mapping(address => uint) public  buyerRate; //Different buy rate for different person

    uint public  initRate; //init Rate at which Token are offer
    uint public  endRate; //end rate at which Token are offer

    //Maybe need continous crowdsale Contract

    //<------events----->.

    event WallentChanges(address wallet); // Event
    event BuyRateforWhiteListChange(address indexed buyer, uint rate); // Event
    event InitRateChange(uint rate); // Event
    event EndRateChange(uint rate); // Event

    // Create a custom token to mint instead of the default MintableToken
    function createTokenContract() internal returns (MintableToken) {
        return new StarDustToken();
    }

    function createContinuousSaleContract() internal returns (StarDustContinuousSale) {
        return new StarDustTokenContinuousSale(rate, wallet, token);
    }


    //<------Setter----->.

    function setBuyerRate(address buyer, uint rate) onlyOwner public
    {
        require(rate > 0, "Rate must bigger than 0");
        require(isWiteListed(buyer), "Only white listed address able to change the rate");
        require(block.number < startBlock, "Must bigger than the starblock");

        buyerRate[buyer] = rate;

        emit BuyRateForWhiteListChange(buyer, rate);

    }

    function setInitRate(uint256 rate) onlyOwner public
    {
        require(rate != 0, "Rate have to bigger than 0");
        require(block.number < startBlock, "");

        initRate = rate;

        emit InitRateChange(rate);

    }

    function setEndRate(uint256 rate) onlyOwner public
    {
        require(rate != 0, "Rate have to bigger than 0");
        require(block.number < startblock, " Have to be in different block");

        endRate = rate;
    }

    function getRate() internal returns (uint256)
    {
        //Early buyer can purchase at discount price
        if (buyerRate[msg.sender] != 0)
        {
            return buyerRate[msg.sender];
        }

        //white list buyer can purhcase at whiteListRate
        if (isWhitelisted(msg.sender))
        {
            return whiteListRate;
        }

        //otherwise comput the price for the auction

        uint256 blockleft = block.number - startBlock;
        uint256 rateRange = initRate - endRate;
        uint256 blockRange = endBlock - startBlock;

        return initalRate.sub(rateRange.mul(blockleft).div(blockRanage));

    }

    //Lower level BuyTokens from CrowdSales.sol

    function setWallet(address _wallet) onlyOwner public
    {
        require(_wallet != 0x0, "Wallet can not be null address");
        wallet = _wallet;

        emit WallentChanges(_wallet);
    }

    function pauseToken() onlyOwner
    {
        require(isFinalized, "Is it final?");
        StarDustToken(token).pause();
    }

    function unpauseToken() onlyOwner
    {
        require(isFinalized, "Is it final?");
        StarDustToken(token).unpause();
    }

    function beginContinousSale() onlyOwner public
    {
        token.transferOwership(cotinousSales);
        continuousSale.start();
        continuousSale.transferOwnership(owner);
    }

    function finalization() internal
    {
        uint256 totalSupply = token.totalSupply();
        uint256 finalSupply = TOTAL_SHARE.mul(totalSupply).div(CROWDSALE_SHARE);
        token.mint(walletm, FOUNDATION_SHARE.mul(totalSupply).div(TOTAL_SHARE));


    }


}
