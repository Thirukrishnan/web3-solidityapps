// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract twitter{
    mapping (address => string[]) public tweets;
   string[] private arrtweets;

   function push_tweet(string memory tweet) public{
    arrtweets.push(tweet);
    add_tweet();
   }
    function add_tweet() private{
        tweets[msg.sender]=arrtweets;

    }
    function show_tweet()public view returns (string[] memory) {
        return tweets[msg.sender];
    }
}
