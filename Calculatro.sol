// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Calculator{
     uint private result;

     function add(uint num) public
     {
        result+=num;
     }

    function sub (uint num) public {
        result+=num;
    }
    function get_result()public view returns(uint){
        return result;
    }
}
