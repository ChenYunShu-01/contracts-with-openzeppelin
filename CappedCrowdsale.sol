pragma solidity >=0.6.0 <0.8.0;

import "@openzeppelin/contracts/crowdsale/Crowdsale.sol";
import "@openzeppelin/contracts/crowdsale/emission/MintedCrowdsale.sol";
import "@openzeppelin/contracts/crowdsale/validation/CappedCrowdsale.sol";

//有封顶的众筹合约
contract MintedCrowdsaleContract is Crowdsale, MintedCrowdsale, CappedCrowdsale {
    constructor(
        uint rate, //兑换比例
        address payable wallet, //接收ETH受益人地址
        IERC20 token, //代币地址
        address tokenWallet, //接收ETH受益人地址
        uint256 cap //封顶数量，单位是wei
     ) public 
     AllowanceCrowdsale(tokenWallet)
     CappedCrowdsale(cap)
     Crowdsale(rate, wallet, token)
     public
     {

     }
}