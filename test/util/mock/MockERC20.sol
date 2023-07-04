// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.0;

import '../../../src/tkn/ERC20.sol';

/// @dev Mock ERC20 contract
contract MockERC20 is ERC20 {
    constructor(string memory name, string memory symbol, uint supply)
        payable
        ERC20(name, symbol, supply)
    {}

    function mint(address to, uint amt) external payable {
        _mint(to, amt);
    }

    function burn(address from, uint amt) external payable {
        _burn(from, amt);
    }
}
