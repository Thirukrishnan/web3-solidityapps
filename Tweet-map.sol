// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract twitter{
    mapping (address => string[]) private tweets;
   string[] private arrtweets;

   function push_tweet(string memory tweet) public{
    arrtweets.push(tweet);
    add_tweet();
   }
    function add_tweet() private{
        tweets[msg.sender]=arrtweets;

    }
    function get_alltweets()public view returns (string[] memory) {
        return tweets[msg.sender];
    }
    function get_tweet(uint index) public view returns(string memory){
        return tweets[msg.sender][index];
    }
}
