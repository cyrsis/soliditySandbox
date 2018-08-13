pragma solidity ^0.4.11;

import "./ContinuousSale.sol";
import "./StardustToken.sol";

contract StardustContinuousSale is ContinuousSale, Ownable  {

    uint256 public constant INFLATION = 8;

    bool public started = false;

    event RateChange(uint256 amount);

    event WalletChange(address wallet);

    constructor(
        uint256 _rate,
        address _wallet,
        MintableToken _token
    ) ContinuousSale(_rate, _wallet, _token) public  {
    }

    modifier whenStarted() {
        require(started);
        _;
    }

    function start() onlyOwner public {
        require(!started);

        // initialize issuance
        uint256 finalSupply = token.totalSupply();
        uint256 annualIssuance = finalSupply.mul(INFLATION).div(100);
        issuance = annualIssuance.mul(BUCKET_SIZE).div(365 days);

        started = true;
    }

    function buyTokens(address beneficiary) whenStarted public payable {
        super.buyTokens(beneficiary);
    }

    function setWallet(address _wallet) onlyOwner public {
        require(_wallet != 0x0);
        wallet = _wallet;
      emit  WalletChange(_wallet);
    }

    function setRate(uint256 _rate) onlyOwner public {
        rate = _rate;
       emit  RateChange(_rate);
    }

    function unpauseToken() onlyOwner public {
        StarDustToken(token).unpause();
    }

    function pauseToken() onlyOwner public {
        StarDustToken(token).pause();
    }
}