pragma solidity >=0.6.0 <0.8.0;

import "@openzeppelin/contracts/crowdsale/Crowdsale.sol";
import "@openzeppelin/contracts/crowdsale/emission/AllowanceCrowdsale.sol";

//普通众筹合约
contract AllowanceCrowdsaleContract is Crowdsale, AllowanceCrowdsale {
    constructor(
        uint rate, //兑换比例
        address payable wallet, //受益人
        IERC20 token, //代币地址
        address tokenWallet //代币从这个地址发送
     ) public 
     AllowanceCrowdsole(tokenWallet)
     Crowdsale(rate, wallet, token)
     public
     {
         
     }
}