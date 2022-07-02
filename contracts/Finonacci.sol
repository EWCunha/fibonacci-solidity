// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Fibonacci {
    // recursion costs too much gas!
    function fib_recursive(uint256 _n) public pure returns (uint256) {
        if (_n == 0) {
            return 0;
        } else if (_n == 1 || _n == 2) {
            return 1;
        } else {
            return fib_recursive(_n - 1) + fib_recursive(_n - 2);
        }
    }

    function fib(uint256 _n) external pure returns (uint256) {
        if (_n == 0) {
            return 0;
        } else if (_n == 1 || _n == 2) {
            return 1;
        } else {
            uint256 fi_1 = 1;
            uint256 fi_2 = 1;

            for (uint256 i = 2; i < _n; i++) {
                uint256 fi = fi_2 + fi_1;
                fi_2 = fi_1;
                fi_1 = fi;
            }

            return fi_1;
        }
    }
}
