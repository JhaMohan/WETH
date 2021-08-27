pragma solidity ^0.8.0;

import '@openzeppelin/contracts/token/ERC20/ERC20.sol';

contract WETH is ERC20{

constructor() ERC20("Wrapped Ether","WETH") {

}

function deposite() external payable {
    _mint(msg.sender,msg.value);
}

function withdraw(uint256 _amount) external {
    require(balanceOf(msg.sender)>=_amount,'not enough balance');
    _burn(msg.sender,_amount);
    msg.sender.transfer(_amount);
}
 

}