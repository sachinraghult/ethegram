pragma solidity ^0.8.13;

contract UserStorage {
    mapping(uint256 => Profile) public profiles;

    struct Profile {
        uint256 id;
        bytes32 username;
    }

    uint256 latestUserId = 0;

    function createUser(bytes32 _username) public returns (uint256) {
        latestUserId++;

        profiles[latestUserId] = Profile(latestUserId, _username);

        return latestUserId;
    }
}
