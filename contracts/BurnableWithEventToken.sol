pragma solidity ^0.4.17;


import "openzeppelin-solidity/contracts/token/ERC20/BurnableToken.sol";


contract BurnableWithEventToken is BurnableToken{

    event Burn(address indexed burner, uint256 value);
    // Event

    function burn(uint256 _value) public
    {
        require(
            _value > 0,
            "Burn have to be over 0"
        );

        address burner = msg.sender;
        balances[burner] = balances[burner].sub(_value);
        totalSupply_ = totalSupply_.sub(_value);
        emit Burn(msg.sender, _value);
    }
}
