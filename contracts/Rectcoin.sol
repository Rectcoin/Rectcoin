/**
 * @title [Rectcoin by Blockchain Platforms]
 * @author [Hayate Esaki by Arterect]
 * @notice [Rectcoin Constructs]
 * @dev [Created on 07/01/2023]
 */
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Rectcoin is ERC20 {
    constructor(
        string memory name,
        string memory symbol,
        uint256 initialSupply
    ) ERC20(name, symbol) {
        uint256 totalSupply = initialSupply * (10**uint256(18));
        _mint(msg.sender, totalSupply);
    }
}