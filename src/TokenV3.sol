// SPDX-License-Identifier: MIT
pragma solidity^0.8.23.0;

import {ERC20} from "@openzeppelin/token/ERC20/ERC20.sol";
import {Ownable} from "@openzeppelin/access/Ownable.sol";

contract TokenV3 is ERC20, Ownable {
  uint8 immutable _decimals;

  constructor(string memory name_, string memory symbol_, uint8 decimals_) ERC20(name_, symbol_) Ownable(msg.sender) payable {
    _decimals = decimals_;
  }

  function decimals() public view virtual override returns (uint8) {
    return _decimals;
  }

  function mint(address to_, uint256 amount_) public payable onlyOwner {
    _mint(to_, amount_);
  }
}