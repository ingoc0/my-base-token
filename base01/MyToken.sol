// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyBaseToken is ERC20 {
    // Khởi tạo token với tên và ký hiệu
    constructor() ERC20("Base Ninja", "NINJA") {
        // Cấp cho người tạo 1 triệu token (18 số decimal)
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }
}