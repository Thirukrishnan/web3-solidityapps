// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Use_require{
    uint256 public min;
    function add(uint256 num) public
    {
        require(num >1,"Add more values");
        min+=num;
    }
    

}
