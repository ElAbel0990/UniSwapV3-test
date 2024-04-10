//SPDX-License-Identifier: MIT
pragma solidity^0.8.23.0;

import "./UniswapV3Artifacts.t.sol";

// version confliction
// import {IUniswapV3Factory} from "@uniswap-v3-core/UniswapV3Factory.sol";
import {IUniswapV3Factory} from "@uniswap-v3-core/interfaces/IUniswapV3Factory.sol";

import "lib/forge-std/src/Test.sol";
import {UNISWAP_V3_FACTORY_ADDRESS, UNISWAP_V3_FACTORY_BYTECODE} from "./UniswapV3Artifacts.t.sol";


contract UniswapV3Etch is Test {
  IUniswapV3Factory uniswapV3Factory = IUniswapV3Factory(0x1F98431c8aD98523631AE4a59f267346ea31F984);

  function setup() public virtual {
    vm.etch(UNISWAP_V3_FACTORY_ADDRESS, UNISWAP_V3_FACTORY_BYTECODE);
  }
  

}