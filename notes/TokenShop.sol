// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {
    SafeERC20
} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract TokenShop {
    using SafeERC20 for IERC20;

    IERC20 public token;
    address public owner;
    uint256 public pricePerToken; // in wei

    event TokensPurchased(
        address indexed buyer,
        uint256 amount,
        uint256 totalCost
    );
    event PriceUpdated(uint256 oldPrice, uint256 newPrice);
    event OwnerWithdrawn(uint256 amount);

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the contract owner");
        _;
    }

    constructor(IERC20 _token, uint256 _pricePerToken) {
        token = _token;
        pricePerToken = _pricePerToken;
        owner = msg.sender;
    }

    function buyTokens(uint256 amount) external payable {
        uint256 totalCost = amount * pricePerToken;
        require(msg.value >= totalCost, "Insufficient ETH sent");

        token.safeTransfer(msg.sender, amount);

        // Refund excess ETH if any
        if (msg.value > totalCost) {
            payable(msg.sender).transfer(msg.value - totalCost);
        }

        emit TokensPurchased(msg.sender, amount, totalCost);
    }

    function updatePrice(uint256 newPrice) external onlyOwner {
        uint256 oldPrice = pricePerToken;
        pricePerToken = newPrice;
        emit PriceUpdated(oldPrice, newPrice);
    }

    function withdraw() external onlyOwner {
        uint256 balance = address(this).balance;
        require(balance > 0, "No ETH to withdraw");
        payable(owner).transfer(balance);
        emit OwnerWithdrawn(balance);
    }
}
