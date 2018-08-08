pragma solidity ^0.4.17;

import "zeppelin-solidity/contracts/token/ERC20/MintableToken.sol";



contract VictorToken is MintableToken{

    string public name = "VictorToken";
    string public symbol = "HT";
    uint8 public decimals = 18;
}
