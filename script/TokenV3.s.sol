//SPDX-License-Identifier: MIT
pragma solidity^0.8.23.0;

import {IUniswapV3Factory} from "@uniswap-v3-core/interfaces/IUniswapV3Factory.sol";
import {LoadKey} from "test/base/loadkey.t.sol";
import {TokenV3} from "src/TokenV3.sol";

contract TokenV3Deploy is LoadKey {

  function setUp() public virtual override {
    // super.setUp();
  }

  function run() public payable {
    vm.startBroadcast();
    TokenV3 tokenV3 = new TokenV3("Test token", "TT", 7);
    tokenV3.mint(msg.sender, 69420 * 10**7);

    // IUniswapV3Factory(0x0227628f3F023bb0B980b67D528571c95c6DaC1c).createPool(token9, token1)

    // ISwapRouter.ExactInputSingleParams memory params =
    //         ISwapRouter.ExactInputSingleParams({
    //             tokenIn: DAI,
    //             tokenOut: WETH9,
    //             fee: poolFee,
    //             recipient: msg.sender,
    //             deadline: block.timestamp,
    //             amountIn: amountIn,
    //             amountOutMinimum: 0,
    //             sqrtPriceLimitX96: 0
    //         });

    //     // The call to `exactInputSingle` executes the swap.
    //     amountOut = swapRouter.exactInputSingle(params);
    vm.stopBroadcast();
  }
}