# ERC20 Underflow/Overflow Bug

This repository contains a Solidity ERC20 contract with an underflow/overflow bug. The bug is in the `mint` function, where the `totalSupply` is not checked before adding the `amount` to it. This can lead to the total supply exceeding the maximum supply.

## Bug Description

The `mint` function does not check if the sum of `totalSupply` and `amount` exceeds `MAX_SUPPLY`. If this sum exceeds `MAX_SUPPLY`, an overflow occurs, and the `totalSupply` value wraps around to a smaller number. This can lead to unexpected behavior and security vulnerabilities.

## Bug Solution

The solution involves checking if the sum of `totalSupply` and `amount` exceeds `MAX_SUPPLY` before performing the addition. If it does, the transaction should be reverted.

## How to Reproduce

1. Compile the contract `bug.sol`.
2. Deploy the contract to a test network.
3. Attempt to mint more tokens than `MAX_SUPPLY` allows.
4. Observe the unexpected behavior due to the overflow bug.