//SPDX-License-Identifier: MIT

pragma solidity 0.8.22;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
contract MacVenturesToken is ERC20{
    constructo() ERC20("MacVenturesToken","MAC"){
        _mint(msg.sender,100*10** decimals());
    }
}
