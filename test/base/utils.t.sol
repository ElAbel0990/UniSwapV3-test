// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.19.0;

import "lib/forge-std/src/Test.sol";
import {LoadKey} from "test/base/loadkey.t.sol";
import {UniswapV3Etch} from "test/uniswapv3/UniswapV3Etch.t.sol";
import {TokenV3} from "src/TokenV3.sol";
import {ERC20} from "@openzeppelin/token/ERC20/ERC20.sol";

contract Utils is LoadKey, UniswapV3Etch {
  TokenV3 token;
  address internal constant _OWNER = address(bytes20(bytes32(keccak256("defaultOwner"))));
  address internal constant _ALICE = address(bytes20(bytes32(keccak256("defaultAlice"))));
  address internal constant _BOB = address(bytes20(bytes32(keccak256("defaultBob"))));

  function setUp() public virtual override {
    super.setUp();

    vm.deal(_OWNER, 50 ether);
    vm.deal(_ALICE, 50 ether);
    vm.deal(_BOB, 50 ether);
    
    // create token
    vm.startPrank(_OWNER);
    TokenV3 token = new TokenV3("Test Token", "TEST", 18);

    // wrap ETH
    weth9.deposit{value: 50 ether}();
    vm.stopPrank();

    // create the WETH9 / Token pool
    // function createPool(
    //     address tokenA,
    //     address tokenB,
    //     uint24 fee
    // ) external override noDelegateCall returns (address pool) {
    //     require(tokenA != tokenB);
    //     (address token0, address token1) = tokenA < tokenB ? (tokenA, tokenB) : (tokenB, tokenA);
    //     require(token0 != address(0));
    //     int24 tickSpacing = feeAmountTickSpacing[fee];
    //     require(tickSpacing != 0);
    //     require(getPool[token0][token1][fee] == address(0));
    //     pool = deploy(address(this), token0, token1, fee, tickSpacing);
    //     getPool[token0][token1][fee] = pool;
    //     // populate mapping in the reverse direction, deliberate choice to avoid the cost of comparing addresses
    //     getPool[token1][token0][fee] = pool;
    //     emit PoolCreated(token0, token1, fee, tickSpacing, pool);
    // }

    address tokenPool = uniswapV3Factory.createPool(address(weth9), address(token), 0);
  }

  // IUniswapV3Factory uniswapV3Factory 
  // TODO:
  // init token
  // create owner
  // fund owner
  // have owner call factory to create WETH9 / Token pool
}