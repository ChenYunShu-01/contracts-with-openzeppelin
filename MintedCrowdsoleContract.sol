pragma solidity >=0.6.0 <0.8.0;

import "@openzeppelin/contracts/crowdsale/Crowdsale.sol";
import "@openzeppelin/contracts/crowdsale/emission/MintedCrowdsale.sol";

//可增发的众筹合约
contract MintedCrowdsaleContract is Crowdsale, MintedCrowdsale {
    constructor(
        uint rate, //兑换比例
        address tokenWallet, //接收ETH受益人地址
        IERC20 token, //代币地址
     ) public 
     Crowdsale(rate, wallet, token)
     public
     {

     }
}