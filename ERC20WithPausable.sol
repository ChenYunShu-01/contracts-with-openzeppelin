pragma solidity >=0.6.0 <0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Detailed.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Pausable.sol";

//可暂停的代币
contract ERC20WithPausable is ERC20, ERC20Detailed, ERC20WithPausable {
    constructor(
        string memory name,
        string memory symbol,
        uint8 decimals,
        uint256 totalSupply
     ) public ERC20Detailed(name, symbol, decimals){
        _mint(msg.sender, totalSupply * (10**uint256(decimals)));
    }
}