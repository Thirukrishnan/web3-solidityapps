// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
contract twitter_v2{
    struct Tweet{
        address author; 
        string content; 
        uint256 timestamp; 
        uint256 likes;}
    mapping(address => Tweet[]) private tweets;

    function add_tweet(string memory content, uint256 likes) public 
    {
        Tweet memory newtweet= Tweet({
            author:msg.sender,
            content:content,
            timestamp:block.timestamp,
            likes:likes
        });

        tweets[msg.sender].push(newtweet);


    }
function get_Alltweet(address addr) public view returns (Tweet[] memory)
{
    return tweets[addr];
}

}
