// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;

import "./Common/Upgradable.sol";

contract User is Upgradable {
    mapping(string => bool) public existingNames;
    mapping(address => string) public names;

    function getName(address _user) external view returns (string memory) {
        return names[_user];
    }

    function setName(address _user, string memory _name)
        external
        onlyController
        returns (string memory)
    {
        names[_user] = _name;
        return _name;
    }
}
