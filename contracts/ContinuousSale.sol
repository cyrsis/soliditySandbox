pragma solidity ^0.4.11;

import "openzeppelin-solidity/contracts/math/SafeMath.sol";
import "openzeppelin-solidity/contracts/token/ERC20/MintableToken.sol";

contract ContinuousSale {


    constructor(uint256 _rate, address _wallet, MintableToken _token) public {
        require(_rate != 0);
        require(_wallet != 0);
        // require(address(token) != 0x0);

        rate = _rate;
        wallet = _wallet;
        token = _token;
    }
    using SafeMath for uint256;

    // time bucket size
    uint256 public constant BUCKET_SIZE = 12 hours;

    // the token being sold
    MintableToken public token;

    // address where funds are collected
    address public wallet;

    // amount of tokens emitted per wei
    uint256 public rate;

    // amount of raised money in wei
    uint256 public weiRaised;

    // max amount of tokens to mint per time bucket
    uint256 public issuance;

    // last time bucket from which tokens have been purchased
    uint256 public lastBucket = 0;

    // amount issued in the last bucket
    uint256 public bucketAmount = 0;

    event TokenPurchase(address indexed investor, address indexed beneficiary, uint256 weiAmount, uint256 tokens);


    function() payable public {
        buyTokens(msg.sender);
    }

    function buyTokens(address beneficiary) public payable {
        require(beneficiary != 0x0);
        require(msg.value != 0);

        prepareContinuousPurchase();
        uint256 tokens = processPurchase(beneficiary);
        checkContinuousPurchase(tokens);
    }

    function prepareContinuousPurchase() internal {
        uint256 timestamp = block.timestamp;
        uint256 bucket = timestamp - (timestamp % BUCKET_SIZE);

        if (bucket > lastBucket) {
            lastBucket = bucket;
            bucketAmount = 0;
        }
    }

    function checkContinuousPurchase(uint256 tokens) internal {
        uint256 updatedBucketAmount = bucketAmount.add(tokens);
        require(updatedBucketAmount <= issuance);

        bucketAmount = updatedBucketAmount;
    }

    function processPurchase(address beneficiary) internal returns (uint256) {
        uint256 weiAmount = msg.value;

        // calculate token amount to be created
        uint256 tokens = weiAmount.mul(rate);

        // update state
        weiRaised = weiRaised.add(weiAmount);

        token.mint(beneficiary, tokens);
        emit TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);

        forwardFunds();

        return tokens;
    }

    function forwardFunds() internal {
        wallet.transfer(msg.value);
    }
}