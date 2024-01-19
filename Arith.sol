// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

// Assign students to write a simple arithmetic smart contract
// on Arbitrum Sepolia to find an odd number, an even number, and most significant bits.

// contract address : 0x1bE8EC166c3fa4c5c0bc24E2374DBB7275e362Fe
// deployed and verified

contract Arith {
    function even(uint input) external pure returns(bool) {
        // cond to see if even
        bool outputEven = (input % 2 == 0);
        return outputEven;
    }

    function odd(uint input) external pure returns(bool) {
        // cond to see if odd
        bool outputOdd = (input % 2 == 1);
        return outputOdd;
    }

     function sigBit(uint num) external pure returns (uint) {
        uint i = 0;
        while ((num >>= 1) > 0) {
            ++i;
        }
        return i;
    }
}
