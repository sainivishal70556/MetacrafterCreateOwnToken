//SPDX-License-Identifier: MIT

pragma solidity 0.8.22;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MacVenturesToken is ERC20, Ownable {
    constructor(string memory name, string memory symbol) ERC20(name, symbol) {
        // Mint initial supply to the contract owner
        _mint(msg.sender, 100 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        // Mint additional tokens
        _mint(to, amount);
    }

    function burn(uint256 amount) public {
        // Burn tokens from the caller's balance
        _burn(msg.sender, amount);
    }

    function transfer(address recipient, uint256 amount) public virtual override returns (bool) {
        // Override transfer function to include additional checks or logic if needed
        return super.transfer(recipient, amount);
    }

    function transferFrom(address sender, address recipient, uint256 amount) public virtual override returns (bool) {
        // Override transferFrom function to include additional checks or logic if needed
        return super.transferFrom(sender, recipient, amount);
    }
}
