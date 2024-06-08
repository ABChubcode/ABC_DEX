// SPDX-License-Identifier: MIT LICENSE
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract WETH is ERC20, ERC20Burnable, Ownable {

  constructor(address initialOwner) ERC20("Wrapped ETH", "WETH") Ownable(initialOwner) {}

  function mint(uint256 amount) external onlyOwner {
    _mint(msg.sender, amount);
  }
}
